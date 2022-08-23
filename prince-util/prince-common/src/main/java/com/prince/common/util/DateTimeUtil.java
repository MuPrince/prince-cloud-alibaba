package com.prince.common.util;

import lombok.AccessLevel;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import org.joda.time.*;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;

import java.text.SimpleDateFormat;
import java.time.ZoneId;
import java.util.*;

/**
 * Description : 日期转换工具
 * @author StrangePrince <br\>
 * @since 2022/7/8 11:11
 */
@NoArgsConstructor(access = AccessLevel.PRIVATE)
public class DateTimeUtil {

    public static final String STANDARD_FORMAT = "yyyy-MM-dd HH:mm:ss";
    public static final String DATE_FORMAT_1 = "yyyyMMdd";
    public static final String DATE_FORMAT_2 = "yyyy-MM-dd";
    public static final String DATE_FORMAT_3 = "yyyy年MM月dd日";
    public static final String DATE_FORMAT_4 = "yyMMdd";
    public static final String DATE_FORMAT_5 = "MM/dd HH:mm";
    public static final String DATE_FORMAT_6 = "yyy.MM.dd";
    public static final String DATE_FORMAT_7 = "MM.dd";
    public static final String DATE_FORMAT_8 = "MM/dd";
    public static final String DATE_FORMAT_9 = "MM-dd";
    public static final String DATE_FORMAT_10 = "yyyy-MM-dd HH";
    public static final String DATE_FORMAT_11 = "yyyy/MM/dd";
    public static final String DATE_FORMAT_12 = "yyyy年MM月dd日";
    public static final String DATE_FORMAT_13 = "yyyy年MM月dd日 HH时";
    public static final String DATE_FORMAT_14 = "HH:mm:ss";
    public static final String DATE_FORMAT_15 = "yyyy-MM";
    private static final String DEFAULT_DATE_FORMAT = "yyyy-MM-dd";
    private static final String DEFAULT_DATE_TIME_FORMAT = "yyyy-MM-dd HH:mm:ss";
    private static final ZoneId DEFAULT_ZONE_ID = ZoneId.systemDefault();
    private static final java.time.format.DateTimeFormatter DEFAULT_DATE_FORMATTER = java.time.format.DateTimeFormatter.ofPattern(DEFAULT_DATE_FORMAT);
    private static final java.time.format.DateTimeFormatter DEFAULT_DATE_TIME_FORMATTER = java.time.format.DateTimeFormatter.ofPattern(DEFAULT_DATE_TIME_FORMAT);
    //秒
    private static final int S = 1000;
    //分
    private static final int MIN = S * 60;
    //时
    private static final int H = MIN * 60;
    //天
    private static final int D = H * 24;

    /**
     * @param dateTimeStr
     * @param formatStr
     * @return
     */
    public static Date strToDate(String dateTimeStr, String formatStr) {
        DateTimeFormatter dateTimeFormatter = DateTimeFormat.forPattern(formatStr);
        DateTime dateTime = dateTimeFormatter.parseDateTime(dateTimeStr);
        return dateTime.toDate();
    }

    /**
     * @param date
     * @param formatStr
     * @return
     */
    public static String dateToStr(Date date, String formatStr) {
        if (date == null) {
            return null;
        }
        DateTime dateTime = new DateTime(date);
        return dateTime.toString(formatStr);
    }

    /**
     * 年月日 时分秒
     *
     * @param dateTimeStr
     * @return
     */
    public static Date strToDate(String dateTimeStr) {
        DateTimeFormatter dateTimeFormatter = DateTimeFormat.forPattern(STANDARD_FORMAT);
        DateTime dateTime = dateTimeFormatter.parseDateTime(dateTimeStr);
        return dateTime.toDate();
    }

    /**
     * 年月日时间转换
     *
     * @param dateTimeStr
     * @return
     */
    public static Date strToDateYMD(String dateTimeStr) {
        DateTimeFormatter dateTimeFormatter = DateTimeFormat.forPattern(DATE_FORMAT_2);
        DateTime dateTime = dateTimeFormatter.parseDateTime(dateTimeStr);
        return dateTime.toDate();
    }

    public static String dateToStr(Date date) {
        if (date == null) {
            return null;
        }
        DateTime dateTime = new DateTime(date);
        return dateTime.toString(STANDARD_FORMAT);
    }

    public static String nowForString() {
        return dateToStr(new Date(), STANDARD_FORMAT);
    }

    public static String nowForString(String formatStr) {
        return dateToStr(new Date(), formatStr);
    }

