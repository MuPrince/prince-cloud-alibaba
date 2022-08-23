package com.prince.port.util;

import com.prince.port.annotation.ExcelAttribute;
import lombok.Data;
import org.apache.poi.ss.formula.functions.T;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import javax.servlet.http.HttpServletResponse;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/**
 * Description : 导出工具类
 *
 * @author StrangePrince <br\>
 * @since 2022/6/10 1:12
 */
@Data
public class ExcelExportUtil {

    private int rowIndex;
    private int styleIndex;
    private String templatePath;
    private Class clazz;
    private Field[] fields;

    public ExcelExportUtil(Class clazz,int rowIndex,int styleIndex) {
        this.clazz = clazz;
        this.rowIndex = rowIndex;
        this.styleIndex = styleIndex;
        fields = clazz.getDeclaredFields();
    }
    public void export(HttpServletResponse response, InputStream is, List<T> objs, String
            fileName) throws Exception {
        XSSFWorkbook workbook = new XSSFWorkbook(is);
        Sheet sheet = workbook.getSheetAt(0);
        CellStyle[] styles = getTemplateStyles(sheet.getRow(styleIndex));
        AtomicInteger datasAi = new AtomicInteger(rowIndex);
        for (T t : objs) {
            Row row = sheet.createRow(datasAi.getAndIncrement());
            for(int i=0;i<styles.length;i++) {
                Cell cell = row.createCell(i);
                cell.setCellStyle(styles[i]);
                for (Field field : fields) {
                    if(field.isAnnotationPresent(ExcelAttribute.class)){
                        field.setAccessible(true);
                        ExcelAttribute ea = field.getAnnotation(ExcelAttribute.class);
                        if(i == ea.sort()) {
                            cell.setCellValue(field.get(t).toString());
                        }
                    }
                }
            }
        }
        fileName = URLEncoder.encode(fileName, StandardCharsets.UTF_8);
        response.setContentType("application/octet-stream");
        response.setHeader("content-disposition", "attachment;filename=" + new
                String(fileName.getBytes("ISO8859-1")));
        response.setHeader("filename", fileName);
        workbook.write(response.getOutputStream());
    }
    public CellStyle[] getTemplateStyles(Row row) {
        CellStyle [] styles = new CellStyle[row.getLastCellNum()];
        for(int i=0;i<row.getLastCellNum();i++) {
            styles[i] = row.getCell(i).getCellStyle();
        }
        return styles;
    }
}