    public static Date now(String formatStr) {
        return strToDate(nowForString(formatStr), formatStr);
    }

    /**
     * 计算区间的天数
     *
     * @param beginDate
     * @param endDate
     * @return
     */
    public static Integer calculatePeriodDays(Date beginDate, Date endDate) {
        DateTime begin = new DateTime(beginDate);
        DateTime end = new DateTime(endDate);
        Period p = new Period(begin, end, PeriodType.days());

        return p.getDays();
    }

    /**
     * 计算区间的毫秒数
     *
     * @param beginDate
     * @param endDate
     * @return
     */
    public static Long calculateDurationMillis(Date beginDate, Date endDate) {
        DateTime begin = new DateTime(beginDate);
        DateTime end = new DateTime(endDate);

        Duration d = new Duration(begin, end);
        return d.getMillis();
    }

    /**
     * 计算区间的秒数
     *
     * @param beginDate
     * @param endDate
     * @return
     */
    public static Integer calculateDurationSecond(Date beginDate, Date endDate) {
        DateTime begin = new DateTime(beginDate);
        DateTime end = new DateTime(endDate);

        Duration d = new Duration(begin, end);
        long time = d.getStandardSeconds();
        return Integer.parseInt(String.valueOf(time));
    }

    /**
     * 计算区间的小时
     *
     * @param beginDate
     * @param endDate
     * @return
     */
    public static Integer calculateDurationHours(Date beginDate, Date endDate) {
        DateTime begin = new DateTime(beginDate);
        DateTime end = new DateTime(endDate);

        Duration d = new Duration(begin, end);
        long time = d.getStandardHours();
        return Integer.parseInt(String.valueOf(time));
    }

    /**
     * 计算区间的月份
     *
     * @param beginDate
     * @param endDate
     * @return
     */
    public static int calculateDurationMonths(Date beginDate, Date endDate) {
        DateTime begin = new DateTime(beginDate);
        DateTime end = new DateTime(endDate);
        Period p = new Period(begin, end, PeriodType.months());

        return p.getMonths();
    }

    /**
     * 计算somedayDate是否在beginDate和endDate之间
     *
     * @param beginDate
     * @param endDate
     * @param somedayDate
     * @return
     */
    public static Boolean checkIfSomedayInTheDuration(Date beginDate, Date endDate, Date somedayDate) {
        DateTime begin = new DateTime(beginDate);
        DateTime end = new DateTime(endDate);
        DateTime someday = new DateTime(somedayDate);

        Interval i = new Interval(begin, end);
        return i.contains(someday);
    }

    /**
     * 检验somedayDate是否在designatedDate之后，如果是的话，返回1.
     * 如果somedayDate与designatedDate相同，返回0；
     * 如果designatedDate晚于somedayDate，返回-1
     *
     * @param designatedDate
     * @param somedayDate
     * @return
     */
    public static Integer checkSomedayIfAfterThanDesignatedDate(Date designatedDate, Date somedayDate) {
        DateTime designatedDay = new DateTime(designatedDate);
        DateTime someday = new DateTime(somedayDate);

        if (someday.isAfter(designatedDay)) {
            return 1;
        } else if (someday.isEqual(designatedDay)) {
            return 0;
        } else {
            return -1;
        }

    }

    public static Integer checkSomedayIfAfterThanDesignatedDateStr(String designatedDate, String somedayDate) {
        DateTime designatedDay = new DateTime(designatedDate);
        DateTime someday = new DateTime(somedayDate);

        if (someday.isAfter(designatedDay)) {
            return 1;
        } else if (someday.isEqual(designatedDay)) {
            return 0;
        } else {
            return -1;
        }

    }

    public static Date dateAddMonthForDate(Date datetime, int amount) {
        DateTime dt = new DateTime(datetime);
        dt = dt.plusMonths(amount);
        return dt.toDate();
    }

    /**
     * 获取当月最后一天
     *
     * @param datetime
     * @return
     */
    public static String lastDayOfMonth(Date datetime) {
        DateTime dt = new DateTime(datetime);
        dt = dt.dayOfMonth().withMaximumValue().withHourOfDay(23).withMinuteOfHour(59).withSecondOfMinute(59);
        return dt.toString(DateTimeFormat.forPattern(STANDARD_FORMAT));
    }

    /**
     * 获取当月第一天
     *
     * @param datetime
     * @return
     */
    public static String firstDayOfMonth(Date datetime) {
        DateTime dt = new DateTime(datetime);
        dt = dt.dayOfMonth().withMinimumValue().withHourOfDay(0).withMinuteOfHour(0).withSecondOfMinute(0);
        return dt.toString(DateTimeFormat.forPattern(STANDARD_FORMAT));
    }

    public static boolean checkSomedayIfContainsInTheInterval(DateTime someDateTime, DateTime beginDateTime, DateTime endDateTime) {
        Interval i = new Interval(beginDateTime, endDateTime);
        return i.contains(someDateTime);
    }

    /**
     * 月份加减  -1表示减一个月 1表示加一个月
     *
     * @param datetime
     * @param amount
     * @return
     */
    public static String dateAddMonth(Date datetime, int amount) {
        Calendar cl = Calendar.getInstance();
        cl.setTime(datetime);
        cl.add(Calendar.MONTH, amount);
        datetime = cl.getTime();
        return dateToStr(datetime, DATE_FORMAT_2);
    }

    /**
     * 天数加减  -1表示减一天 1表示加一天
     *
     * @param datetime
     * @param amount
     * @return
     */
    public static String dateAddDay(Date datetime, int amount) {
        Calendar cl = Calendar.getInstance();
        cl.setTime(datetime);
        cl.add(Calendar.DAY_OF_MONTH, amount);
        datetime = cl.getTime();
        return dateToStr(datetime, STANDARD_FORMAT);
    }

    /**
     * 天数加减  -1表示减一天 1表示加一天
     *
     * @param datetime
     * @param amount
     * @return
     */
    public static Date dateAddDayToDate(Date datetime, int amount) {
        Calendar cl = Calendar.getInstance();
        cl.setTime(datetime);
        cl.add(Calendar.DAY_OF_MONTH, amount);
        datetime = cl.getTime();
        return datetime;
    }

    /**
     * @param datetime
     * @param amount
     * @param start
     * @return
     */
    public static Date dateAddDayToDate(Date datetime, int amount, boolean start) {
        Calendar cl = Calendar.getInstance();
        cl.setTime(datetime);
        cl.add(Calendar.DAY_OF_MONTH, amount);
        if (start) {
            cl.set(Calendar.HOUR_OF_DAY, 0);
            cl.set(Calendar.MINUTE, 0);
            cl.set(Calendar.SECOND, 0);
            cl.set(Calendar.MILLISECOND, 0);
        } else {
            cl.set(Calendar.HOUR_OF_DAY, 23);
            cl.set(Calendar.MINUTE, 59);
            cl.set(Calendar.SECOND, 59);
            cl.set(Calendar.MILLISECOND, 999);
        }
        datetime = cl.getTime();
        return datetime;
    }

    /**
     * 年份加减  -1表示减一年 1表示加一年
     *
     * @param datetime
     * @param amount
     * @return
     */
    public static Date dateAddYearToDate(Date datetime, int amount) {
        Calendar cl = Calendar.getInstance();
        cl.setTime(datetime);
        cl.add(Calendar.YEAR, amount);
        datetime = cl.getTime();
        return datetime;
    }

    /**
     * 小时加减  -1表示减一小时 1表示加一小时
     *
     * @param datetime
     * @param amount
     * @return
     */
    public static Date dateAddHourToDate(Date datetime, int amount) {
        Calendar cl = Calendar.getInstance();
        cl.setTime(datetime);
        cl.add(Calendar.HOUR_OF_DAY, amount);
        datetime = cl.getTime();
        return datetime;
    }


    /**
     * 分钟数加减
     *
     * @param datetime
     * @param amount
     * @return
     */
    public static Date dateAddMinute(Date datetime, int amount) {
        Calendar cl = Calendar.getInstance();
        cl.setTime(datetime);
        cl.add(Calendar.MINUTE, amount);
        datetime = cl.getTime();
        return datetime;
    }

    public static String dateMin(Date datetime, int amount) {
        Calendar cl = Calendar.getInstance();
        cl.setTime(datetime);
        cl.add(Calendar.MINUTE, amount);
        datetime = cl.getTime();
        return dateToStr(datetime, STANDARD_FORMAT);
    }

    /**
     * 获取日期的天数
     *
     * @param dateTime
     * @return
     */
    public static Integer getDayOfTime(Date dateTime) {
        Calendar cl = Calendar.getInstance();
        cl.setTime(dateTime);
        return cl.get(Calendar.DAY_OF_MONTH);
    }

    /**
     * 获取日期的年份
     *
     * @param dateTime
     * @return
     */
    public static Integer getYearOfTime(Date dateTime) {
        Calendar cl = Calendar.getInstance();
        cl.setTime(dateTime);
        return cl.get(Calendar.YEAR);
    }

    /**
     * 获取日期的月份  会比真实的月份少一个月 从0-11
     *
     * @param dateTime
     * @return
     */
    public static Integer getMonthOfTime(Date dateTime) {
        Calendar cl = Calendar.getInstance();
        cl.setTime(dateTime);
        return cl.get(Calendar.MONTH) + 1;
    }

    /**
     * 转换date类型
     *
     * @param date
     * @param formatStr
     * @return
     */
    public static Date formatDate(Date date, String formatStr) {
        return strToDate(dateToStr(date, formatStr), formatStr);
    }

    /**
     * 获取日期的当天任意时刻
     *
     * @param date
     * @param hmdStr 类似 12:12:12
     * @return
     */
    public static Date getTodayAnyTime(Date date, String hmdStr) {
        String dateStr = dateToStr(date, DATE_FORMAT_2);
        dateStr = dateStr + " " + hmdStr;
        return strToDate(dateStr, STANDARD_FORMAT);
    }

    /**
     * 获取时间的一周起始日00:00:00
     *
     * @param date
     * @return
     */
    public static Date getFirstDayOfWeek(Date date) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        // 判断要计算的日期是否是周日，如果是则减一天计算周六的，否则会出问题，计算到下一周去了  
        int dayWeek = cal.get(Calendar.DAY_OF_WEEK);// 获得当前日期是一个星期的第几天  
        if (1 == dayWeek) {
            cal.add(Calendar.DAY_OF_MONTH, -1);
        }
        // 设置一个星期的第一天，按中国的习惯一个星期的第一天是星期一  
        cal.setFirstDayOfWeek(Calendar.MONDAY);
        // 获得当前日期是一个星期的第几天  
        int day = cal.get(Calendar.DAY_OF_WEEK);
        // 根据日历的规则，给当前日期减去星期几与一个星期第一天的差值  
        cal.add(Calendar.DATE, cal.getFirstDayOfWeek() - day);
        cal.set(Calendar.HOUR_OF_DAY, 0);
        cal.set(Calendar.MINUTE, 0);
        cal.set(Calendar.SECOND, 0);
        cal.set(Calendar.MILLISECOND, 0);
        return cal.getTime();
    }

    /**
     * 获取时间的一周结束日23:59:59
     *
     * @param date
     * @return
     */
    public static Date getEndDayOfWeek(Date date) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        // 判断要计算的日期是否是周日，如果是则减一天计算周六的，否则会出问题，计算到下一周去了  
        int dayWeek = cal.get(Calendar.DAY_OF_WEEK);// 获得当前日期是一个星期的第几天  
        if (1 == dayWeek) {
            cal.add(Calendar.DAY_OF_MONTH, -1);
        }
        // 设置一个星期的第一天，按中国的习惯一个星期的第一天是星期一  
        cal.setFirstDayOfWeek(Calendar.MONDAY);
        // 获得当前日期是一个星期的第几天  
        int day = cal.get(Calendar.DAY_OF_WEEK);
        // 根据日历的规则，给当前日期减去星期几与一个星期第一天的差值  
        cal.add(Calendar.DATE, cal.getFirstDayOfWeek() - day);
        cal.add(Calendar.DATE, 6);//第一天加上6就是最后一天了
        cal.set(Calendar.HOUR_OF_DAY, 23);
        cal.set(Calendar.MINUTE, 59);
        cal.set(Calendar.SECOND, 59);
        cal.set(Calendar.MILLISECOND, 999);
        return cal.getTime();
    }

    /**
     * 获取当前日期的上周第一天
     *
     * @param date
     * @return
     */
    public static Date getLastFirstDayOfWeek(Date date) {
        Calendar calendar1 = Calendar.getInstance();
        Calendar calendar2 = Calendar.getInstance();
        calendar1.setTime(date);
        calendar2.setTime(date);
        int dayOfWeek = calendar1.get(Calendar.DAY_OF_WEEK) - 1;
        if (dayOfWeek <= 0) {
            dayOfWeek = 7;
        }
        int offset1 = 1 - dayOfWeek;
        calendar1.add(Calendar.DATE, offset1 - 7);
        calendar1.set(Calendar.HOUR_OF_DAY, 0);
        calendar1.set(Calendar.MINUTE, 0);
        calendar1.set(Calendar.SECOND, 0);
        calendar1.set(Calendar.MILLISECOND, 0);
        return calendar1.getTime();
    }

    /**
     * 获取当前日期的上周最后一天
     *
     * @param date
     * @return
     */
    public static Date getLastEndDayOfWeek(Date date) {
        Calendar calendar1 = Calendar.getInstance();
        Calendar calendar2 = Calendar.getInstance();
        calendar1.setTime(date);
        calendar2.setTime(date);
        int dayOfWeek = calendar1.get(Calendar.DAY_OF_WEEK) - 1;
        if (dayOfWeek <= 0) {
            dayOfWeek = 7;
        }
        int offset2 = 7 - dayOfWeek;
        calendar2.add(Calendar.DATE, offset2 - 7);
        calendar2.set(Calendar.HOUR_OF_DAY, 23);
        calendar2.set(Calendar.MINUTE, 59);
        calendar2.set(Calendar.SECOND, 59);
        calendar2.set(Calendar.MILLISECOND, 999);
        return calendar2.getTime();
    }

    /**
     * 获取当前时间上月第一天
     */
    public static Date getLastMonthFirstDay(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(Calendar.MONTH, -1);
        calendar.set(Calendar.DAY_OF_MONTH, 1);
        calendar.set(Calendar.HOUR_OF_DAY, 0);
        calendar.set(Calendar.MINUTE, 0);
        calendar.set(Calendar.SECOND, 0);
        calendar.set(Calendar.MILLISECOND, 0);


        return calendar.getTime();

    }

    /**
     * 获取当前时间上月最后一天
     */
    public static Date getLastMonthLastDay(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        int month = calendar.get(Calendar.MONTH);

        calendar.set(Calendar.MONTH, month - 1);
        calendar.set(Calendar.HOUR_OF_DAY, 23);
        calendar.set(Calendar.MINUTE, 59);
        calendar.set(Calendar.SECOND, 59);
        calendar.set(Calendar.MILLISECOND, 999);

        calendar.set(Calendar.DAY_OF_MONTH, calendar.getActualMaximum(Calendar.DAY_OF_MONTH));

        return calendar.getTime();

    }

    /**
     * 获取时间段的所有日期集合
     *
     * @param dStart
     * @param dEnd
     * @return
     */
    public static List<Date> findDates(Date dStart, Date dEnd) {
        Calendar cStart = Calendar.getInstance();
        cStart.setTime(dStart);

        List<Date> dateList = new ArrayList<>();
        //别忘了，把起始日期加上
        dateList.add(dStart);
        // 此日期是否在指定日期之后
        while (dEnd.after(cStart.getTime())) {
            // 根据日历的规则，为给定的日历字段添加或减去指定的时间量
            cStart.add(Calendar.DAY_OF_MONTH, 1);
            dateList.add(formatDate(cStart.getTime(), DATE_FORMAT_2));
        }
        return dateList;
    }

    /**
     * 获取Mongo时间
     *
     * @param date
     * @return
     */
    public static Date getMongoDate(Date date) {
        SimpleDateFormat sdf = new SimpleDateFormat(STANDARD_FORMAT);
        Calendar ca = Calendar.getInstance();
        ca.setTime(date);
        ca.add(Calendar.HOUR_OF_DAY, 8);
        return strToDate(sdf.format(ca.getTime()));
    }

    /**
     * 查询数据返回时间多八个小时
     *
     * @param date
     * @return
     */
    public static Date getQueryMongoDate(Date date) {
        SimpleDateFormat sdf = new SimpleDateFormat(STANDARD_FORMAT);
        Calendar ca = Calendar.getInstance();
        ca.setTime(date);
        ca.add(Calendar.HOUR_OF_DAY, -8);
        return strToDate(sdf.format(ca.getTime()));
    }

    /**
     * 获得某天最大时间 2019-04-09 23:59:59
     *
     * @param date
     * @return
     */
    public static Date getDayMaxDate(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.set(Calendar.HOUR_OF_DAY, 23);
        calendar.set(Calendar.MINUTE, 59);
        calendar.set(Calendar.SECOND, 59);
        calendar.set(Calendar.MILLISECOND, 999);
        return calendar.getTime();
    }

    /**
     * 获取指定时间的最小时间 2019-04-10 00:00:00
     *
     * @param date
     * @return
     */
    public static Date getDayMinDate(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.set(Calendar.HOUR_OF_DAY, 0);
        calendar.set(Calendar.MINUTE, 0);
        calendar.set(Calendar.SECOND, 0);
        calendar.set(Calendar.MILLISECOND, 0);
        return calendar.getTime();
    }

    /**
     * 判断日期是否在今天
     *
     * @param date
     * @return
     */
    public static Boolean checkIsInToday(Date date) {
        Date now = new Date();
        DateTime begin = new DateTime(DateTimeUtil.getTodayAnyTime(now, "00:00:00"));
        DateTime end = new DateTime(DateTimeUtil.getTodayAnyTime(now, "23:59:59"));
        DateTime dateTime = new DateTime(date);

        Interval i = new Interval(begin, end);
        return i.contains(dateTime);
    }

    /**
     * 判断日期是否在某个时间的一天内
     *
     * @param date
     * @return
     */
    public static Boolean checkIsInDateRange(Date date, Date dateRange) {
        DateTime begin = new DateTime(DateTimeUtil.getTodayAnyTime(dateRange, "00:00:00"));
        DateTime end = new DateTime(DateTimeUtil.getTodayAnyTime(dateRange, "23:59:59"));
        DateTime dateTime = new DateTime(date);

        Interval i = new Interval(begin, end);
        return i.contains(dateTime);
    }

    /**
     * 将秒数转为 天时分秒
     *
     * @param s
     * @return
     */
    public static String formatTime(Long s) {
        if (s != null) {
            long ms = s * 1000; //转换为毫秒
            // 1秒 = 1000毫秒
            int ss = 1000;
            // 分钟
            int mi = ss * 60;
            // 小时
            Integer hh = mi * 60;
            // 天
            Integer dd = hh * 24;

            Long day = ms / dd;
            Long hour = (ms - day * dd) / hh;
            Long minute = (ms - day * dd - hour * hh) / mi;
            Long second = (ms - day * dd - hour * hh - minute * mi) / ss;
            // 毫秒
            Long milliSecond = ms - day * dd - hour * hh - minute * mi - second * ss;

            StringBuilder stringBuilder = new StringBuilder();
            if (day > 0) {
                stringBuilder.append(day).append("天");
            }
            if (hour > 0) {
                stringBuilder.append(hour).append("小时");
            }
            if (minute > 0) {
                stringBuilder.append(minute).append("分");
            }
            if (second > 0) {
                stringBuilder.append(second).append("秒");
            }
            return stringBuilder.toString();
        }
        return null;
    }

    /**
     * 获取"最小"的mongo日期
     *
     * @param date   日期
     * @param amount
     * @return
     */
    public static Date getMinMongoDete(Date date, int amount) {
        SimpleDateFormat sdf = new SimpleDateFormat(STANDARD_FORMAT);
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(Calendar.HOUR_OF_DAY, 8);
        calendar.set(Calendar.HOUR_OF_DAY, 0);
        calendar.set(Calendar.MINUTE, 0);
        calendar.set(Calendar.SECOND, 0);
        calendar.set(Calendar.MILLISECOND, 0);
        calendar.add(Calendar.DAY_OF_MONTH, amount);
        return strToDate(sdf.format(calendar.getTime()));
    }

    /**
     * 获取"最大"的mongo日期
     *
     * @param date   日期
     * @param amount
     * @return
     */
    public static Date getMaxMongoDete(Date date, int amount) {
        SimpleDateFormat sdf = new SimpleDateFormat(STANDARD_FORMAT);
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(Calendar.HOUR_OF_DAY, 8);
        calendar.set(Calendar.HOUR_OF_DAY, 23);
        calendar.set(Calendar.MINUTE, 59);
        calendar.set(Calendar.SECOND, 59);
        calendar.set(Calendar.MILLISECOND, 999);
        calendar.add(Calendar.DAY_OF_MONTH, amount);
        return strToDate(sdf.format(calendar.getTime()));
    }

    /**
     * 判断当前是星期几
     *
     * @param pTime
     * @return
     * @throws Throwable
     */
    public static String dayForWeek(String pTime) throws Throwable {
        SimpleDateFormat format = new SimpleDateFormat(DATE_FORMAT_2);
        Date tmpDate = format.parse(pTime);
        Calendar cal = Calendar.getInstance();
        String[] weekDays = {"周日", "周一", "周二", "周三", "周四", "周五", "周六"};
        try {
            cal.setTime(tmpDate);
        } catch (Exception e) {
            e.printStackTrace();
        }
        // 指示一个星期中的某天
        int w = cal.get(Calendar.DAY_OF_WEEK) - 1;

        if (w < 0) {
            w = 0;
        }
        return weekDays[w];
    }

    /**
     * 默认 字符串日期格式 yyyy-MM-dd HH:mm:ss
     */
    public static Date ofDate(String date) {
        return ofDate(date, DEFAULT_ZONE_ID, DEFAULT_DATE_TIME_FORMATTER);
    }


    /**
     * @param date   日期
     * @param format 日期格式 (至少要精确到天)
     */
    public static Date ofDate(String date, String format) {
        return ofDate(date, DEFAULT_ZONE_ID, java.time.format.DateTimeFormatter.ofPattern(format));
    }

    public static Date ofDate(String date, ZoneId zoneId, java.time.format.DateTimeFormatter formatter) {
        return Date.from(java.time.LocalDate.parse(date, formatter).atStartOfDay().atZone(zoneId).toInstant());
    }

    public static String formatDate(@NonNull Date date) {
        return format(date, DEFAULT_ZONE_ID, DEFAULT_DATE_FORMATTER);
    }

    public static String formatDateTime(@NonNull Date date) {
        return format(date, DEFAULT_ZONE_ID, DEFAULT_DATE_TIME_FORMATTER);
    }

    /**
     * 日期类型按自定义格式进行字符串化
     */
    public static String format(@NonNull Date date, @NonNull String format) {
        return format(date, DEFAULT_ZONE_ID, java.time.format.DateTimeFormatter.ofPattern(format));
    }

    public static String format(@NonNull Date date, ZoneId zoneId, java.time.format.DateTimeFormatter formatter) {
        return java.time.LocalDateTime.ofInstant(date.toInstant(), zoneId).format(formatter);
    }

    /**
     * 日期是否是今天
     */
    public static boolean isCurrentDate(@NonNull Date date) {
        return date.after(Date.from(java.time.LocalDate.now().atStartOfDay(DEFAULT_ZONE_ID).toInstant())) &&
                date.before(Date.from(java.time.LocalDate.now().plusDays(1).atStartOfDay(DEFAULT_ZONE_ID).toInstant()));
    }

    /**
     * @param calendarEnum 日期枚举 比如 Calendar.MONTH
     * @param count        任意加减天数
     * @return 获取任意时间
     */
    public static String anyTimeByCurrentDay(int calendarEnum, int count) {
        return java.time.LocalDateTime.ofInstant(getYourCalendar(new Date(), calendarEnum, count).toInstant(), DEFAULT_ZONE_ID).format(DEFAULT_DATE_TIME_FORMATTER);
    }

    /**
     * @param calendarEnum 日期枚举 比如 Calendar.MONTH
     * @param count        任意加减天数
     * @return 获取任意日期
     */
    public static Date anyDateByCurrentDay(int calendarEnum, int count) {
        return Date.from(getYourCalendar(new Date(), calendarEnum, count).toInstant());
    }

    /**
     * @param date         时间基准
     * @param calendarEnum 日期枚举 比如 Calendar.MONTH
     * @param count        任意加减天数
     * @return 获取任意日期
     */
    public static Date anyDateByDate(Date date, int calendarEnum, int count) {
        return Date.from(getYourCalendar(date, calendarEnum, count).toInstant());
    }

    /**
     * @param date 时间基准
     * @return 当前月份总天数
     */
    public static int getDaysOfMonth(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.clear();
        calendar.setTime(date);
        return calendar.getActualMaximum(Calendar.DAY_OF_MONTH);
    }

    /**
     * 获取某天的开始日期
     */
    public static Date getDateStart(@NonNull Date date) {
        //今天零点零分零秒的毫秒数
        long zero = date.getTime() / (D) * (D) - TimeZone.getDefault().getRawOffset();
        return new Date(zero);
    }

    /**
     * 获取某天的开始日期
     */
    public static Date getDateEnd(@NonNull Date date) {
        //今天零点零分零秒的毫秒数
        long zero = date.getTime() / (D) * (D) - TimeZone.getDefault().getRawOffset() + D - 1;
        return new Date(zero);
    }


    /**
     * @param costTime 消耗的毫秒数
     * @return 将毫秒数换算成消耗的时间 如 : 90061001 换算成 1day 1hour 1min 1second 1ms
     */
    public static String costTimeByMs(long costTime) {
        long day = costTime / D;
        long hour = (costTime - day * D) / H;
        long minute = (costTime - day * D - hour * H) / MIN;
        long second = (costTime - day * D - hour * H - minute * MIN) / S;
        long milliSecond = costTime - day * D - hour * H - minute * MIN - second * S;
        StringBuilder result = new StringBuilder();
        if (day != 0) {
            //每年按平均365天算
            if (day >= 365) {
                long year = day / 365;
                result.append(year).append("year ");
                day = day - year * 365;
            }
            //每月按平均30天算
            if (day < 365 && day >= 30) {
                long month = day / 30;
                result.append(month).append("month ");
                day = day - month * 30;
            }
            if (day != 0 && day < 30) {
                result.append(day).append("day ");
            }
        }
        if (hour != 0) {
            result.append(hour).append("hour ");
        }
        if (minute != 0) {
            result.append(minute).append("MIN ");
        }
        if (second != 0) {
            result.append(second).append("second ");
        }
        if (milliSecond != 0) {
            result.append(milliSecond).append("ms ");
        }
        return result.toString();
    }

    /**
     * @param startTime 起始时间
     * @param endTime   终止时间
     * @return 将毫秒数换算成消耗的时间 如 : 90061001 换算成 1day 1hour 1min 1second 1ms
     */
    public static String costTimeByMs(long startTime, long endTime) {
        return costTimeByMs(endTime - startTime);
    }

    /**
     * @param date  日期
     * @param field 域值
     * @param value 附加值
     * @return 获取你想要的Calendar
     */
    private static Calendar getYourCalendar(Date date, int field, int value) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.set(field, calendar.get(field) + value);
        return calendar;
    }

    /**
     * 获取当前月第一天凌晨零点零分零秒时间戳
     *
     * @return
     */
    public static String getMonthFirstDay(long dateTimeMillis) {

        Calendar c = Calendar.getInstance();
        c.setTime(new Date(dateTimeMillis));
        //设置为1号,当前日期既为本月第一天
        c.set(Calendar.DAY_OF_MONTH, 1);
        //将小时至0
        c.set(Calendar.HOUR_OF_DAY, 0);
        //将分钟至0
        c.set(Calendar.MINUTE, 0);
        //将秒至0
        c.set(Calendar.SECOND, 0);
        //将毫秒至0
        c.set(Calendar.MILLISECOND, 0);
        // 获取本月第一天的时间戳
        long timestemp = c.getTimeInMillis();
        //将时间戳格式化
        String date = new SimpleDateFormat(STANDARD_FORMAT).format(timestemp);
        return date;
    }

    /**
     * 获取当天凌晨零点零分零秒时间戳
     *
     * @param dateTimeMillis
     * @return
     */
    public static String getToDayTimestemp(long dateTimeMillis) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date(dateTimeMillis));

        //将小时至0
        calendar.set(Calendar.HOUR_OF_DAY, 0);
        //将分钟至0
        calendar.set(Calendar.MINUTE, 0);
        //将秒至0
        calendar.set(Calendar.SECOND, 0);
        //将毫秒至0
        calendar.set(Calendar.MILLISECOND, 0);

        // 获取本月第一天的时间戳
        long timestemp = calendar.getTimeInMillis();

        return new SimpleDateFormat(STANDARD_FORMAT).format(timestemp);
    }

    /**
     * 获取某年第一天日期
     *
     * @param year 年份
     * @return Date
     */
    public static Date getYearFirst(Integer year) {
        Calendar calendar = Calendar.getInstance();
        calendar.clear();
        calendar.set(Calendar.YEAR, year);
        calendar.set(Calendar.HOUR_OF_DAY, 0);
        calendar.set(Calendar.MINUTE, 0);
        calendar.set(Calendar.SECOND, 0);
        calendar.set(Calendar.MILLISECOND, 0);
        return calendar.getTime();
    }

    /**
     * 获取某年最后一天日期
     *
     * @param year 年份
     * @return Date
     */
    public static Date getYearLast(Integer year) {
        Calendar calendar = Calendar.getInstance();
        calendar.clear();
        calendar.set(Calendar.YEAR, year);
        calendar.set(Calendar.HOUR_OF_DAY, 23);
        calendar.set(Calendar.MINUTE, 59);
        calendar.set(Calendar.SECOND, 59);
        calendar.set(Calendar.MILLISECOND, 999);
        calendar.roll(Calendar.DAY_OF_YEAR, -1);

        return calendar.getTime();
    }

    /**
     * 判断该日期是否是该月的第一天
     *
     * @param date 需要判断的日期
     * @return
     */
    public static boolean isFirstDayOfMonth(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        return calendar.get(Calendar.DAY_OF_MONTH) == 1;
    }

    /**
     * 判断该日期是否是该月的最后一天
     *
     * @param date 需要判断的日期
     * @return
     */
    public static boolean isLastDayOfMonth(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        return calendar.get(Calendar.DAY_OF_MONTH) == calendar
                .getActualMaximum(Calendar.DAY_OF_MONTH);
    }

    public static void main(String[] args) {
        // calculatePeriodDays
        String a = "2020-09-03";
        String b = "2020-09-03";
        System.out.println(calculatePeriodDays(strToDate(a, DATE_FORMAT_2), strToDate(b, DATE_FORMAT_2)));
    }

}