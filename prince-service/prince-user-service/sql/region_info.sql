#-----台湾省#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('710000','台湾省','台湾省', 1, NULL );

#-----香港特别行政区#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('810000','香港特别行政区','香港特别行政区', 1, NULL );

#-----澳门特别行政区#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('820000','澳门特别行政区','澳门特别行政区', 1, NULL );

#-----北京市#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('110000','北京','北京', 1, NULL );

#-----北京市#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('110000','北京市','北京市', 2, (SELECT id FROM region_info t1 WHERE REGION_NAME='北京'));

#-----区、县#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('110101','东城区','北京市东城区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='北京市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('110102','西城区','北京市西城区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='北京市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('110105','朝阳区','北京市朝阳区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='北京市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('110106','丰台区','北京市丰台区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='北京市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('110107','石景山区','北京市石景山区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='北京市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('110108','海淀区','北京市海淀区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='北京市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('110109','门头沟区','北京市门头沟区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='北京市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('110111','房山区','北京市房山区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='北京市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('110112','通州区','北京市通州区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='北京市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('110113','顺义区','北京市顺义区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='北京市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('110114','昌平区','北京市昌平区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='北京市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('110115','大兴区','北京市大兴区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='北京市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('110116','怀柔区','北京市怀柔区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='北京市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('110117','平谷区','北京市平谷区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='北京市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('110118','密云区','北京市密云区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='北京市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('110119','延庆区','北京市延庆区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='北京市'));

#-----天津市#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('120000','天津','天津', 1, NULL);

#-----天津市#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('120000','天津市','天津市', 2, (SELECT id FROM region_info t1 WHERE REGION_NAME='天津'));

#-----区、县#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('120101','和平区','天津市和平区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='天津市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('120102','河东区','天津市河东区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='天津市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('120103','河西区','天津市河西区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='天津市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('120104','南开区','天津市南开区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='天津市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('120105','河北区','天津市河北区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='天津市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('120106','红桥区','天津市红桥区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='天津市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('120110','东丽区','天津市东丽区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='天津市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('120111','西青区','天津市西青区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='天津市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('120112','津南区','天津市津南区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='天津市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('120113','北辰区','天津市北辰区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='天津市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('120114','武清区','天津市武清区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='天津市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('120115','宝坻区','天津市宝坻区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='天津市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('120116','滨海新区','天津市滨海新区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='天津市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('120117','宁河区','天津市宁河区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='天津市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('120118','静海区','天津市静海区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='天津市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('120119','蓟州区','天津市蓟州区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='天津市'));

#-----重庆市#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('500000','重庆','重庆', 1, NULL);

#-----重庆市#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('500000','重庆市','重庆市', 2, (SELECT id FROM region_info t1 WHERE REGION_NAME='重庆'));

#-----区、县#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('500101','万州区','重庆市万州区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='重庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('500102','涪陵区','重庆市涪陵区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='重庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('500103','渝中区','重庆市渝中区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='重庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('500104','大渡口区','重庆市大渡口区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='重庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('500105','江北区','重庆市江北区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='重庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('500106','沙坪坝区','重庆市沙坪坝区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='重庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('500107','九龙坡区','重庆市九龙坡区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='重庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('500108','南岸区','重庆市南岸区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='重庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('500109','北碚区','重庆市北碚区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='重庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('500110','綦江区','重庆市綦江区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='重庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('500111','大足区','重庆市大足区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='重庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('500112','渝北区','重庆市渝北区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='重庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('500113','巴南区','重庆市巴南区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='重庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('500114','黔江区','重庆市黔江区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='重庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('500115','长寿区','重庆市长寿区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='重庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('500116','江津区','重庆市江津区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='重庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('500117','合川区','重庆市合川区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='重庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('500118','永川区','重庆市永川区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='重庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('500119','南川区','重庆市南川区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='重庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('500120','璧山区','重庆市璧山区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='重庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('500151','铜梁区','重庆市铜梁区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='重庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('500152','潼南区','重庆市潼南区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='重庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('500153','荣昌区','重庆市荣昌区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='重庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('500154','开州区','重庆市开州区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='重庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('500228','梁平县','重庆市梁平县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='重庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('500229','城口县','重庆市城口县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='重庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('500230','丰都县','重庆市丰都县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='重庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('500231','垫江县','重庆市垫江县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='重庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('500232','武隆县','重庆市武隆县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='重庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('500233','忠县','重庆市忠县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='重庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('500235','云阳县','重庆市云阳县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='重庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('500236','奉节县','重庆市奉节县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='重庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('500237','巫山县','重庆市巫山县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='重庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('500238','巫溪县','重庆市巫溪县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='重庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('500240','石柱土家族自治县','重庆市石柱土家族自治县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='重庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('500241','秀山土家族苗族自治县','重庆市秀山土家族苗族自治县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='重庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('500242','酉阳土家族苗族自治县','重庆市酉阳土家族苗族自治县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='重庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('500243','彭水苗族土家族自治县','重庆市彭水苗族土家族自治县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='重庆市'));

#-----上海市#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('310000','上海','上海', 1, NULL);

#-----上海市#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('310000','上海市','上海市', 2, (SELECT id FROM region_info t1 WHERE REGION_NAME='上海'));

#-----区、县#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('310101','黄浦区','上海市黄浦区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='上海市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('310104','徐汇区','上海市徐汇区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='上海市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('310105','长宁区','上海市长宁区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='上海市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('310106','静安区','上海市静安区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='上海市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('310107','普陀区','上海市普陀区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='上海市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('310109','虹口区','上海市虹口区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='上海市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('310110','杨浦区','上海市杨浦区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='上海市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('310112','闵行区','上海市闵行区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='上海市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('310113','宝山区','上海市宝山区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='上海市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('310114','嘉定区','上海市嘉定区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='上海市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('310115','浦东新区','上海市浦东新区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='上海市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('310116','金山区','上海市金山区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='上海市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('310117','松江区','上海市松江区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='上海市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('310118','青浦区','上海市青浦区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='上海市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('310120','奉贤区','上海市奉贤区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='上海市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('310151','崇明区','上海市崇明区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='上海市'));

#-----河北省#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130000', '河北省', '河北省',1, NULL);

#-----石家庄市#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130100', '石家庄市', '河北省石家庄市',2, (SELECT id FROM region_info t1 WHERE REGION_NAME='河北省'));

#-----区、县#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130101', '市辖区', '河北省石家庄市市辖区',3, (SELECT id FROM region_info t1 WHERE REGION_NAME='石家庄市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130102','长安区','河北省石家庄市长安区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='石家庄市'));


INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130104','桥西区','河北省石家庄市桥西区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='石家庄市'));


INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130105','新华区','河北省石家庄市新华区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='石家庄市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130107','井陉矿区','河北省石家庄市井陉矿区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='石家庄市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130108','裕华区','河北省石家庄市裕华区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='石家庄市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130109','藁城区','河北省石家庄市藁城区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='石家庄市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130110','鹿泉区','河北省石家庄市鹿泉区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='石家庄市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130111','栾城区','河北省石家庄市栾城区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='石家庄市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130121','井陉县','河北省石家庄市井陉县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='石家庄市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130123','正定县','河北省石家庄市正定县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='石家庄市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130125','行唐县','河北省石家庄市行唐县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='石家庄市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130126','灵寿县','河北省石家庄市灵寿县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='石家庄市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130127','高邑县','河北省石家庄市高邑县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='石家庄市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130128','深泽县','河北省石家庄市深泽县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='石家庄市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130129','赞皇县','河北省石家庄市赞皇县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='石家庄市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130130','无极县','河北省石家庄市无极县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='石家庄市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130131','平山县','河北省石家庄市平山县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='石家庄市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130132','元氏县','河北省石家庄市元氏县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='石家庄市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130133','赵县','河北省石家庄市赵县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='石家庄市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130183','晋州市','河北省石家庄市晋州市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='石家庄市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130184','新乐市','河北省石家庄市新乐市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='石家庄市'));

#-----唐山市#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130200','唐山市','河北省唐山市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='河北省'));

#-----区、县#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130201','市辖区','河北省唐山市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='唐山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130202','路南区','河北省唐山市路南区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='唐山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130203','路北区','河北省唐山市路北区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='唐山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130204','古冶区','河北省唐山市古冶区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='唐山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130205','开平区','河北省唐山市开平区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='唐山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130207','丰南区','河北省唐山市丰南区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='唐山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130208','丰润区','河北省唐山市丰润区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='唐山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130209','曹妃甸区','河北省唐山市曹妃甸区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='唐山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130223','滦县','河北省唐山市滦县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='唐山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130224','滦南县','河北省唐山市滦南县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='唐山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130225','乐亭县','河北省唐山市乐亭县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='唐山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130227','迁西县','河北省唐山市迁西县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='唐山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130229','玉田县','河北省唐山市玉田县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='唐山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130281','遵化市','河北省唐山市遵化市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='唐山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130283','迁安市','河北省唐山市迁安市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='唐山市'));

#-----秦皇岛市#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130300','秦皇岛市','河北省秦皇岛市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='河北省'));

#-----区、县#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130301','市辖区','河北省秦皇岛市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='秦皇岛市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130302','海港区','河北省秦皇岛市海港区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='秦皇岛市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130303','山海关区','河北省秦皇岛市山海关区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='秦皇岛市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130304','北戴河区','河北省秦皇岛市北戴河区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='秦皇岛市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130306','抚宁区','河北省秦皇岛市抚宁区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='秦皇岛市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130321','青龙满族自治县','河北省秦皇岛市青龙满族自治县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='秦皇岛市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130322','昌黎县','河北省秦皇岛市昌黎县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='秦皇岛市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130324','卢龙县','河北省秦皇岛市卢龙县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='秦皇岛市'));

#-----邯郸市#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130400','邯郸市','河北省邯郸市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='河北省'));

#-----区、县#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130401','市辖区','河北省邯郸市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='邯郸市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130402','邯山区','河北省邯郸市邯山区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='邯郸市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130403','丛台区','河北省邯郸市丛台区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='邯郸市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130404','复兴区','河北省邯郸市复兴区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='邯郸市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130406','峰峰矿区','河北省邯郸市峰峰矿区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='邯郸市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130421','邯郸县','河北省邯郸市邯郸县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='邯郸市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130423','临漳县','河北省邯郸市临漳县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='邯郸市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130424','成安县','河北省邯郸市成安县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='邯郸市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130425','大名县','河北省邯郸市大名县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='邯郸市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130426','涉县','河北省邯郸市涉县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='邯郸市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130427','磁县','河北省邯郸市磁县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='邯郸市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130428','肥乡县','河北省邯郸市肥乡县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='邯郸市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130429','永年县','河北省邯郸市永年县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='邯郸市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130430','邱县','河北省邯郸市邱县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='邯郸市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130431','鸡泽县','河北省邯郸市鸡泽县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='邯郸市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130432','广平县','河北省邯郸市广平县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='邯郸市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130433','馆陶县','河北省邯郸市馆陶县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='邯郸市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130434','魏县','河北省邯郸市魏县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='邯郸市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130435','曲周县','河北省邯郸市曲周县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='邯郸市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('130481','武安市','河北省邯郸市武安市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='邯郸市'));

#-----邢台市#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130500', '邢台市', '河北省邢台市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='河北省'));

#-----区、县#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130401', '市辖区', '河北省邢台市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='邢台市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130502', '桥东区', '河北省邢台市桥东区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='邢台市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130503', '桥西区', '河北省邢台市桥西区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='邢台市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130521', '邢台县', '河北省邢台市邢台县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='邢台市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130522', '临城县', '河北省邢台市临城县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='邢台市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130523', '内丘县', '河北省邢台市内丘县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='邢台市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130524', '柏乡县', '河北省邢台市柏乡县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='邢台市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130525', '隆尧县', '河北省邢台市隆尧县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='邢台市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130526', '任县', '河北省邢台市任县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='邢台市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130527', '南和县', '河北省邢台市南和县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='邢台市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130528', '宁晋县', '河北省邢台市宁晋县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='邢台市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130529', '巨鹿县', '河北省邢台市巨鹿县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='邢台市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130530', '新河县', '河北省邢台市新河县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='邢台市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130531', '广宗县', '河北省邢台市广宗县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='邢台市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130532', '平乡县', '河北省邢台市平乡县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='邢台市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130533', '威县', '河北省邢台市威县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='邢台市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130534', '清河县', '河北省邢台市清河县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='邢台市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130535', '临西县', '河北省邢台市临西县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='邢台市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130581', '南宫市', '河北省邢台市南宫市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='邢台市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130582', '沙河市', '河北省邢台市沙河市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='邢台市'));

#-----保定市#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130600', '保定市', '河北省保定市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='河北省'));

#-----区、县#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130601', '市辖区', '河北省保定市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='保定市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130602', '竞秀区', '河北省保定市竞秀区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='保定市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130606', '莲池区', '河北省保定市莲池区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='保定市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130607', '满城区', '河北省保定市满城区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='保定市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130608', '清苑区', '河北省保定市清苑区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='保定市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130609', '徐水区', '河北省保定市徐水区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='保定市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130623', '涞水县', '河北省保定市涞水县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='保定市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130624', '阜平县', '河北省保定市阜平县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='保定市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130626', '定兴县', '河北省保定市定兴县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='保定市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130627', '唐县', '河北省保定市唐县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='保定市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130628', '高阳县', '河北省保定市高阳县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='保定市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130629', '容城县', '河北省保定市容城县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='保定市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130630', '涞源县', '河北省保定市涞源县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='保定市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130631', '望都县', '河北省保定市望都县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='保定市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130632', '安新县', '河北省保定市安新县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='保定市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130633', '易县', '河北省保定市易县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='保定市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130634', '曲阳县', '河北省保定市曲阳县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='保定市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130635', '蠡县', '河北省保定市蠡县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='保定市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130636', '顺平县', '河北省保定市顺平县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='保定市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130637', '博野县', '河北省保定市博野县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='保定市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130638', '雄县', '河北省保定市雄县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='保定市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130681', '涿州市', '河北省保定市涿州市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='保定市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130683', '安国市', '河北省保定市安国市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='保定市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130684', '高碑店市', '河北省保定市高碑店市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='保定市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130700','张家口市','河北省张家口市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='河北省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130701','市辖区','河北省张家口市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='张家口市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130702','桥东区','河北省张家口市桥东区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='张家口市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130703','桥西区','河北省张家口市桥西区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='张家口市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130705','宣化区','河北省张家口市宣化区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='张家口市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130706','下花园区','河北省张家口市下花园区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='张家口市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130708','万全区','河北省张家口市万全区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='张家口市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130709','崇礼区','河北省张家口市崇礼区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='张家口市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130722','张北县','河北省张家口市张北县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='张家口市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130723','康保县','河北省张家口市康保县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='张家口市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130724','沽源县','河北省张家口市沽源县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='张家口市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130725','尚义县','河北省张家口市尚义县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='张家口市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130726','蔚县','河北省张家口市蔚县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='张家口市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130727','阳原县','河北省张家口市阳原县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='张家口市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130728','怀安县','河北省张家口市怀安县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='张家口市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130730','怀来县','河北省张家口市怀来县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='张家口市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130731','涿鹿县','河北省张家口市涿鹿县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='张家口市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130732','赤城县','河北省张家口市赤城县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='张家口市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130800','承德市','河北省承德市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='河北省'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130801','市辖区','河北省承德市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='承德市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130802','双桥区','河北省承德市双桥区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='承德市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130803','双滦区','河北省承德市双滦区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='承德市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130804','鹰手营子矿区','河北省承德市鹰手营子矿区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='承德市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130821','承德县','河北省承德市承德县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='承德市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130822','兴隆县','河北省承德市兴隆县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='承德市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130823','平泉县','河北省承德市平泉县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='承德市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130824','滦平县','河北省承德市滦平县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='承德市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130825','隆化县','河北省承德市隆化县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='承德市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130826','丰宁满族自治县','河北省承德市丰宁满族自治县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='承德市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130827','宽城满族自治县','河北省承德市宽城满族自治县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='承德市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130828','围场满族蒙古族自治县','河北省承德市围场满族蒙古族自治县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='承德市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130900','沧州市','河北省沧州市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='河北省'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130901','市辖区','河北省沧州市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='沧州市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130902','新华区','河北省沧州市新华区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='沧州市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130903','运河区','河北省沧州市运河区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='沧州市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130921','沧县','河北省沧州市沧县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='沧州市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130922','青县','河北省沧州市青县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='沧州市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130923','东光县','河北省沧州市东光县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='沧州市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130924','海兴县','河北省沧州市海兴县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='沧州市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130925','盐山县','河北省沧州市盐山县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='沧州市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130926','肃宁县','河北省沧州市肃宁县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='沧州市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130927','南皮县','河北省沧州市南皮县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='沧州市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130928','吴桥县','河北省沧州市吴桥县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='沧州市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130929','献县','河北省沧州市献县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='沧州市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130930','孟村回族自治县','河北省沧州市孟村回族自治县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='沧州市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130981','泊头市','河北省沧州市泊头市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='沧州市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130982','任丘市','河北省沧州市任丘市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='沧州市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130983','黄骅市','河北省沧州市黄骅市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='沧州市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '130984','河间市','河北省沧州市河间市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='沧州市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '131000','廊坊市','河北省廊坊市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='河北省'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '131001','市辖区','河北省廊坊市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='廊坊市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '131002','安次区','河北省廊坊市安次区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='廊坊市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '131003','广阳区','河北省廊坊市广阳区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='廊坊市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '131022','固安县','河北省廊坊市固安县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='廊坊市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '131023','永清县','河北省廊坊市永清县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='廊坊市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '131024','香河县','河北省廊坊市香河县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='廊坊市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '131025','大城县','河北省廊坊市大城县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='廊坊市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '131026','文安县','河北省廊坊市文安县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='廊坊市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '131028','大厂回族自治县','河北省廊坊市大厂回族自治县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='廊坊市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '131081','霸州市','河北省廊坊市霸州市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='廊坊市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '131082','三河市','河北省廊坊市三河市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='廊坊市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '131100','衡水市','河北省衡水市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='河北省'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '131101','市辖区','河北省衡水市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='衡水市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '131102','桃城区','河北省衡水市桃城区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='衡水市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '131103','冀州区','河北省衡水市冀州区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='衡水市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '131121','枣强县','河北省衡水市枣强县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='衡水市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '131122','武邑县','河北省衡水市武邑县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='衡水市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '131123','武强县','河北省衡水市武强县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='衡水市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '131124','饶阳县','河北省衡水市饶阳县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='衡水市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '131125','安平县','河北省衡水市安平县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='衡水市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '131126','故城县','河北省衡水市故城县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='衡水市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '131127','景县','河北省衡水市景县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='衡水市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '131128','阜城县','河北省衡水市阜城县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='衡水市'));
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '131182','深州市','河北省衡水市深州市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='衡水市'));


#-----定州市#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '139001', '定州市', '河北省定州市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='河北省'));

#-----辛集市#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '139002', '辛集市', '河北省辛集市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='河北省'));
#------山西省----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140000','山西省','山西省',1,NUll);

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140100','太原市','山西省太原市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='山西省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140101','市辖区','山西省太原市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='太原市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140105','小店区','山西省太原市小店区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='太原市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140106','迎泽区','山西省太原市迎泽区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='太原市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140107','杏花岭区','山西省太原市杏花岭区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='太原市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140108','尖草坪区','山西省太原市尖草坪区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='太原市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140109','万柏林区','山西省太原市万柏林区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='太原市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140110','晋源区','山西省太原市晋源区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='太原市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140121','清徐县','山西省太原市清徐县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='太原市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140122','阳曲县','山西省太原市阳曲县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='太原市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140123','娄烦县','山西省太原市娄烦县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='太原市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140181','古交市','山西省太原市古交市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='太原市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140200','大同市','山西省大同市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='山西省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140201','市辖区','山西省大同市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='大同市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140202','城区','山西省大同市城区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='大同市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140203','矿区','山西省大同市矿区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='大同市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140211','南郊区','山西省大同市南郊区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='大同市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140212','新荣区','山西省大同市新荣区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='大同市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140221','阳高县','山西省大同市阳高县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='大同市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140222','天镇县','山西省大同市天镇县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='大同市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140223','广灵县','山西省大同市广灵县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='大同市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140224','灵丘县','山西省大同市灵丘县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='大同市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140225','浑源县','山西省大同市浑源县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='大同市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140226','左云县','山西省大同市左云县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='大同市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140227','大同县','山西省大同市大同县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='大同市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140300','阳泉市','山西省阳泉市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='山西省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140301','市辖区','山西省阳泉市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阳泉市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140302','城区','山西省阳泉市城区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阳泉市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140303','矿区','山西省阳泉市矿区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阳泉市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140311','郊区','山西省阳泉市郊区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阳泉市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140321','平定县','山西省阳泉市平定县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阳泉市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140322','盂县','山西省阳泉市盂县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阳泉市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140400','长治市','山西省长治市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='山西省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140401','市辖区','山西省长治市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='长治市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140402','城区','山西省长治市城区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='长治市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140411','郊区','山西省长治市郊区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='长治市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140421','长治县','山西省长治市长治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='长治市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140423','襄垣县','山西省长治市襄垣县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='长治市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140424','屯留县','山西省长治市屯留县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='长治市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140425','平顺县','山西省长治市平顺县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='长治市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140426','黎城县','山西省长治市黎城县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='长治市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140427','壶关县','山西省长治市壶关县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='长治市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140428','长子县','山西省长治市长子县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='长治市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140429','武乡县','山西省长治市武乡县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='长治市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140430','沁县','山西省长治市沁县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='长治市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140431','沁源县','山西省长治市沁源县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='长治市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140481','潞城市','山西省长治市潞城市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='长治市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140500','晋城市','山西省晋城市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='山西省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140501','市辖区','山西省晋城市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='晋城市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140502','城区','山西省晋城市城区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='晋城市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140521','沁水县','山西省晋城市沁水县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='晋城市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140522','阳城县','山西省晋城市阳城县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='晋城市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140524','陵川县','山西省晋城市陵川县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='晋城市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140525','泽州县','山西省晋城市泽州县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='晋城市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140581','高平市','山西省晋城市高平市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='晋城市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140600','朔州市','山西省朔州市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='山西省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140601','市辖区','山西省朔州市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='朔州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140602','朔城区','山西省朔州市朔城区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='朔州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140603','平鲁区','山西省朔州市平鲁区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='朔州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140621','山阴县','山西省朔州市山阴县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='朔州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140622','应县','山西省朔州市应县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='朔州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140623','右玉县','山西省朔州市右玉县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='朔州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140624','怀仁县','山西省朔州市怀仁县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='朔州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140700','晋中市','山西省晋中市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='山西省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140701','市辖区','山西省晋中市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='晋中市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140702','榆次区','山西省晋中市榆次区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='晋中市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140721','榆社县','山西省晋中市榆社县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='晋中市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140722','左权县','山西省晋中市左权县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='晋中市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140723','和顺县','山西省晋中市和顺县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='晋中市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140724','昔阳县','山西省晋中市昔阳县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='晋中市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140725','寿阳县','山西省晋中市寿阳县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='晋中市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140726','太谷县','山西省晋中市太谷县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='晋中市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140727','祁县','山西省晋中市祁县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='晋中市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140728','平遥县','山西省晋中市平遥县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='晋中市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140729','灵石县','山西省晋中市灵石县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='晋中市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140781','介休市','山西省晋中市介休市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='晋中市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140800','运城市','山西省运城市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='山西省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140801','市辖区','山西省运城市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='运城市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140802','盐湖区','山西省运城市盐湖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='运城市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140821','临猗县','山西省运城市临猗县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='运城市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140822','万荣县','山西省运城市万荣县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='运城市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140823','闻喜县','山西省运城市闻喜县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='运城市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140824','稷山县','山西省运城市稷山县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='运城市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140825','新绛县','山西省运城市新绛县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='运城市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140826','绛县','山西省运城市绛县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='运城市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140827','垣曲县','山西省运城市垣曲县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='运城市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140828','夏县','山西省运城市夏县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='运城市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140829','平陆县','山西省运城市平陆县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='运城市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140830','芮城县','山西省运城市芮城县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='运城市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140881','永济市','山西省运城市永济市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='运城市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140882','河津市','山西省运城市河津市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='运城市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140900','忻州市','山西省忻州市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='山西省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140901','市辖区','山西省忻州市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='忻州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140902','忻府区','山西省忻州市忻府区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='忻州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140921','定襄县','山西省忻州市定襄县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='忻州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140922','五台县','山西省忻州市五台县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='忻州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140923','代县','山西省忻州市代县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='忻州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140924','繁峙县','山西省忻州市繁峙县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='忻州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140925','宁武县','山西省忻州市宁武县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='忻州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140926','静乐县','山西省忻州市静乐县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='忻州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140927','神池县','山西省忻州市神池县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='忻州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140928','五寨县','山西省忻州市五寨县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='忻州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140929','岢岚县','山西省忻州市岢岚县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='忻州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140930','河曲县','山西省忻州市河曲县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='忻州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140931','保德县','山西省忻州市保德县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='忻州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140932','偏关县','山西省忻州市偏关县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='忻州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '140981','原平市','山西省忻州市原平市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='忻州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '141000','临汾市','山西省临汾市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='山西省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '141001','市辖区','山西省临汾市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='临汾市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '141002','尧都区','山西省临汾市尧都区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='临汾市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '141021','曲沃县','山西省临汾市曲沃县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='临汾市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '141022','翼城县','山西省临汾市翼城县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='临汾市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '141023','襄汾县','山西省临汾市襄汾县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='临汾市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '141024','洪洞县','山西省临汾市洪洞县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='临汾市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '141025','古县','山西省临汾市古县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='临汾市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '141026','安泽县','山西省临汾市安泽县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='临汾市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '141027','浮山县','山西省临汾市浮山县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='临汾市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '141028','吉县','山西省临汾市吉县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='临汾市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '141029','乡宁县','山西省临汾市乡宁县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='临汾市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '141030','大宁县','山西省临汾市大宁县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='临汾市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '141031','隰县','山西省临汾市隰县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='临汾市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '141032','永和县','山西省临汾市永和县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='临汾市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '141033','蒲县','山西省临汾市蒲县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='临汾市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '141034','汾西县','山西省临汾市汾西县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='临汾市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '141081','侯马市','山西省临汾市侯马市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='临汾市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '141082','霍州市','山西省临汾市霍州市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='临汾市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '141100','吕梁市','山西省吕梁市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='山西省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '141101','市辖区','山西省吕梁市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='吕梁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '141102','离石区','山西省吕梁市离石区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='吕梁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '141121','文水县','山西省吕梁市文水县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='吕梁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '141122','交城县','山西省吕梁市交城县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='吕梁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '141123','兴县','山西省吕梁市兴县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='吕梁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '141124','临县','山西省吕梁市临县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='吕梁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '141125','柳林县','山西省吕梁市柳林县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='吕梁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '141126','石楼县','山西省吕梁市石楼县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='吕梁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '141127','岚县','山西省吕梁市岚县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='吕梁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '141128','方山县','山西省吕梁市方山县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='吕梁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '141129','中阳县','山西省吕梁市中阳县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='吕梁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '141130','交口县','山西省吕梁市交口县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='吕梁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '141181','孝义市','山西省吕梁市孝义市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='吕梁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '141182','汾阳市','山西省吕梁市汾阳市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='吕梁市'));
#-----内蒙古自治区#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150000','内蒙古自治区','内蒙古自治区',1,NULL);

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150100','呼和浩特市','内蒙古自治区呼和浩特市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='内蒙古自治区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150101','市辖区','内蒙古自治区呼和浩特市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='呼和浩特市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150102','新城区','内蒙古自治区呼和浩特市新城区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='呼和浩特市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150103','回民区','内蒙古自治区呼和浩特市回民区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='呼和浩特市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150104','玉泉区','内蒙古自治区呼和浩特市玉泉区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='呼和浩特市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150105','赛罕区','内蒙古自治区呼和浩特市赛罕区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='呼和浩特市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150121','土默特左旗','内蒙古自治区呼和浩特市土默特左旗',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='呼和浩特市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150122','托克托县','内蒙古自治区呼和浩特市托克托县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='呼和浩特市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150123','和林格尔县','内蒙古自治区呼和浩特市和林格尔县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='呼和浩特市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150124','清水河县','内蒙古自治区呼和浩特市清水河县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='呼和浩特市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150125','武川县','内蒙古自治区呼和浩特市武川县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='呼和浩特市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150200','包头市','内蒙古自治区包头市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='内蒙古自治区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150201','市辖区','内蒙古自治区包头市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='包头市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150202','东河区','内蒙古自治区包头市东河区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='包头市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150203','昆都仑区','内蒙古自治区包头市昆都仑区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='包头市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150204','青山区','内蒙古自治区包头市青山区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='包头市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150205','石拐区','内蒙古自治区包头市石拐区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='包头市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150206','白云鄂博矿区','内蒙古自治区包头市白云鄂博矿区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='包头市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150207','九原区','内蒙古自治区包头市九原区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='包头市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150221','土默特右旗','内蒙古自治区包头市土默特右旗',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='包头市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150222','固阳县','内蒙古自治区包头市固阳县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='包头市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150223','达尔罕茂明安联合旗','内蒙古自治区包头市达尔罕茂明安联合旗',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='包头市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150300','乌海市','内蒙古自治区乌海市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='内蒙古自治区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150301','市辖区','内蒙古自治区乌海市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='乌海市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150302','海勃湾区','内蒙古自治区乌海市海勃湾区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='乌海市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150303','海南区','内蒙古自治区乌海市海南区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='乌海市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150304','乌达区','内蒙古自治区乌海市乌达区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='乌海市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150400','赤峰市','内蒙古自治区赤峰市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='内蒙古自治区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150401','市辖区','内蒙古自治区赤峰市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='赤峰市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150402','红山区','内蒙古自治区赤峰市红山区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='赤峰市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150403','元宝山区','内蒙古自治区赤峰市元宝山区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='赤峰市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150404','松山区','内蒙古自治区赤峰市松山区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='赤峰市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150421','阿鲁科尔沁旗','内蒙古自治区赤峰市阿鲁科尔沁旗',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='赤峰市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150422','巴林左旗','内蒙古自治区赤峰市巴林左旗',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='赤峰市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150423','巴林右旗','内蒙古自治区赤峰市巴林右旗',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='赤峰市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150424','林西县','内蒙古自治区赤峰市林西县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='赤峰市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150425','克什克腾旗','内蒙古自治区赤峰市克什克腾旗',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='赤峰市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150426','翁牛特旗','内蒙古自治区赤峰市翁牛特旗',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='赤峰市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150428','喀喇沁旗','内蒙古自治区赤峰市喀喇沁旗',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='赤峰市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150429','宁城县','内蒙古自治区赤峰市宁城县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='赤峰市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150430','敖汉旗','内蒙古自治区赤峰市敖汉旗',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='赤峰市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150500','通辽市','内蒙古自治区通辽市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='内蒙古自治区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150501','市辖区','内蒙古自治区通辽市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='通辽市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150502','科尔沁区','内蒙古自治区通辽市科尔沁区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='通辽市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150521','科尔沁左翼中旗','内蒙古自治区通辽市科尔沁左翼中旗',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='通辽市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150522','科尔沁左翼后旗','内蒙古自治区通辽市科尔沁左翼后旗',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='通辽市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150523','开鲁县','内蒙古自治区通辽市开鲁县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='通辽市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150524','库伦旗','内蒙古自治区通辽市库伦旗',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='通辽市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150525','奈曼旗','内蒙古自治区通辽市奈曼旗',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='通辽市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150526','扎鲁特旗','内蒙古自治区通辽市扎鲁特旗',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='通辽市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150581','霍林郭勒市','内蒙古自治区通辽市霍林郭勒市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='通辽市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150600','鄂尔多斯市','内蒙古自治区鄂尔多斯市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='内蒙古自治区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150601','市辖区','内蒙古自治区鄂尔多斯市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='鄂尔多斯市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150602','东胜区','内蒙古自治区鄂尔多斯市东胜区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='鄂尔多斯市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150603','康巴什区','内蒙古自治区鄂尔多斯市康巴什区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='鄂尔多斯市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150621','达拉特旗','内蒙古自治区鄂尔多斯市达拉特旗',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='鄂尔多斯市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150622','准格尔旗','内蒙古自治区鄂尔多斯市准格尔旗',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='鄂尔多斯市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150623','鄂托克前旗','内蒙古自治区鄂尔多斯市鄂托克前旗',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='鄂尔多斯市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150624','鄂托克旗','内蒙古自治区鄂尔多斯市鄂托克旗',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='鄂尔多斯市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150625','杭锦旗','内蒙古自治区鄂尔多斯市杭锦旗',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='鄂尔多斯市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150626','乌审旗','内蒙古自治区鄂尔多斯市乌审旗',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='鄂尔多斯市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150627','伊金霍洛旗','内蒙古自治区鄂尔多斯市伊金霍洛旗',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='鄂尔多斯市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150700','呼伦贝尔市','内蒙古自治区呼伦贝尔市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='内蒙古自治区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150701','市辖区','内蒙古自治区呼伦贝尔市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='呼伦贝尔市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150702','海拉尔区','内蒙古自治区呼伦贝尔市海拉尔区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='呼伦贝尔市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150703','扎赉诺尔区','内蒙古自治区呼伦贝尔市扎赉诺尔区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='呼伦贝尔市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150721','阿荣旗','内蒙古自治区呼伦贝尔市阿荣旗',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='呼伦贝尔市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150722','莫力达瓦达斡尔族自治旗','内蒙古自治区呼伦贝尔市治旗',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='呼伦贝尔市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150723','鄂伦春自治旗','内蒙古自治区呼伦贝尔市鄂伦春自治旗',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='呼伦贝尔市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150724','鄂温克族自治旗','内蒙古自治区呼伦贝尔市鄂温克族自治旗',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='呼伦贝尔市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150725','陈巴尔虎旗','内蒙古自治区呼伦贝尔市陈巴尔虎旗',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='呼伦贝尔市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150726','新巴尔虎左旗','内蒙古自治区呼伦贝尔市新巴尔虎左旗',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='呼伦贝尔市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150727','新巴尔虎右旗','内蒙古自治区呼伦贝尔市新巴尔虎右旗',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='呼伦贝尔市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150781','满洲里市','内蒙古自治区呼伦贝尔市满洲里市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='呼伦贝尔市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150782','牙克石市','内蒙古自治区呼伦贝尔市牙克石市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='呼伦贝尔市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150783','扎兰屯市','内蒙古自治区呼伦贝尔市扎兰屯市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='呼伦贝尔市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150784','额尔古纳市','内蒙古自治区呼伦贝尔市额尔古纳市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='呼伦贝尔市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150785','根河市','内蒙古自治区呼伦贝尔市根河市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='呼伦贝尔市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150800','巴彦淖尔市','内蒙古自治区巴彦淖尔市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='内蒙古自治区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150801','市辖区','内蒙古自治区巴彦淖尔市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='巴彦淖尔市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150802','临河区','内蒙古自治区巴彦淖尔市临河区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='巴彦淖尔市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150821','五原县','内蒙古自治区巴彦淖尔市五原县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='巴彦淖尔市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150822','磴口县','内蒙古自治区巴彦淖尔市磴口县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='巴彦淖尔市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150823','乌拉特前旗','内蒙古自治区巴彦淖尔市乌拉特前旗',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='巴彦淖尔市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150824','乌拉特中旗','内蒙古自治区巴彦淖尔市乌拉特中旗',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='巴彦淖尔市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150825','乌拉特后旗','内蒙古自治区巴彦淖尔市乌拉特后旗',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='巴彦淖尔市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150826','杭锦后旗','内蒙古自治区巴彦淖尔市杭锦后旗',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='巴彦淖尔市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150900','乌兰察布市','内蒙古自治区乌兰察布市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='内蒙古自治区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150901','市辖区','内蒙古自治区乌兰察布市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='乌兰察布市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150902','集宁区','内蒙古自治区乌兰察布市集宁区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='乌兰察布市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150921','卓资县','内蒙古自治区乌兰察布市卓资县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='乌兰察布市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150922','化德县','内蒙古自治区乌兰察布市化德县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='乌兰察布市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150923','商都县','内蒙古自治区乌兰察布市商都县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='乌兰察布市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150924','兴和县','内蒙古自治区乌兰察布市兴和县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='乌兰察布市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150925','凉城县','内蒙古自治区乌兰察布市凉城县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='乌兰察布市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150926','察哈尔右翼前旗','内蒙古自治区乌兰察布市察哈尔右翼前旗',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='乌兰察布市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150927','察哈尔右翼中旗','内蒙古自治区乌兰察布市察哈尔右翼中旗',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='乌兰察布市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150928','察哈尔右翼后旗','内蒙古自治区乌兰察布市察哈尔右翼后旗',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='乌兰察布市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150929','四子王旗','内蒙古自治区乌兰察布市四子王旗',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='乌兰察布市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '150981','丰镇市','内蒙古自治区乌兰察布市丰镇市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='乌兰察布市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '152200','兴安盟','内蒙古自治区兴安盟',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='内蒙古自治区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '152201','乌兰浩特市','内蒙古自治区兴安盟乌兰浩特市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='兴安盟'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '152202','阿尔山市','内蒙古自治区兴安盟阿尔山市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='兴安盟'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '152221','科尔沁右翼前旗','内蒙古自治区兴安盟科尔沁右翼前旗',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='兴安盟'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '152222','科尔沁右翼中旗','内蒙古自治区兴安盟科尔沁右翼中旗',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='兴安盟'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '152223','扎赉特旗','内蒙古自治区兴安盟扎赉特旗',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='兴安盟'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '152224','突泉县','内蒙古自治区兴安盟突泉县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='兴安盟'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '152500','锡林郭勒盟','内蒙古自治区锡林郭勒盟',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='内蒙古自治区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '152501','二连浩特市','内蒙古自治区锡林郭勒盟二连浩特市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='锡林郭勒盟'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '152502','锡林浩特市','内蒙古自治区锡林郭勒盟锡林浩特市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='锡林郭勒盟'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '152522','阿巴嘎旗','内蒙古自治区锡林郭勒盟阿巴嘎旗',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='锡林郭勒盟'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '152523','苏尼特左旗','内蒙古自治区锡林郭勒盟苏尼特左旗',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='锡林郭勒盟'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '152524','苏尼特右旗','内蒙古自治区锡林郭勒盟苏尼特右旗',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='锡林郭勒盟'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '152525','东乌珠穆沁旗','内蒙古自治区锡林郭勒盟东乌珠穆沁旗',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='锡林郭勒盟'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '152526','西乌珠穆沁旗','内蒙古自治区锡林郭勒盟西乌珠穆沁旗',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='锡林郭勒盟'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '152527','太仆寺旗','内蒙古自治区锡林郭勒盟太仆寺旗',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='锡林郭勒盟'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '152528','镶黄旗','内蒙古自治区锡林郭勒盟镶黄旗',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='锡林郭勒盟'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '152529','正镶白旗','内蒙古自治区锡林郭勒盟正镶白旗',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='锡林郭勒盟'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '152530','正蓝旗','内蒙古自治区锡林郭勒盟正蓝旗',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='锡林郭勒盟'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '152531','多伦县','内蒙古自治区锡林郭勒盟多伦县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='锡林郭勒盟'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '152900','阿拉善盟','内蒙古自治区阿拉善盟',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='内蒙古自治区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '152921','阿拉善左旗','内蒙古自治区阿拉善盟阿拉善左旗',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阿拉善盟'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '152922','阿拉善右旗','内蒙古自治区阿拉善盟阿拉善右旗',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阿拉善盟'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '152923','额济纳旗','内蒙古自治区阿拉善盟额济纳旗',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阿拉善盟'));
#-----辽宁省#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210000','辽宁省','辽宁省',1,NULL);

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210100','沈阳市','辽宁省沈阳市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='辽宁省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210101','市辖区','辽宁省沈阳市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='沈阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210102','和平区','辽宁省沈阳市和平区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='沈阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210103','沈河区','辽宁省沈阳市沈河区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='沈阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210104','大东区','辽宁省沈阳市大东区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='沈阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210105','皇姑区','辽宁省沈阳市皇姑区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='沈阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210106','铁西区','辽宁省沈阳市铁西区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='沈阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210111','苏家屯区','辽宁省沈阳市苏家屯区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='沈阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210112','浑南区','辽宁省沈阳市浑南区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='沈阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210113','沈北新区','辽宁省沈阳市沈北新区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='沈阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210114','于洪区','辽宁省沈阳市于洪区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='沈阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210115','辽中区','辽宁省沈阳市辽中区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='沈阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210123','康平县','辽宁省沈阳市康平县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='沈阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210124','法库县','辽宁省沈阳市法库县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='沈阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210181','新民市','辽宁省沈阳市新民市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='沈阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210200','大连市','辽宁省大连市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='辽宁省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210201','市辖区','辽宁省大连市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='大连市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210202','中山区','辽宁省大连市中山区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='大连市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210203','西岗区','辽宁省大连市西岗区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='大连市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210204','沙河口区','辽宁省大连市沙河口区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='大连市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210211','甘井子区','辽宁省大连市甘井子区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='大连市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210212','旅顺口区','辽宁省大连市旅顺口区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='大连市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210213','金州区','辽宁省大连市金州区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='大连市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210214','普兰店区','辽宁省大连市普兰店区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='大连市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210224','长海县','辽宁省大连市长海县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='大连市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210281','瓦房店市','辽宁省大连市瓦房店市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='大连市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210283','庄河市','辽宁省大连市庄河市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='大连市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210300','鞍山市','辽宁省鞍山市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='辽宁省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210301','市辖区','辽宁省鞍山市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='鞍山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210302','铁东区','辽宁省鞍山市铁东区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='鞍山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210303','铁西区','辽宁省鞍山市铁西区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='鞍山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210304','立山区','辽宁省鞍山市立山区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='鞍山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210311','千山区','辽宁省鞍山市千山区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='鞍山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210321','台安县','辽宁省鞍山市台安县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='鞍山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210323','岫岩满族自治县','辽宁省鞍山市岫岩满族自治县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='鞍山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210381','海城市','辽宁省鞍山市海城市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='鞍山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210400','抚顺市','辽宁省抚顺市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='辽宁省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210401','市辖区','辽宁省抚顺市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='抚顺市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210402','新抚区','辽宁省抚顺市新抚区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='抚顺市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210403','东洲区','辽宁省抚顺市东洲区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='抚顺市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210404','望花区','辽宁省抚顺市望花区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='抚顺市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210411','顺城区','辽宁省抚顺市顺城区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='抚顺市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210421','抚顺县','辽宁省抚顺市抚顺县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='抚顺市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210422','新宾满族自治县','辽宁省抚顺市新宾满族自治县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='抚顺市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210423','清原满族自治县','辽宁省抚顺市清原满族自治县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='抚顺市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210500','本溪市','辽宁省本溪市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='辽宁省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210501','市辖区','辽宁省本溪市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='本溪市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210502','平山区','辽宁省本溪市平山区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='本溪市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210503','溪湖区','辽宁省本溪市溪湖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='本溪市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210504','明山区','辽宁省本溪市明山区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='本溪市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210505','南芬区','辽宁省本溪市南芬区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='本溪市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210521','本溪满族自治县','辽宁省本溪市本溪满族自治县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='本溪市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210522','桓仁满族自治县','辽宁省本溪市桓仁满族自治县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='本溪市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210600','丹东市','辽宁省丹东市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='辽宁省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210601','市辖区','辽宁省丹东市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='丹东市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210602','元宝区','辽宁省丹东市元宝区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='丹东市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210603','振兴区','辽宁省丹东市振兴区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='丹东市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210604','振安区','辽宁省丹东市振安区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='丹东市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210624','宽甸满族自治县','辽宁省丹东市宽甸满族自治县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='丹东市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210681','东港市','辽宁省丹东市东港市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='丹东市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210682','凤城市','辽宁省丹东市凤城市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='丹东市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210700','锦州市','辽宁省锦州市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='辽宁省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210701','市辖区','辽宁省锦州市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='锦州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210702','古塔区','辽宁省锦州市古塔区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='锦州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210703','凌河区','辽宁省锦州市凌河区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='锦州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210711','太和区','辽宁省锦州市太和区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='锦州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210726','黑山县','辽宁省锦州市黑山县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='锦州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210727','义县','辽宁省锦州市义县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='锦州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210781','凌海市','辽宁省锦州市凌海市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='锦州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210782','北镇市','辽宁省锦州市北镇市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='锦州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210800','营口市','辽宁省营口市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='辽宁省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210801','市辖区','辽宁省营口市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='营口市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210802','站前区','辽宁省营口市站前区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='营口市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210803','西市区','辽宁省营口市西市区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='营口市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210804','鲅鱼圈区','辽宁省营口市鲅鱼圈区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='营口市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210811','老边区','辽宁省营口市老边区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='营口市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210881','盖州市','辽宁省营口市盖州市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='营口市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210882','大石桥市','辽宁省营口市大石桥市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='营口市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210900','阜新市','辽宁省阜新市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='辽宁省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210901','市辖区','辽宁省阜新市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阜新市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210902','海州区','辽宁省阜新市海州区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阜新市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210903','新邱区','辽宁省阜新市新邱区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阜新市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210904','太平区','辽宁省阜新市太平区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阜新市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210905','清河门区','辽宁省阜新市清河门区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阜新市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210911','细河区','辽宁省阜新市细河区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阜新市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210921','阜新蒙古族自治县','辽宁省阜新市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阜新市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '210922','彰武县','辽宁省阜新市彰武县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阜新市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '211000','辽阳市','辽宁省阜新市辽阳市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阜新市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '211001','市辖区','辽宁省阜新市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阜新市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '211002','白塔区','辽宁省阜新市白塔区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阜新市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '211003','文圣区','辽宁省阜新市文圣区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阜新市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '211004','宏伟区','辽宁省阜新市宏伟区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阜新市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '211005','弓长岭区','辽宁省阜新市弓长岭区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阜新市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '211011','太子河区','辽宁省阜新市太子河区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阜新市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '211021','辽阳县','辽宁省阜新市辽阳县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阜新市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '211081','灯塔市','辽宁省阜新市灯塔市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阜新市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '211100','盘锦市','辽宁省盘锦市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='辽宁省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '211101','市辖区','辽宁省盘锦市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='盘锦市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '211102','双台子区','辽宁省盘锦市双台子区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='盘锦市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '211103','兴隆台区','辽宁省盘锦市兴隆台区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='盘锦市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '211104','大洼区','辽宁省盘锦市大洼区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='盘锦市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '211122','盘山县','辽宁省盘锦市盘山县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='盘锦市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '211200','铁岭市','辽宁省铁岭市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='辽宁省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '211201','市辖区','辽宁省铁岭市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='铁岭市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '211202','银州区','辽宁省铁岭市银州区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='铁岭市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '211204','清河区','辽宁省铁岭市清河区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='铁岭市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '211221','铁岭县','辽宁省铁岭市铁岭县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='铁岭市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '211223','西丰县','辽宁省铁岭市西丰县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='铁岭市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '211224','昌图县','辽宁省铁岭市昌图县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='铁岭市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '211281','调兵山市','辽宁省铁岭市调兵山市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='铁岭市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '211282','开原市','辽宁省铁岭市开原市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='铁岭市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '211300','朝阳市','辽宁省朝阳市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='辽宁省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '211301','市辖区','辽宁省朝阳市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='朝阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '211302','双塔区','辽宁省朝阳市双塔区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='朝阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '211303','龙城区','辽宁省朝阳市龙城区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='朝阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '211321','朝阳县','辽宁省朝阳市朝阳县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='朝阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '211322','建平县','辽宁省朝阳市建平县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='朝阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '211324','喀喇沁左翼蒙古族自治县','辽宁省朝阳市喀喇沁左翼蒙古族自治县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='朝阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '211381','北票市','辽宁省朝阳市北票市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='朝阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '211382','凌源市','辽宁省朝阳市凌源市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='朝阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '211400','葫芦岛市','辽宁省葫芦岛市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='辽宁省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '211401','市辖区','辽宁省葫芦岛市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='葫芦岛市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '211402','连山区','辽宁省葫芦岛市连山区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='葫芦岛市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '211403','龙港区','辽宁省葫芦岛市龙港区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='葫芦岛市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '211404','南票区','辽宁省葫芦岛市南票区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='葫芦岛市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '211421','绥中县','辽宁省葫芦岛市绥中县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='葫芦岛市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '211422','建昌县','辽宁省葫芦岛市建昌县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='葫芦岛市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '211481','兴城市','辽宁省葫芦岛市兴城市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='葫芦岛市'));
#-----吉林省#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220000','吉林省','吉林省',1,NULL);

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220100','长春市','吉林省长春市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='吉林省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220101','市辖区','吉林省长春市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='长春市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220102','南关区','吉林省长春市南关区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='长春市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220103','宽城区','吉林省长春市宽城区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='长春市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220104','朝阳区','吉林省长春市朝阳区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='长春市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220105','二道区','吉林省长春市二道区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='长春市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220106','绿园区','吉林省长春市绿园区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='长春市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220112','双阳区','吉林省长春市双阳区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='长春市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220113','九台区','吉林省长春市九台区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='长春市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220122','农安县','吉林省长春市农安县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='长春市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220182','榆树市','吉林省长春市榆树市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='长春市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220183','德惠市','吉林省长春市德惠市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='长春市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220200','吉林市','吉林省吉林市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='吉林省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220201','市辖区','吉林省吉林市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='吉林市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220202','昌邑区','吉林省吉林市昌邑区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='吉林市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220203','龙潭区','吉林省吉林市龙潭区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='吉林市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220204','船营区','吉林省吉林市船营区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='吉林市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220211','丰满区','吉林省吉林市丰满区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='吉林市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220221','永吉县','吉林省吉林市永吉县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='吉林市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220281','蛟河市','吉林省吉林市蛟河市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='吉林市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220282','桦甸市','吉林省吉林市桦甸市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='吉林市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220283','舒兰市','吉林省吉林市舒兰市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='吉林市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220284','磐石市','吉林省吉林市磐石市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='吉林市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220300','四平市','吉林省四平市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='吉林省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220301','市辖区','吉林省四平市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='四平市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220302','铁西区','吉林省四平市铁西区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='四平市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220303','铁东区','吉林省四平市铁东区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='四平市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220322','梨树县','吉林省四平市梨树县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='四平市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220323','伊通满族自治县','吉林省四平市伊通满族自治县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='四平市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220381','公主岭市','吉林省四平市公主岭市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='四平市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220382','双辽市','吉林省四平市双辽市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='四平市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220400','辽源市','吉林省辽源市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='吉林省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220401','市辖区','吉林省辽源市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='辽源市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220402','龙山区','吉林省辽源市龙山区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='辽源市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220403','西安区','吉林省辽源市西安区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='辽源市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220421','东丰县','吉林省辽源市东丰县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='辽源市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220422','东辽县','吉林省辽源市东辽县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='辽源市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220500','通化市','吉林省通化市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='吉林省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220501','市辖区','吉林省通化市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='通化市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220502','东昌区','吉林省通化市东昌区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='通化市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220503','二道江区','吉林省通化市二道江区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='通化市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220521','通化县','吉林省通化市通化县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='通化市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220523','辉南县','吉林省通化市辉南县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='通化市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220524','柳河县','吉林省通化市柳河县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='通化市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220581','梅河口市','吉林省通化市梅河口市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='通化市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220582','集安市','吉林省通化市集安市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='通化市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220600','白山市','吉林省白山市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='吉林省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220601','市辖区','吉林省白山市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='白山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220602','浑江区','吉林省白山市浑江区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='白山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220605','江源区','吉林省白山市江源区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='白山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220621','抚松县','吉林省白山市抚松县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='白山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220622','靖宇县','吉林省白山市靖宇县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='白山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220623','长白朝鲜族自治县','吉林省白山市长白朝鲜族自治县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='白山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220681','临江市','吉林省白山市临江市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='白山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220700','松原市','吉林省松原市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='吉林省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220701','市辖区','吉林省松原市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='松原市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220702','宁江区','吉林省松原市宁江区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='松原市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220721','前郭尔罗斯蒙古族自治县','吉林省松原市前郭尔罗斯蒙古族自治县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='松原市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220722','长岭县','吉林省松原市长岭县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='松原市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220723','乾安县','吉林省松原市乾安县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='松原市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220781','扶余市','吉林省松原市扶余市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='松原市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220800','白城市','吉林省白城市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='吉林省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220801','市辖区','吉林省白城市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='白城市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220802','洮北区','吉林省白城市洮北区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='白城市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220821','镇赉县','吉林省白城市镇赉县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='白城市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220822','通榆县','吉林省白城市通榆县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='白城市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220881','洮南市','吉林省白城市洮南市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='白城市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '220882','大安市','吉林省白城市大安市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='白城市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '222400','延边朝鲜族自治州','吉林省延边朝鲜族自治州',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='吉林省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '222401','延吉市','吉林省延边朝鲜族自治州延吉市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='延边朝鲜族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '222402','图们市','吉林省延边朝鲜族自治州图们市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='延边朝鲜族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '222403','敦化市','吉林省延边朝鲜族自治州敦化市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='延边朝鲜族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '222404','珲春市','吉林省延边朝鲜族自治州珲春市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='延边朝鲜族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '222405','龙井市','吉林省延边朝鲜族自治州龙井市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='延边朝鲜族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '222406','和龙市','吉林省延边朝鲜族自治州和龙市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='延边朝鲜族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '222424','汪清县','吉林省延边朝鲜族自治州汪清县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='延边朝鲜族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '222426','安图县','吉林省延边朝鲜族自治州安图县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='延边朝鲜族自治州'));
#-----黑龙江省#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230000','黑龙江省','黑龙江省',1,NULL);

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230100','哈尔滨市','黑龙江省哈尔滨市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='黑龙江省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230101','市辖区','黑龙江省哈尔滨市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='哈尔滨市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230102','道里区','黑龙江省哈尔滨市道里区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='哈尔滨市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230103','南岗区','黑龙江省哈尔滨市南岗区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='哈尔滨市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230104','道外区','黑龙江省哈尔滨市道外区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='哈尔滨市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230108','平房区','黑龙江省哈尔滨市平房区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='哈尔滨市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230109','松北区','黑龙江省哈尔滨市松北区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='哈尔滨市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230110','香坊区','黑龙江省哈尔滨市香坊区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='哈尔滨市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230111','呼兰区','黑龙江省哈尔滨市呼兰区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='哈尔滨市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230112','阿城区','黑龙江省哈尔滨市阿城区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='哈尔滨市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230113','双城区','黑龙江省哈尔滨市双城区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='哈尔滨市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230123','依兰县','黑龙江省哈尔滨市依兰县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='哈尔滨市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230124','方正县','黑龙江省哈尔滨市方正县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='哈尔滨市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230125','宾县','黑龙江省哈尔滨市宾县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='哈尔滨市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230126','巴彦县','黑龙江省哈尔滨市巴彦县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='哈尔滨市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230127','木兰县','黑龙江省哈尔滨市木兰县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='哈尔滨市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230128','通河县','黑龙江省哈尔滨市通河县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='哈尔滨市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230129','延寿县','黑龙江省哈尔滨市延寿县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='哈尔滨市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230183','尚志市','黑龙江省哈尔滨市尚志市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='哈尔滨市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230184','五常市','黑龙江省哈尔滨市五常市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='哈尔滨市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230200','齐齐哈尔市','黑龙江省齐齐哈尔市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='黑龙江省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230201','市辖区','黑龙江省齐齐哈尔市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='齐齐哈尔市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230202','龙沙区','黑龙江省齐齐哈尔市龙沙区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='齐齐哈尔市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230203','建华区','黑龙江省齐齐哈尔市建华区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='齐齐哈尔市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230204','铁锋区','黑龙江省齐齐哈尔市铁锋区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='齐齐哈尔市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230205','昂昂溪区','黑龙江省齐齐哈尔市昂昂溪区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='齐齐哈尔市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230206','富拉尔基区','黑龙江省齐齐哈尔市富拉尔基区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='齐齐哈尔市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230207','碾子山区','黑龙江省齐齐哈尔市碾子山区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='齐齐哈尔市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230208','梅里斯达斡尔族区','黑龙江省齐齐哈尔市梅里斯达斡尔族区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='齐齐哈尔市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230221','龙江县','黑龙江省齐齐哈尔市龙江县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='齐齐哈尔市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230223','依安县','黑龙江省齐齐哈尔市依安县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='齐齐哈尔市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230224','泰来县','黑龙江省齐齐哈尔市泰来县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='齐齐哈尔市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230225','甘南县','黑龙江省齐齐哈尔市甘南县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='齐齐哈尔市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230227','富裕县','黑龙江省齐齐哈尔市富裕县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='齐齐哈尔市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230229','克山县','黑龙江省齐齐哈尔市克山县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='齐齐哈尔市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230230','克东县','黑龙江省齐齐哈尔市克东县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='齐齐哈尔市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230231','拜泉县','黑龙江省齐齐哈尔市拜泉县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='齐齐哈尔市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230281','讷河市','黑龙江省齐齐哈尔市讷河市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='齐齐哈尔市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230300','鸡西市','黑龙江省鸡西市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='黑龙江省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230301','市辖区','黑龙江省鸡西市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='鸡西市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230302','鸡冠区','黑龙江省鸡西市鸡冠区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='鸡西市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230303','恒山区','黑龙江省鸡西市恒山区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='鸡西市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230304','滴道区','黑龙江省鸡西市滴道区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='鸡西市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230305','梨树区','黑龙江省鸡西市梨树区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='鸡西市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230306','城子河区','黑龙江省鸡西市城子河区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='鸡西市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230307','麻山区','黑龙江省鸡西市麻山区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='鸡西市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230321','鸡东县','黑龙江省鸡西市鸡东县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='鸡西市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230381','虎林市','黑龙江省鸡西市虎林市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='鸡西市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230382','密山市','黑龙江省鸡西市密山市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='鸡西市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230400','鹤岗市','黑龙江省鹤岗市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='黑龙江省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230401','市辖区','黑龙江省鹤岗市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='鹤岗市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230402','向阳区','黑龙江省鹤岗市向阳区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='鹤岗市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230403','工农区','黑龙江省鹤岗市工农区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='鹤岗市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230404','南山区','黑龙江省鹤岗市南山区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='鹤岗市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230405','兴安区','黑龙江省鹤岗市兴安区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='鹤岗市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230406','东山区','黑龙江省鹤岗市东山区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='鹤岗市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230407','兴山区','黑龙江省鹤岗市兴山区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='鹤岗市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230421','萝北县','黑龙江省鹤岗市萝北县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='鹤岗市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230422','绥滨县','黑龙江省鹤岗市绥滨县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='鹤岗市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230500','双鸭山市','黑龙江省双鸭山市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='黑龙江省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230501','市辖区','黑龙江省双鸭山市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='双鸭山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230502','尖山区','黑龙江省双鸭山市尖山区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='双鸭山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230503','岭东区','黑龙江省双鸭山市岭东区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='双鸭山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230505','四方台区','黑龙江省双鸭山市四方台区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='双鸭山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230506','宝山区','黑龙江省双鸭山市宝山区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='双鸭山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230521','集贤县','黑龙江省双鸭山市集贤县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='双鸭山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230522','友谊县','黑龙江省双鸭山市友谊县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='双鸭山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230523','宝清县','黑龙江省双鸭山市宝清县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='双鸭山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230524','饶河县','黑龙江省双鸭山市饶河县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='双鸭山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230600','大庆市','黑龙江省大庆市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='黑龙江省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230601','市辖区','黑龙江省大庆市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='大庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230602','萨尔图区','黑龙江省大庆市萨尔图区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='大庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230603','龙凤区','黑龙江省大庆市龙凤区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='大庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230604','让胡路区','黑龙江省大庆市让胡路区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='大庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230605','红岗区','黑龙江省大庆市红岗区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='大庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230606','大同区','黑龙江省大庆市大同区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='大庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230621','肇州县','黑龙江省大庆市肇州县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='大庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230622','肇源县','黑龙江省大庆市肇源县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='大庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230623','林甸县','黑龙江省大庆市林甸县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='大庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230624','杜尔伯特蒙古族自治县','黑龙江省大庆市杜尔伯特蒙古族自治县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='大庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230700','伊春市','黑龙江省伊春市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='黑龙江省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230701','市辖区','黑龙江省伊春市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='伊春市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230702','伊春区','黑龙江省伊春市伊春区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='伊春市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230703','南岔区','黑龙江省伊春市南岔区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='伊春市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230704','友好区','黑龙江省伊春市友好区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='伊春市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230705','西林区','黑龙江省伊春市西林区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='伊春市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230706','翠峦区','黑龙江省伊春市翠峦区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='伊春市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230707','新青区','黑龙江省伊春市新青区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='伊春市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230708','美溪区','黑龙江省伊春市美溪区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='伊春市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230709','金山屯区','黑龙江省伊春市金山屯区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='伊春市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230710','五营区','黑龙江省伊春市五营区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='伊春市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230711','乌马河区','黑龙江省伊春市乌马河区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='伊春市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230712','汤旺河区','黑龙江省伊春市汤旺河区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='伊春市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230713','带岭区','黑龙江省伊春市带岭区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='伊春市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230714','乌伊岭区','黑龙江省伊春市乌伊岭区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='伊春市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230715','红星区','黑龙江省伊春市红星区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='伊春市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230716','上甘岭区','黑龙江省伊春市上甘岭区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='伊春市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230722','嘉荫县','黑龙江省伊春市嘉荫县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='伊春市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230781','铁力市','黑龙江省伊春市铁力市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='伊春市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230800','佳木斯市','黑龙江省佳木斯市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='黑龙江省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230801','市辖区','黑龙江省佳木斯市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='佳木斯市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230803','向阳区','黑龙江省佳木斯市向阳区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='佳木斯市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230804','前进区','黑龙江省佳木斯市前进区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='佳木斯市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230805','东风区','黑龙江省佳木斯市东风区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='佳木斯市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230811','郊区','黑龙江省佳木斯市郊区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='佳木斯市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230822','桦南县','黑龙江省佳木斯市桦南县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='佳木斯市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230826','桦川县','黑龙江省佳木斯市桦川县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='佳木斯市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230828','汤原县','黑龙江省佳木斯市汤原县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='佳木斯市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230881','同江市','黑龙江省佳木斯市同江市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='佳木斯市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230882','富锦市','黑龙江省佳木斯市富锦市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='佳木斯市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230883','抚远市','黑龙江省佳木斯市抚远市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='佳木斯市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230900','七台河市','黑龙江省七台河市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='黑龙江省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230901','市辖区','黑龙江省七台河市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='七台河市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230902','新兴区','黑龙江省七台河市新兴区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='七台河市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230903','桃山区','黑龙江省七台河市桃山区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='七台河市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230904','茄子河区','黑龙江省七台河市茄子河区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='七台河市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '230921','勃利县','黑龙江省七台河市勃利县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='七台河市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '231000','牡丹江市','黑龙江省牡丹江市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='黑龙江省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '231001','市辖区','黑龙江省牡丹江市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='牡丹江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '231002','东安区','黑龙江省牡丹江市东安区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='牡丹江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '231003','阳明区','黑龙江省牡丹江市阳明区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='牡丹江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '231004','爱民区','黑龙江省牡丹江市爱民区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='牡丹江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '231005','西安区','黑龙江省牡丹江市西安区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='牡丹江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '231025','林口县','黑龙江省牡丹江市林口县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='牡丹江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '231081','绥芬河市','黑龙江省牡丹江市绥芬河市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='牡丹江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '231083','海林市','黑龙江省牡丹江市海林市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='牡丹江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '231084','宁安市','黑龙江省牡丹江市宁安市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='牡丹江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '231085','穆棱市','黑龙江省牡丹江市穆棱市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='牡丹江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '231086','东宁市','黑龙江省牡丹江市东宁市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='牡丹江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '231100','黑河市','黑龙江省黑河市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='黑龙江省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '231101','市辖区','黑龙江省黑河市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黑河市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '231102','爱辉区','黑龙江省黑河市爱辉区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黑河市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '231121','嫩江县','黑龙江省黑河市嫩江县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黑河市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '231123','逊克县','黑龙江省黑河市逊克县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黑河市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '231124','孙吴县','黑龙江省黑河市孙吴县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黑河市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '231181','北安市','黑龙江省黑河市北安市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黑河市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '231182','五大连池市','黑龙江省黑河市五大连池市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黑河市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '231200','绥化市','黑龙江省绥化市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='黑龙江省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '231201','市辖区','黑龙江省绥化市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='绥化市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '231202','北林区','黑龙江省绥化市北林区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='绥化市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '231221','望奎县','黑龙江省绥化市望奎县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='绥化市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '231222','兰西县','黑龙江省绥化市兰西县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='绥化市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '231223','青冈县','黑龙江省绥化市青冈县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='绥化市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '231224','庆安县','黑龙江省绥化市庆安县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='绥化市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '231225','明水县','黑龙江省绥化市明水县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='绥化市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '231226','绥棱县','黑龙江省绥化市绥棱县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='绥化市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '231281','安达市','黑龙江省绥化市安达市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='绥化市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '231282','肇东市','黑龙江省绥化市肇东市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='绥化市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '231283','海伦市','黑龙江省绥化市海伦市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='绥化市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '232700','大兴安岭地区','黑龙江省大兴安岭地区',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='黑龙江省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '232721','呼玛县','黑龙江省大兴安岭地区呼玛县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='大兴安岭地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '232722','塔河县','黑龙江省大兴安岭地区塔河县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='大兴安岭地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '232723','漠河县','黑龙江省大兴安岭地区漠河县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='大兴安岭地区'));
#-----江苏省#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320000','江苏省','江苏省',1,NULL);

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320100','南京市','江苏省南京市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='江苏省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320101','市辖区','江苏省南京市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南京市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320102','玄武区','江苏省南京市玄武区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南京市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320104','秦淮区','江苏省南京市秦淮区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南京市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320105','建邺区','江苏省南京市建邺区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南京市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320106','鼓楼区','江苏省南京市鼓楼区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南京市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320111','浦口区','江苏省南京市浦口区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南京市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320113','栖霞区','江苏省南京市栖霞区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南京市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320114','雨花台区','江苏省南京市雨花台区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南京市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320115','江宁区','江苏省南京市江宁区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南京市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320116','六合区','江苏省南京市六合区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南京市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320117','溧水区','江苏省南京市溧水区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南京市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320118','高淳区','江苏省南京市高淳区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南京市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320200','无锡市','江苏省无锡市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='江苏省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320201','市辖区','江苏省无锡市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='无锡市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320205','锡山区','江苏省无锡市锡山区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='无锡市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320206','惠山区','江苏省无锡市惠山区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='无锡市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320211','滨湖区','江苏省无锡市滨湖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='无锡市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320213','梁溪区','江苏省无锡市梁溪区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='无锡市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320214','新吴区','江苏省无锡市新吴区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='无锡市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320281','江阴市','江苏省无锡市江阴市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='无锡市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320282','宜兴市','江苏省无锡市宜兴市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='无锡市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320300','徐州市','江苏省徐州市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='江苏省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320301','市辖区','江苏省徐州市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='徐州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320302','鼓楼区','江苏省徐州市鼓楼区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='徐州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320303','云龙区','江苏省徐州市云龙区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='徐州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320305','贾汪区','江苏省徐州市贾汪区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='徐州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320311','泉山区','江苏省徐州市泉山区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='徐州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320312','铜山区','江苏省徐州市铜山区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='徐州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320321','丰县','江苏省徐州市丰县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='徐州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320322','沛县','江苏省徐州市沛县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='徐州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320324','睢宁县','江苏省徐州市睢宁县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='徐州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320381','新沂市','江苏省徐州市新沂市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='徐州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320382','邳州市','江苏省徐州市邳州市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='徐州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320400','常州市','江苏省常州市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='江苏省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320401','市辖区','江苏省常州市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='常州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320402','天宁区','江苏省常州市天宁区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='常州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320404','钟楼区','江苏省常州市钟楼区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='常州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320411','新北区','江苏省常州市新北区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='常州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320412','武进区','江苏省常州市武进区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='常州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320413','金坛区','江苏省常州市金坛区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='常州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320481','溧阳市','江苏省常州市溧阳市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='常州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320500','苏州市','江苏省苏州市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='江苏省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320501','市辖区','江苏省苏州市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='苏州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320505','虎丘区','江苏省苏州市虎丘区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='苏州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320506','吴中区','江苏省苏州市吴中区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='苏州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320507','相城区','江苏省苏州市相城区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='苏州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320508','姑苏区','江苏省苏州市姑苏区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='苏州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320509','吴江区','江苏省苏州市吴江区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='苏州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320581','常熟市','江苏省苏州市常熟市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='苏州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320582','张家港市','江苏省苏州市张家港市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='苏州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320583','昆山市','江苏省苏州市昆山市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='苏州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320585','太仓市','江苏省苏州市太仓市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='苏州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320600','南通市','江苏省南通市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='江苏省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320601','市辖区','江苏省南通市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南通市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320602','崇川区','江苏省南通市崇川区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南通市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320611','港闸区','江苏省南通市港闸区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南通市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320612','通州区','江苏省南通市通州区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南通市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320621','海安县','江苏省南通市海安县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南通市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320623','如东县','江苏省南通市如东县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南通市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320681','启东市','江苏省南通市启东市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南通市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320682','如皋市','江苏省南通市如皋市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南通市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320684','海门市','江苏省南通市海门市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南通市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320700','连云港市','江苏省连云港市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='江苏省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320701','市辖区','江苏省连云港市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='连云港市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320703','连云区','江苏省连云港市连云区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='连云港市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320706','海州区','江苏省连云港市海州区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='连云港市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320707','赣榆区','江苏省连云港市赣榆区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='连云港市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320722','东海县','江苏省连云港市东海县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='连云港市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320723','灌云县','江苏省连云港市灌云县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='连云港市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320724','灌南县','江苏省连云港市灌南县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='连云港市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320800','淮安市','江苏省淮安市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='江苏省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320801','市辖区','江苏省淮安市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='淮安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320803','淮安区','江苏省淮安市淮安区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='淮安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320804','淮阴区','江苏省淮安市淮阴区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='淮安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320812','清江浦区','江苏省淮安市清江浦区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='淮安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320813','洪泽区','江苏省淮安市洪泽区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='淮安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320826','涟水县','江苏省淮安市涟水县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='淮安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320830','盱眙县','江苏省淮安市盱眙县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='淮安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320831','金湖县','江苏省淮安市金湖县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='淮安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320900','盐城市','江苏省盐城市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='江苏省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320901','市辖区','江苏省盐城市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='盐城市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320902','亭湖区','江苏省盐城市亭湖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='盐城市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320903','盐都区','江苏省盐城市盐都区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='盐城市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320904','大丰区','江苏省盐城市大丰区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='盐城市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320921','响水县','江苏省盐城市响水县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='盐城市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320922','滨海县','江苏省盐城市滨海县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='盐城市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320923','阜宁县','江苏省盐城市阜宁县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='盐城市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320924','射阳县','江苏省盐城市射阳县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='盐城市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320925','建湖县','江苏省盐城市建湖县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='盐城市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '320981','东台市','江苏省盐城市东台市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='盐城市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '321000','扬州市','江苏省扬州市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='江苏省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '321001','市辖区','江苏省扬州市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='扬州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '321002','广陵区','江苏省扬州市广陵区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='扬州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '321003','邗江区','江苏省扬州市邗江区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='扬州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '321012','江都区','江苏省扬州市江都区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='扬州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '321023','宝应县','江苏省扬州市宝应县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='扬州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '321081','仪征市','江苏省扬州市仪征市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='扬州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '321084','高邮市','江苏省扬州市高邮市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='扬州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '321100','镇江市','江苏省镇江市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='江苏省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '321101','市辖区','江苏省镇江市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='镇江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '321102','京口区','江苏省镇江市京口区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='镇江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '321111','润州区','江苏省镇江市润州区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='镇江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '321112','丹徒区','江苏省镇江市丹徒区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='镇江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '321181','丹阳市','江苏省镇江市丹阳市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='镇江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '321182','扬中市','江苏省镇江市扬中市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='镇江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '321183','句容市','江苏省镇江市句容市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='镇江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '321200','泰州市','江苏省泰州市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='江苏省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '321201','市辖区','江苏省泰州市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='泰州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '321202','海陵区','江苏省泰州市海陵区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='泰州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '321203','高港区','江苏省泰州市高港区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='泰州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '321204','姜堰区','江苏省泰州市姜堰区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='泰州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '321281','兴化市','江苏省泰州市兴化市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='泰州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '321282','靖江市','江苏省泰州市靖江市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='泰州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '321283','泰兴市','江苏省泰州市泰兴市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='泰州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '321300','宿迁市','江苏省宿迁市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='江苏省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '321301','市辖区','江苏省宿迁市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宿迁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '321302','宿城区','江苏省宿迁市宿城区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宿迁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '321311','宿豫区','江苏省宿迁市宿豫区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宿迁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '321322','沭阳县','江苏省宿迁市沭阳县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宿迁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '321323','泗阳县','江苏省宿迁市泗阳县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宿迁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '321324','泗洪县','江苏省宿迁市泗洪县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宿迁市'));
#-----浙江省#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330000','浙江省','浙江省',1,NULL);

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330100','杭州市','浙江省杭州市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='浙江省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330101','市辖区','浙江省杭州市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='杭州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330102','上城区','浙江省杭州市上城区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='杭州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330103','下城区','浙江省杭州市下城区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='杭州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330104','江干区','浙江省杭州市江干区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='杭州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330105','拱墅区','浙江省杭州市拱墅区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='杭州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330106','西湖区','浙江省杭州市西湖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='杭州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330108','滨江区','浙江省杭州市滨江区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='杭州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330109','萧山区','浙江省杭州市萧山区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='杭州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330110','余杭区','浙江省杭州市余杭区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='杭州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330111','富阳区','浙江省杭州市富阳区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='杭州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330122','桐庐县','浙江省杭州市桐庐县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='杭州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330127','淳安县','浙江省杭州市淳安县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='杭州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330182','建德市','浙江省杭州市建德市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='杭州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330185','临安市','浙江省杭州市临安市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='杭州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330200','宁波市','浙江省宁波市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='浙江省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330201','市辖区','浙江省宁波市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宁波市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330203','海曙区','浙江省宁波市海曙区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宁波市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330204','江东区','浙江省宁波市江东区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宁波市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330205','江北区','浙江省宁波市江北区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宁波市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330206','北仑区','浙江省宁波市北仑区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宁波市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330211','镇海区','浙江省宁波市镇海区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宁波市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330212','鄞州区','浙江省宁波市鄞州区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宁波市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330225','象山县','浙江省宁波市象山县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宁波市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330226','宁海县','浙江省宁波市宁海县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宁波市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330281','余姚市','浙江省宁波市余姚市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宁波市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330282','慈溪市','浙江省宁波市慈溪市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宁波市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330283','奉化市','浙江省宁波市奉化市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宁波市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330300','温州市','浙江省温州市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='浙江省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330301','市辖区','浙江省温州市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='温州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330302','鹿城区','浙江省温州市鹿城区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='温州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330303','龙湾区','浙江省温州市龙湾区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='温州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330304','瓯海区','浙江省温州市瓯海区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='温州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330305','洞头区','浙江省温州市洞头区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='温州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330324','永嘉县','浙江省温州市永嘉县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='温州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330326','平阳县','浙江省温州市平阳县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='温州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330327','苍南县','浙江省温州市苍南县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='温州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330328','文成县','浙江省温州市文成县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='温州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330329','泰顺县','浙江省温州市泰顺县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='温州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330381','瑞安市','浙江省温州市瑞安市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='温州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330382','乐清市','浙江省温州市乐清市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='温州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330400','嘉兴市','浙江省嘉兴市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='浙江省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330401','市辖区','浙江省嘉兴市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='嘉兴市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330402','南湖区','浙江省嘉兴市南湖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='嘉兴市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330411','秀洲区','浙江省嘉兴市秀洲区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='嘉兴市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330421','嘉善县','浙江省嘉兴市嘉善县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='嘉兴市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330424','海盐县','浙江省嘉兴市海盐县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='嘉兴市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330481','海宁市','浙江省嘉兴市海宁市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='嘉兴市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330482','平湖市','浙江省嘉兴市平湖市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='嘉兴市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330483','桐乡市','浙江省嘉兴市桐乡市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='嘉兴市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330500','湖州市','浙江省湖州市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='浙江省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330501','市辖区','浙江省湖州市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='湖州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330502','吴兴区','浙江省湖州市吴兴区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='湖州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330503','南浔区','浙江省湖州市南浔区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='湖州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330521','德清县','浙江省湖州市德清县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='湖州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330522','长兴县','浙江省湖州市长兴县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='湖州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330523','安吉县','浙江省湖州市安吉县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='湖州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330600','绍兴市','浙江省绍兴市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='浙江省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330601','市辖区','浙江省绍兴市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='绍兴市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330602','越城区','浙江省绍兴市越城区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='绍兴市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330603','柯桥区','浙江省绍兴市柯桥区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='绍兴市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330604','上虞区','浙江省绍兴市上虞区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='绍兴市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330624','新昌县','浙江省绍兴市新昌县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='绍兴市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330681','诸暨市','浙江省绍兴市诸暨市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='绍兴市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330683','嵊州市','浙江省绍兴市嵊州市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='绍兴市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330700','金华市','浙江省金华市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='浙江省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330701','市辖区','浙江省金华市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='金华市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330702','婺城区','浙江省金华市婺城区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='金华市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330703','金东区','浙江省金华市金东区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='金华市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330723','武义县','浙江省金华市武义县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='金华市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330726','浦江县','浙江省金华市浦江县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='金华市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330727','磐安县','浙江省金华市磐安县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='金华市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330781','兰溪市','浙江省金华市兰溪市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='金华市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330782','义乌市','浙江省金华市义乌市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='金华市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330783','东阳市','浙江省金华市东阳市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='金华市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330784','永康市','浙江省金华市永康市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='金华市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330800','衢州市','浙江省衢州市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='浙江省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330801','市辖区','浙江省衢州市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='衢州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330802','柯城区','浙江省衢州市柯城区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='衢州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330803','衢江区','浙江省衢州市衢江区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='衢州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330822','常山县','浙江省衢州市常山县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='衢州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330824','开化县','浙江省衢州市开化县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='衢州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330825','龙游县','浙江省衢州市龙游县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='衢州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330881','江山市','浙江省衢州市江山市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='衢州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330900','舟山市','浙江省舟山市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='浙江省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330901','市辖区','浙江省舟山市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='舟山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330902','定海区','浙江省舟山市定海区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='舟山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330903','普陀区','浙江省舟山市普陀区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='舟山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330921','岱山县','浙江省舟山市岱山县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='舟山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '330922','嵊泗县','浙江省舟山市嵊泗县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='舟山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '331000','台州市','浙江省台州市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='浙江省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '331001','市辖区','浙江省台州市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='台州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '331002','椒江区','浙江省台州市椒江区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='台州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '331003','黄岩区','浙江省台州市黄岩区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='台州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '331004','路桥区','浙江省台州市路桥区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='台州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '331021','玉环县','浙江省台州市玉环县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='台州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '331022','三门县','浙江省台州市三门县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='台州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '331023','天台县','浙江省台州市天台县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='台州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '331024','仙居县','浙江省台州市仙居县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='台州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '331081','温岭市','浙江省台州市温岭市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='台州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '331082','临海市','浙江省台州市临海市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='台州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '331100','丽水市','浙江省丽水市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='浙江省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '331101','市辖区','浙江省丽水市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='丽水市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '331102','莲都区','浙江省丽水市莲都区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='丽水市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '331121','青田县','浙江省丽水市青田县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='丽水市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '331122','缙云县','浙江省丽水市缙云县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='丽水市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '331123','遂昌县','浙江省丽水市遂昌县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='丽水市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '331124','松阳县','浙江省丽水市松阳县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='丽水市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '331125','云和县','浙江省丽水市云和县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='丽水市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '331126','庆元县','浙江省丽水市庆元县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='丽水市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '331127','景宁畲族自治县','浙江省丽水市景宁畲族自治县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='丽水市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '331181','龙泉市','浙江省丽水市龙泉市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='丽水市'));
#-----安徽省#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340000','安徽省','安徽省',1,NULL);

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340100','合肥市','安徽省合肥市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='安徽省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340101','市辖区','安徽省合肥市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='合肥市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340102','瑶海区','安徽省合肥市瑶海区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='合肥市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340103','庐阳区','安徽省合肥市庐阳区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='合肥市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340104','蜀山区','安徽省合肥市蜀山区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='合肥市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340111','包河区','安徽省合肥市包河区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='合肥市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340121','长丰县','安徽省合肥市长丰县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='合肥市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340122','肥东县','安徽省合肥市肥东县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='合肥市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340123','肥西县','安徽省合肥市肥西县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='合肥市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340124','庐江县','安徽省合肥市庐江县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='合肥市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340181','巢湖市','安徽省合肥市巢湖市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='合肥市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340200','芜湖市','安徽省芜湖市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='安徽省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340201','市辖区','安徽省芜湖市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='芜湖市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340202','镜湖区','安徽省芜湖市镜湖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='芜湖市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340203','弋江区','安徽省芜湖市弋江区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='芜湖市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340207','鸠江区','安徽省芜湖市鸠江区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='芜湖市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340208','三山区','安徽省芜湖市三山区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='芜湖市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340221','芜湖县','安徽省芜湖市芜湖县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='芜湖市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340222','繁昌县','安徽省芜湖市繁昌县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='芜湖市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340223','南陵县','安徽省芜湖市南陵县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='芜湖市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340225','无为县','安徽省芜湖市无为县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='芜湖市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340300','蚌埠市','安徽省蚌埠市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='安徽省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340301','市辖区','安徽省蚌埠市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='蚌埠市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340302','龙子湖区','安徽省蚌埠市龙子湖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='蚌埠市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340303','蚌山区','安徽省蚌埠市蚌山区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='蚌埠市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340304','禹会区','安徽省蚌埠市禹会区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='蚌埠市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340311','淮上区','安徽省蚌埠市淮上区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='蚌埠市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340321','怀远县','安徽省蚌埠市怀远县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='蚌埠市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340322','五河县','安徽省蚌埠市五河县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='蚌埠市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340323','固镇县','安徽省蚌埠市固镇县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='蚌埠市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340400','淮南市','安徽省淮南市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='安徽省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340401','市辖区','安徽省淮南市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='淮南市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340402','大通区','安徽省淮南市大通区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='淮南市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340403','田家庵区','安徽省淮南市田家庵区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='淮南市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340404','谢家集区','安徽省淮南市谢家集区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='淮南市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340405','八公山区','安徽省淮南市八公山区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='淮南市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340406','潘集区','安徽省淮南市潘集区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='淮南市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340421','凤台县','安徽省淮南市凤台县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='淮南市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340422','寿县','安徽省淮南市寿县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='淮南市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340500','马鞍山市','安徽省马鞍山市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='安徽省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340501','市辖区','安徽省马鞍山市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='马鞍山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340503','花山区','安徽省马鞍山市花山区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='马鞍山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340504','雨山区','安徽省马鞍山市雨山区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='马鞍山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340506','博望区','安徽省马鞍山市博望区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='马鞍山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340521','当涂县','安徽省马鞍山市当涂县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='马鞍山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340522','含山县','安徽省马鞍山市含山县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='马鞍山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340523','和县','安徽省马鞍山市和县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='马鞍山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340600','淮北市','安徽省淮北市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='安徽省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340601','市辖区','安徽省淮北市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='淮北市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340602','杜集区','安徽省淮北市杜集区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='淮北市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340603','相山区','安徽省淮北市相山区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='淮北市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340604','烈山区','安徽省淮北市烈山区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='淮北市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340621','濉溪县','安徽省淮北市濉溪县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='淮北市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340700','铜陵市','安徽省铜陵市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='安徽省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340701','市辖区','安徽省铜陵市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='铜陵市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340705','铜官区','安徽省铜陵市铜官区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='铜陵市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340706','义安区','安徽省铜陵市义安区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='铜陵市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340711','郊区','安徽省铜陵市郊区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='铜陵市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340722','枞阳县','安徽省铜陵市枞阳县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='铜陵市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340800','安庆市','安徽省安庆市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='安徽省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340801','市辖区','安徽省安庆市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='安庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340802','迎江区','安徽省安庆市迎江区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='安庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340803','大观区','安徽省安庆市大观区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='安庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340811','宜秀区','安徽省安庆市宜秀区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='安庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340822','怀宁县','安徽省安庆市怀宁县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='安庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340824','潜山县','安徽省安庆市潜山县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='安庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340825','太湖县','安徽省安庆市太湖县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='安庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340826','宿松县','安徽省安庆市宿松县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='安庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340827','望江县','安徽省安庆市望江县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='安庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340828','岳西县','安徽省安庆市岳西县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='安庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '340881','桐城市','安徽省安庆市桐城市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='安庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341000','黄山市','安徽省黄山市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='安徽省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341001','市辖区','安徽省黄山市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黄山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341002','屯溪区','安徽省黄山市屯溪区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黄山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341003','黄山区','安徽省黄山市黄山区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黄山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341004','徽州区','安徽省黄山市徽州区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黄山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341021','歙县','安徽省黄山市歙县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黄山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341022','休宁县','安徽省黄山市休宁县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黄山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341023','黟县','安徽省黄山市黟县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黄山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341024','祁门县','安徽省黄山市祁门县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黄山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341100','滁州市','安徽省滁州市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='安徽省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341101','市辖区','安徽省滁州市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='滁州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341102','琅琊区','安徽省滁州市琅琊区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='滁州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341103','南谯区','安徽省滁州市南谯区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='滁州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341122','来安县','安徽省滁州市来安县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='滁州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341124','全椒县','安徽省滁州市全椒县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='滁州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341125','定远县','安徽省滁州市定远县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='滁州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341126','凤阳县','安徽省滁州市凤阳县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='滁州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341181','天长市','安徽省滁州市天长市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='滁州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341182','明光市','安徽省滁州市明光市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='滁州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341200','阜阳市','安徽省阜阳市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='安徽省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341201','市辖区','安徽省阜阳市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阜阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341202','颍州区','安徽省阜阳市颍州区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阜阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341203','颍东区','安徽省阜阳市颍东区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阜阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341204','颍泉区','安徽省阜阳市颍泉区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阜阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341221','临泉县','安徽省阜阳市临泉县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阜阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341222','太和县','安徽省阜阳市太和县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阜阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341225','阜南县','安徽省阜阳市阜南县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阜阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341226','颍上县','安徽省阜阳市颍上县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阜阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341282','界首市','安徽省阜阳市界首市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阜阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341300','宿州市','安徽省宿州市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='安徽省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341301','市辖区','安徽省宿州市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宿州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341302','埇桥区','安徽省宿州市埇桥区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宿州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341321','砀山县','安徽省宿州市砀山县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宿州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341322','萧县','安徽省宿州市萧县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宿州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341323','灵璧县','安徽省宿州市灵璧县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宿州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341324','泗县','安徽省宿州市泗县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宿州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341500','六安市','安徽省六安市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='安徽省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341501','市辖区','安徽省六安市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='六安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341502','金安区','安徽省六安市金安区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='六安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341503','裕安区','安徽省六安市裕安区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='六安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341504','叶集区','安徽省六安市叶集区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='六安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341522','霍邱县','安徽省六安市霍邱县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='六安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341523','舒城县','安徽省六安市舒城县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='六安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341524','金寨县','安徽省六安市金寨县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='六安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341525','霍山县','安徽省六安市霍山县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='六安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341600','亳州市','安徽省亳州市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='安徽省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341601','市辖区','安徽省亳州市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='亳州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341602','谯城区','安徽省亳州市谯城区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='亳州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341621','涡阳县','安徽省亳州市涡阳县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='亳州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341622','蒙城县','安徽省亳州市蒙城县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='亳州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341623','利辛县','安徽省亳州市利辛县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='亳州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341700','池州市','安徽省池州市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='安徽省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341701','市辖区','安徽省池州市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='池州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341702','贵池区','安徽省池州市贵池区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='池州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341721','东至县','安徽省池州市东至县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='池州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341722','石台县','安徽省池州市石台县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='池州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341723','青阳县','安徽省池州市青阳县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='池州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341800','宣城市','安徽省宣城市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='安徽省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341801','市辖区','安徽省宣城市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宣城市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341802','宣州区','安徽省宣城市宣州区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宣城市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341821','郎溪县','安徽省宣城市郎溪县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宣城市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341822','广德县','安徽省宣城市广德县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宣城市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341823','泾县','安徽省宣城市泾县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宣城市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341824','绩溪县','安徽省宣城市绩溪县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宣城市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341825','旌德县','安徽省宣城市旌德县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宣城市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '341881','宁国市','安徽省宣城市宁国市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宣城市'));
#-----福建省#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350000','福建省','福建省',1,NULL);

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350100','福州市','福建省福州市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='福建省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350101','市辖区','福建省福州市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='福州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350102','鼓楼区','福建省福州市鼓楼区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='福州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350103','台江区','福建省福州市台江区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='福州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350104','仓山区','福建省福州市仓山区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='福州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350105','马尾区','福建省福州市马尾区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='福州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350111','晋安区','福建省福州市晋安区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='福州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350121','闽侯县','福建省福州市闽侯县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='福州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350122','连江县','福建省福州市连江县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='福州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350123','罗源县','福建省福州市罗源县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='福州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350124','闽清县','福建省福州市闽清县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='福州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350125','永泰县','福建省福州市永泰县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='福州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350128','平潭县','福建省福州市平潭县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='福州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350181','福清市','福建省福州市福清市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='福州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350182','长乐市','福建省福州市长乐市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='福州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350200','厦门市','福建省厦门市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='福建省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350201','市辖区','福建省厦门市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='厦门市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350203','思明区','福建省厦门市思明区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='厦门市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350205','海沧区','福建省厦门市海沧区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='厦门市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350206','湖里区','福建省厦门市湖里区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='厦门市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350211','集美区','福建省厦门市集美区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='厦门市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350212','同安区','福建省厦门市同安区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='厦门市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350213','翔安区','福建省厦门市翔安区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='厦门市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350300','莆田市','福建省莆田市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='福建省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350301','市辖区','福建省厦门市翔安区市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='翔安区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350302','城厢区','福建省厦门市翔安区城厢区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='翔安区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350303','涵江区','福建省厦门市翔安区涵江区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='翔安区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350304','荔城区','福建省厦门市翔安区荔城区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='翔安区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350305','秀屿区','福建省厦门市翔安区秀屿区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='翔安区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350322','仙游县','福建省厦门市翔安区仙游县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='翔安区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350400','三明市','福建省三明市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='福建省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350401','市辖区','福建省三明市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='三明市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350402','梅列区','福建省三明市梅列区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='三明市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350403','三元区','福建省三明市三元区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='三明市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350421','明溪县','福建省三明市明溪县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='三明市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350423','清流县','福建省三明市清流县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='三明市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350424','宁化县','福建省三明市宁化县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='三明市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350425','大田县','福建省三明市大田县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='三明市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350426','尤溪县','福建省三明市尤溪县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='三明市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350427','沙县','福建省三明市沙县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='三明市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350428','将乐县','福建省三明市将乐县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='三明市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350429','泰宁县','福建省三明市泰宁县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='三明市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350430','建宁县','福建省三明市建宁县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='三明市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350481','永安市','福建省三明市永安市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='三明市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350500','泉州市','福建省泉州市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='福建省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350501','市辖区','福建省泉州市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='泉州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350502','鲤城区','福建省泉州市鲤城区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='泉州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350503','丰泽区','福建省泉州市丰泽区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='泉州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350504','洛江区','福建省泉州市洛江区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='泉州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350505','泉港区','福建省泉州市泉港区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='泉州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350521','惠安县','福建省泉州市惠安县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='泉州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350524','安溪县','福建省泉州市安溪县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='泉州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350525','永春县','福建省泉州市永春县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='泉州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350526','德化县','福建省泉州市德化县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='泉州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350527','金门县','福建省泉州市金门县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='泉州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350581','石狮市','福建省泉州市石狮市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='泉州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350582','晋江市','福建省泉州市晋江市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='泉州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350583','南安市','福建省泉州市南安市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='泉州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350600','漳州市','福建省漳州市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='福建省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350601','市辖区','福建省漳州市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='漳州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350602','芗城区','福建省漳州市芗城区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='漳州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350603','龙文区','福建省漳州市龙文区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='漳州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350622','云霄县','福建省漳州市云霄县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='漳州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350623','漳浦县','福建省漳州市漳浦县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='漳州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350624','诏安县','福建省漳州市诏安县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='漳州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350625','长泰县','福建省漳州市长泰县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='漳州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350626','东山县','福建省漳州市东山县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='漳州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350627','南靖县','福建省漳州市南靖县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='漳州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350628','平和县','福建省漳州市平和县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='漳州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350629','华安县','福建省漳州市华安县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='漳州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350681','龙海市','福建省漳州市龙海市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='漳州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350700','南平市','福建省南平市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='福建省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350701','市辖区','福建省南平市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南平市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350702','延平区','福建省南平市延平区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南平市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350703','建阳区','福建省南平市建阳区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南平市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350721','顺昌县','福建省南平市顺昌县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南平市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350722','浦城县','福建省南平市浦城县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南平市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350723','光泽县','福建省南平市光泽县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南平市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350724','松溪县','福建省南平市松溪县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南平市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350725','政和县','福建省南平市政和县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南平市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350781','邵武市','福建省南平市邵武市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南平市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350782','武夷山市','福建省南平市武夷山市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南平市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350783','建瓯市','福建省南平市建瓯市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南平市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350800','龙岩市','福建省龙岩市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='福建省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350801','市辖区','福建省龙岩市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='龙岩市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350802','新罗区','福建省龙岩市新罗区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='龙岩市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350803','永定区','福建省龙岩市永定区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='龙岩市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350821','长汀县','福建省龙岩市长汀县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='龙岩市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350823','上杭县','福建省龙岩市上杭县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='龙岩市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350824','武平县','福建省龙岩市武平县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='龙岩市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350825','连城县','福建省龙岩市连城县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='龙岩市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350881','漳平市','福建省龙岩市漳平市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='龙岩市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350900','宁德市','福建省宁德市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='福建省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350901','市辖区','福建省宁德市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宁德市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350902','蕉城区','福建省宁德市蕉城区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宁德市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350921','霞浦县','福建省宁德市霞浦县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宁德市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350922','古田县','福建省宁德市古田县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宁德市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350923','屏南县','福建省宁德市屏南县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宁德市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350924','寿宁县','福建省宁德市寿宁县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宁德市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350925','周宁县','福建省宁德市周宁县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宁德市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350926','柘荣县','福建省宁德市柘荣县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宁德市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350981','福安市','福建省宁德市福安市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宁德市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '350982','福鼎市','福建省宁德市福鼎市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宁德市'));
#-----江西省#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360000','江西省','江西省',1,NULL);

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360100','南昌市','江西省南昌市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='江西省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360101','市辖区','江西省南昌市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南昌市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360102','东湖区','江西省南昌市东湖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南昌市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360103','西湖区','江西省南昌市西湖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南昌市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360104','青云谱区','江西省南昌市青云谱区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南昌市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360105','湾里区','江西省南昌市湾里区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南昌市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360111','青山湖区','江西省南昌市青山湖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南昌市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360112','新建区','江西省南昌市新建区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南昌市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360121','南昌县','江西省南昌市南昌县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南昌市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360123','安义县','江西省南昌市安义县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南昌市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360124','进贤县','江西省南昌市进贤县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南昌市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360200','景德镇市','江西省景德镇市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='江西省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360201','市辖区','江西省景德镇市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='景德镇市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360202','昌江区','江西省景德镇市昌江区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='景德镇市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360203','珠山区','江西省景德镇市珠山区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='景德镇市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360222','浮梁县','江西省景德镇市浮梁县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='景德镇市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360281','乐平市','江西省景德镇市乐平市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='景德镇市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360300','萍乡市','江西省萍乡市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='江西省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360301','市辖区','江西省萍乡市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='萍乡市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360302','安源区','江西省萍乡市安源区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='萍乡市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360313','湘东区','江西省萍乡市湘东区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='萍乡市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360321','莲花县','江西省萍乡市莲花县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='萍乡市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360322','上栗县','江西省萍乡市上栗县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='萍乡市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360323','芦溪县','江西省萍乡市芦溪县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='萍乡市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360400','九江市','江西省九江市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='江西省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360401','市辖区','江西省九江市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='九江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360402','濂溪区','江西省九江市濂溪区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='九江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360403','浔阳区','江西省九江市浔阳区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='九江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360421','九江县','江西省九江市九江县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='九江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360423','武宁县','江西省九江市武宁县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='九江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360424','修水县','江西省九江市修水县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='九江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360425','永修县','江西省九江市永修县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='九江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360426','德安县','江西省九江市德安县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='九江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360428','都昌县','江西省九江市都昌县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='九江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360429','湖口县','江西省九江市湖口县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='九江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360430','彭泽县','江西省九江市彭泽县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='九江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360481','瑞昌市','江西省九江市瑞昌市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='九江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360482','共青城市','江西省九江市共青城市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='九江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360483','庐山市','江西省九江市庐山市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='九江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360500','新余市','江西省新余市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='江西省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360501','市辖区','江西省新余市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='新余市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360502','渝水区','江西省新余市渝水区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='新余市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360521','分宜县','江西省新余市分宜县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='新余市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360600','鹰潭市','江西省鹰潭市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='江西省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360601','市辖区','江西省鹰潭市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='鹰潭市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360602','月湖区','江西省鹰潭市月湖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='鹰潭市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360622','余江县','江西省鹰潭市余江县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='鹰潭市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360681','贵溪市','江西省鹰潭市贵溪市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='鹰潭市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360700','赣州市','江西省赣州市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='江西省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360701','市辖区','江西省赣州市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='赣州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360702','章贡区','江西省赣州市章贡区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='赣州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360703','南康区','江西省赣州市南康区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='赣州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360721','赣县','江西省赣州市赣县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='赣州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360722','信丰县','江西省赣州市信丰县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='赣州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360723','大余县','江西省赣州市大余县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='赣州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360724','上犹县','江西省赣州市上犹县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='赣州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360725','崇义县','江西省赣州市崇义县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='赣州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360726','安远县','江西省赣州市安远县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='赣州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360727','龙南县','江西省赣州市龙南县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='赣州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360728','定南县','江西省赣州市定南县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='赣州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360729','全南县','江西省赣州市全南县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='赣州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360730','宁都县','江西省赣州市宁都县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='赣州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360731','于都县','江西省赣州市于都县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='赣州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360732','兴国县','江西省赣州市兴国县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='赣州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360733','会昌县','江西省赣州市会昌县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='赣州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360734','寻乌县','江西省赣州市寻乌县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='赣州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360735','石城县','江西省赣州市石城县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='赣州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360781','瑞金市','江西省赣州市瑞金市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='赣州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360800','吉安市','江西省吉安市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='江西省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360801','市辖区','江西省吉安市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='吉安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360802','吉州区','江西省吉安市吉州区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='吉安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360803','青原区','江西省吉安市青原区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='吉安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360821','吉安县','江西省吉安市吉安县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='吉安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360822','吉水县','江西省吉安市吉水县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='吉安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360823','峡江县','江西省吉安市峡江县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='吉安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360824','新干县','江西省吉安市新干县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='吉安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360825','永丰县','江西省吉安市永丰县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='吉安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360826','泰和县','江西省吉安市泰和县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='吉安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360827','遂川县','江西省吉安市遂川县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='吉安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360828','万安县','江西省吉安市万安县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='吉安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360829','安福县','江西省吉安市安福县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='吉安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360830','永新县','江西省吉安市永新县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='吉安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360881','井冈山市','江西省吉安市井冈山市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='吉安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360900','宜春市','江西省宜春市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='江西省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360901','市辖区','江西省宜春市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宜春市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360902','袁州区','江西省宜春市袁州区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宜春市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360921','奉新县','江西省宜春市奉新县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宜春市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360922','万载县','江西省宜春市万载县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宜春市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360923','上高县','江西省宜春市上高县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宜春市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360924','宜丰县','江西省宜春市宜丰县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宜春市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360925','靖安县','江西省宜春市靖安县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宜春市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360926','铜鼓县','江西省宜春市铜鼓县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宜春市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360981','丰城市','江西省宜春市丰城市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宜春市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360982','樟树市','江西省宜春市樟树市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宜春市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '360983','高安市','江西省宜春市高安市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宜春市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '361000','抚州市','江西省抚州市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='江西省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '361001','市辖区','江西省抚州市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='抚州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '361002','临川区','江西省抚州市临川区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='抚州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '361021','南城县','江西省抚州市南城县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='抚州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '361022','黎川县','江西省抚州市黎川县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='抚州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '361023','南丰县','江西省抚州市南丰县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='抚州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '361024','崇仁县','江西省抚州市崇仁县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='抚州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '361025','乐安县','江西省抚州市乐安县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='抚州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '361026','宜黄县','江西省抚州市宜黄县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='抚州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '361027','金溪县','江西省抚州市金溪县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='抚州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '361028','资溪县','江西省抚州市资溪县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='抚州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '361029','东乡县','江西省抚州市东乡县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='抚州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '361030','广昌县','江西省抚州市广昌县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='抚州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '361100','上饶市','江西省上饶市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='江西省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '361101','市辖区','江西省上饶市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='上饶市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '361102','信州区','江西省上饶市信州区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='上饶市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '361103','广丰区','江西省上饶市广丰区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='上饶市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '361121','上饶县','江西省上饶市上饶县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='上饶市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '361123','玉山县','江西省上饶市玉山县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='上饶市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '361124','铅山县','江西省上饶市铅山县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='上饶市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '361125','横峰县','江西省上饶市横峰县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='上饶市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '361126','弋阳县','江西省上饶市弋阳县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='上饶市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '361127','余干县','江西省上饶市余干县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='上饶市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '361128','鄱阳县','江西省上饶市鄱阳县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='上饶市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '361129','万年县','江西省上饶市万年县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='上饶市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '361130','婺源县','江西省上饶市婺源县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='上饶市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '361181','德兴市','江西省上饶市德兴市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='上饶市'));
#-----山东省#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370000','山东省','山东省',1,NULL);

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370100','济南市','山东省济南市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='山东省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370101','市辖区','山东省济南市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='济南市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370102','历下区','山东省济南市历下区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='济南市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370103','市中区','山东省济南市市中区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='济南市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370104','槐荫区','山东省济南市槐荫区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='济南市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370105','天桥区','山东省济南市天桥区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='济南市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370112','历城区','山东省济南市历城区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='济南市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370113','长清区','山东省济南市长清区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='济南市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370124','平阴县','山东省济南市平阴县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='济南市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370125','济阳县','山东省济南市济阳县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='济南市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370126','商河县','山东省济南市商河县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='济南市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370181','章丘市','山东省济南市章丘市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='济南市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370200','青岛市','山东省青岛市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='山东省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370201','市辖区','山东省青岛市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='青岛市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370202','市南区','山东省青岛市市南区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='青岛市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370203','市北区','山东省青岛市市北区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='青岛市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370211','黄岛区','山东省青岛市黄岛区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='青岛市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370212','崂山区','山东省青岛市崂山区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='青岛市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370213','李沧区','山东省青岛市李沧区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='青岛市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370214','城阳区','山东省青岛市城阳区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='青岛市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370281','胶州市','山东省青岛市胶州市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='青岛市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370282','即墨市','山东省青岛市即墨市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='青岛市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370283','平度市','山东省青岛市平度市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='青岛市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370285','莱西市','山东省青岛市莱西市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='青岛市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370300','淄博市','山东省淄博市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='山东省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370301','市辖区','山东省淄博市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='淄博市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370302','淄川区','山东省淄博市淄川区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='淄博市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370303','张店区','山东省淄博市张店区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='淄博市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370304','博山区','山东省淄博市博山区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='淄博市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370305','临淄区','山东省淄博市临淄区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='淄博市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370306','周村区','山东省淄博市周村区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='淄博市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370321','桓台县','山东省淄博市桓台县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='淄博市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370322','高青县','山东省淄博市高青县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='淄博市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370323','沂源县','山东省淄博市沂源县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='淄博市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370400','枣庄市','山东省枣庄市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='山东省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370401','市辖区','山东省枣庄市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='枣庄市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370402','市中区','山东省枣庄市市中区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='枣庄市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370403','薛城区','山东省枣庄市薛城区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='枣庄市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370404','峄城区','山东省枣庄市峄城区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='枣庄市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370405','台儿庄区','山东省枣庄市台儿庄区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='枣庄市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370406','山亭区','山东省枣庄市山亭区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='枣庄市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370481','滕州市','山东省枣庄市滕州市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='枣庄市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370500','东营市','山东省东营市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='山东省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370501','市辖区','山东省东营市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='东营市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370502','东营区','山东省东营市东营区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='东营市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370503','河口区','山东省东营市河口区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='东营市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370505','垦利区','山东省东营市垦利区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='东营市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370522','利津县','山东省东营市利津县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='东营市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370523','广饶县','山东省东营市广饶县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='东营市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370600','烟台市','山东省烟台市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='山东省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370601','市辖区','山东省烟台市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='烟台市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370602','芝罘区','山东省烟台市芝罘区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='烟台市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370611','福山区','山东省烟台市福山区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='烟台市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370612','牟平区','山东省烟台市牟平区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='烟台市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370613','莱山区','山东省烟台市莱山区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='烟台市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370634','长岛县','山东省烟台市长岛县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='烟台市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370681','龙口市','山东省烟台市龙口市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='烟台市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370682','莱阳市','山东省烟台市莱阳市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='烟台市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370683','莱州市','山东省烟台市莱州市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='烟台市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370684','蓬莱市','山东省烟台市蓬莱市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='烟台市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370685','招远市','山东省烟台市招远市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='烟台市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370686','栖霞市','山东省烟台市栖霞市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='烟台市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370687','海阳市','山东省烟台市海阳市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='烟台市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370700','潍坊市','山东省潍坊市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='山东省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370701','市辖区','山东省潍坊市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='潍坊市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370702','潍城区','山东省潍坊市潍城区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='潍坊市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370703','寒亭区','山东省潍坊市寒亭区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='潍坊市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370704','坊子区','山东省潍坊市坊子区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='潍坊市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370705','奎文区','山东省潍坊市奎文区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='潍坊市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370724','临朐县','山东省潍坊市临朐县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='潍坊市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370725','昌乐县','山东省潍坊市昌乐县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='潍坊市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370781','青州市','山东省潍坊市青州市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='潍坊市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370782','诸城市','山东省潍坊市诸城市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='潍坊市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370783','寿光市','山东省潍坊市寿光市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='潍坊市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370784','安丘市','山东省潍坊市安丘市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='潍坊市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370785','高密市','山东省潍坊市高密市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='潍坊市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370786','昌邑市','山东省潍坊市昌邑市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='潍坊市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370800','济宁市','山东省济宁市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='山东省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370801','市辖区','山东省济宁市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='济宁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370811','任城区','山东省济宁市任城区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='济宁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370812','兖州区','山东省济宁市兖州区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='济宁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370826','微山县','山东省济宁市微山县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='济宁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370827','鱼台县','山东省济宁市鱼台县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='济宁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370828','金乡县','山东省济宁市金乡县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='济宁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370829','嘉祥县','山东省济宁市嘉祥县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='济宁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370830','汶上县','山东省济宁市汶上县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='济宁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370831','泗水县','山东省济宁市泗水县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='济宁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370832','梁山县','山东省济宁市梁山县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='济宁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370881','曲阜市','山东省济宁市曲阜市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='济宁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370883','邹城市','山东省济宁市邹城市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='济宁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370900','泰安市','山东省泰安市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='山东省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370901','市辖区','山东省泰安市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='泰安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370902','泰山区','山东省泰安市泰山区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='泰安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370911','岱岳区','山东省泰安市岱岳区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='泰安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370921','宁阳县','山东省泰安市宁阳县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='泰安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370923','东平县','山东省泰安市东平县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='泰安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370982','新泰市','山东省泰安市新泰市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='泰安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '370983','肥城市','山东省泰安市肥城市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='泰安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371000','威海市','山东省威海市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='山东省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371001','市辖区','山东省威海市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='威海市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371002','环翠区','山东省威海市环翠区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='威海市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371003','文登区','山东省威海市文登区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='威海市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371082','荣成市','山东省威海市荣成市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='威海市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371083','乳山市','山东省威海市乳山市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='威海市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371100','日照市','山东省日照市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='山东省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371101','市辖区','山东省日照市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='日照市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371102','东港区','山东省日照市东港区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='日照市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371103','岚山区','山东省日照市岚山区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='日照市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371121','五莲县','山东省日照市五莲县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='日照市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371122','莒县','山东省日照市莒县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='日照市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371200','莱芜市','山东省莱芜市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='山东省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371201','市辖区','山东省莱芜市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='莱芜市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371202','莱城区','山东省莱芜市莱城区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='莱芜市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371203','钢城区','山东省莱芜市钢城区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='莱芜市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371300','临沂市','山东省临沂市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='山东省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371301','市辖区','山东省临沂市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='临沂市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371302','兰山区','山东省临沂市兰山区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='临沂市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371311','罗庄区','山东省临沂市罗庄区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='临沂市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371312','河东区','山东省临沂市河东区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='临沂市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371321','沂南县','山东省临沂市沂南县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='临沂市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371322','郯城县','山东省临沂市郯城县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='临沂市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371323','沂水县','山东省临沂市沂水县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='临沂市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371324','兰陵县','山东省临沂市兰陵县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='临沂市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371325','费县','山东省临沂市费县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='临沂市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371326','平邑县','山东省临沂市平邑县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='临沂市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371327','莒南县','山东省临沂市莒南县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='临沂市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371328','蒙阴县','山东省临沂市蒙阴县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='临沂市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371329','临沭县','山东省临沂市临沭县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='临沂市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371400','德州市','山东省德州市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='山东省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371401','市辖区','山东省德州市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='德州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371402','德城区','山东省德州市德城区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='德州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371403','陵城区','山东省德州市陵城区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='德州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371422','宁津县','山东省德州市宁津县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='德州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371423','庆云县','山东省德州市庆云县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='德州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371424','临邑县','山东省德州市临邑县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='德州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371425','齐河县','山东省德州市齐河县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='德州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371426','平原县','山东省德州市平原县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='德州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371427','夏津县','山东省德州市夏津县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='德州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371428','武城县','山东省德州市武城县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='德州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371481','乐陵市','山东省德州市乐陵市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='德州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371482','禹城市','山东省德州市禹城市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='德州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371500','聊城市','山东省聊城市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='山东省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371501','市辖区','山东省聊城市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='聊城市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371502','东昌府区','山东省聊城市东昌府区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='聊城市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371521','阳谷县','山东省聊城市阳谷县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='聊城市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371522','莘县','山东省聊城市莘县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='聊城市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371523','茌平县','山东省聊城市茌平县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='聊城市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371524','东阿县','山东省聊城市东阿县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='聊城市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371525','冠县','山东省聊城市冠县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='聊城市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371526','高唐县','山东省聊城市高唐县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='聊城市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371581','临清市','山东省聊城市临清市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='聊城市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371600','滨州市','山东省滨州市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='山东省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371601','市辖区','山东省滨州市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='滨州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371602','滨城区','山东省滨州市滨城区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='滨州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371603','沾化区','山东省滨州市沾化区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='滨州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371621','惠民县','山东省滨州市惠民县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='滨州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371622','阳信县','山东省滨州市阳信县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='滨州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371623','无棣县','山东省滨州市无棣县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='滨州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371625','博兴县','山东省滨州市博兴县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='滨州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371626','邹平县','山东省滨州市邹平县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='滨州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371700','菏泽市','山东省菏泽市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='山东省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371701','市辖区','山东省菏泽市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='菏泽市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371702','牡丹区','山东省菏泽市牡丹区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='菏泽市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371703','定陶区','山东省菏泽市定陶区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='菏泽市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371721','曹县','山东省菏泽市曹县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='菏泽市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371722','单县','山东省菏泽市单县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='菏泽市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371723','成武县','山东省菏泽市成武县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='菏泽市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371724','巨野县','山东省菏泽市巨野县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='菏泽市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371725','郓城县','山东省菏泽市郓城县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='菏泽市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371726','鄄城县','山东省菏泽市鄄城县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='菏泽市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '371728','东明县','山东省菏泽市东明县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='菏泽市'));
#-----河南省#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410000','河南省','河南省',1,NULL);

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410100','郑州市','河南省郑州市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='河南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410101','市辖区','河南省郑州市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='郑州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410102','中原区','河南省郑州市中原区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='郑州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410103','二七区','河南省郑州市二七区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='郑州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410104','管城回族区','河南省郑州市管城回族区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='郑州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410105','金水区','河南省郑州市金水区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='郑州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410106','上街区','河南省郑州市上街区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='郑州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410108','惠济区','河南省郑州市惠济区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='郑州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410122','中牟县','河南省郑州市中牟县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='郑州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410181','巩义市','河南省郑州市巩义市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='郑州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410182','荥阳市','河南省郑州市荥阳市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='郑州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410183','新密市','河南省郑州市新密市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='郑州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410184','新郑市','河南省郑州市新郑市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='郑州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410185','登封市','河南省郑州市登封市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='郑州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410200','开封市','河南省开封市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='河南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410201','市辖区','河南省开封市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='开封市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410202','龙亭区','河南省开封市龙亭区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='开封市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410203','顺河回族区','河南省开封市顺河回族区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='开封市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410204','鼓楼区','河南省开封市鼓楼区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='开封市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410205','禹王台区','河南省开封市禹王台区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='开封市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410211','金明区','河南省开封市金明区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='开封市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410212','祥符区','河南省开封市祥符区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='开封市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410221','杞县','河南省开封市杞县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='开封市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410222','通许县','河南省开封市通许县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='开封市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410223','尉氏县','河南省开封市尉氏县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='开封市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410225','兰考县','河南省开封市兰考县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='开封市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410300','洛阳市','河南省洛阳市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='河南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410301','市辖区','河南省洛阳市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='洛阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410302','老城区','河南省洛阳市老城区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='洛阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410303','西工区','河南省洛阳市西工区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='洛阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410304','瀍河回族区','河南省洛阳市瀍河回族区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='洛阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410305','涧西区','河南省洛阳市涧西区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='洛阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410306','吉利区','河南省洛阳市吉利区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='洛阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410311','洛龙区','河南省洛阳市洛龙区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='洛阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410322','孟津县','河南省洛阳市孟津县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='洛阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410323','新安县','河南省洛阳市新安县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='洛阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410324','栾川县','河南省洛阳市栾川县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='洛阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410325','嵩县','河南省洛阳市嵩县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='洛阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410326','汝阳县','河南省洛阳市汝阳县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='洛阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410327','宜阳县','河南省洛阳市宜阳县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='洛阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410328','洛宁县','河南省洛阳市洛宁县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='洛阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410329','伊川县','河南省洛阳市伊川县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='洛阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410381','偃师市','河南省洛阳市偃师市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='洛阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410400','平顶山市','河南省平顶山市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='河南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410401','市辖区','河南省平顶山市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='平顶山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410402','新华区','河南省平顶山市新华区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='平顶山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410403','卫东区','河南省平顶山市卫东区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='平顶山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410404','石龙区','河南省平顶山市石龙区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='平顶山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410411','湛河区','河南省平顶山市湛河区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='平顶山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410421','宝丰县','河南省平顶山市宝丰县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='平顶山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410422','叶县','河南省平顶山市叶县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='平顶山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410423','鲁山县','河南省平顶山市鲁山县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='平顶山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410425','郏县','河南省平顶山市郏县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='平顶山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410481','舞钢市','河南省平顶山市舞钢市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='平顶山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410482','汝州市','河南省平顶山市汝州市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='平顶山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410500','安阳市','河南省安阳市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='河南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410501','市辖区','河南省安阳市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='安阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410502','文峰区','河南省安阳市文峰区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='安阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410503','北关区','河南省安阳市北关区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='安阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410505','殷都区','河南省安阳市殷都区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='安阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410506','龙安区','河南省安阳市龙安区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='安阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410522','安阳县','河南省安阳市安阳县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='安阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410523','汤阴县','河南省安阳市汤阴县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='安阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410526','滑县','河南省安阳市滑县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='安阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410527','内黄县','河南省安阳市内黄县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='安阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410581','林州市','河南省安阳市林州市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='安阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410600','鹤壁市','河南省鹤壁市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='河南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410601','市辖区','河南省鹤壁市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='鹤壁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410602','鹤山区','河南省鹤壁市鹤山区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='鹤壁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410603','山城区','河南省鹤壁市山城区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='鹤壁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410611','淇滨区','河南省鹤壁市淇滨区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='鹤壁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410621','浚县','河南省鹤壁市浚县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='鹤壁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410622','淇县','河南省鹤壁市淇县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='鹤壁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410700','新乡市','河南省新乡市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='河南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410701','市辖区','河南省新乡市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='新乡市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410702','红旗区','河南省新乡市红旗区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='新乡市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410703','卫滨区','河南省新乡市卫滨区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='新乡市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410704','凤泉区','河南省新乡市凤泉区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='新乡市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410711','牧野区','河南省新乡市牧野区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='新乡市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410721','新乡县','河南省新乡市新乡县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='新乡市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410724','获嘉县','河南省新乡市获嘉县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='新乡市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410725','原阳县','河南省新乡市原阳县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='新乡市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410726','延津县','河南省新乡市延津县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='新乡市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410727','封丘县','河南省新乡市封丘县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='新乡市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410728','长垣县','河南省新乡市长垣县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='新乡市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410781','卫辉市','河南省新乡市卫辉市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='新乡市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410782','辉县市','河南省新乡市辉县市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='新乡市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410800','焦作市','河南省焦作市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='河南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410801','市辖区','河南省焦作市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='焦作市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410802','解放区','河南省焦作市解放区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='焦作市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410803','中站区','河南省焦作市中站区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='焦作市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410804','马村区','河南省焦作市马村区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='焦作市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410811','山阳区','河南省焦作市山阳区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='焦作市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410821','修武县','河南省焦作市修武县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='焦作市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410822','博爱县','河南省焦作市博爱县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='焦作市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410823','武陟县','河南省焦作市武陟县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='焦作市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410825','温县','河南省焦作市温县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='焦作市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410882','沁阳市','河南省焦作市沁阳市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='焦作市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410883','孟州市','河南省焦作市孟州市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='焦作市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410900','濮阳市','河南省濮阳市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='河南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410901','市辖区','河南省濮阳市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='濮阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410902','华龙区','河南省濮阳市华龙区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='濮阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410922','清丰县','河南省濮阳市清丰县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='濮阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410923','南乐县','河南省濮阳市南乐县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='濮阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410926','范县','河南省濮阳市范县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='濮阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410927','台前县','河南省濮阳市台前县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='濮阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '410928','濮阳县','河南省濮阳市濮阳县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='濮阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411000','许昌市','河南省许昌市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='河南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411001','市辖区','河南省许昌市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='许昌市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411002','魏都区','河南省许昌市魏都区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='许昌市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411023','许昌县','河南省许昌市许昌县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='许昌市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411024','鄢陵县','河南省许昌市鄢陵县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='许昌市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411025','襄城县','河南省许昌市襄城县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='许昌市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411081','禹州市','河南省许昌市禹州市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='许昌市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411082','长葛市','河南省许昌市长葛市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='许昌市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411100','漯河市','河南省漯河市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='河南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411101','市辖区','河南省漯河市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='漯河市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411102','源汇区','河南省漯河市源汇区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='漯河市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411103','郾城区','河南省漯河市郾城区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='漯河市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411104','召陵区','河南省漯河市召陵区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='漯河市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411121','舞阳县','河南省漯河市舞阳县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='漯河市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411122','临颍县','河南省漯河市临颍县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='漯河市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411200','三门峡市','河南省三门峡市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='河南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411201','市辖区','河南省三门峡市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='三门峡市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411202','湖滨区','河南省三门峡市湖滨区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='三门峡市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411203','陕州区','河南省三门峡市陕州区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='三门峡市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411221','渑池县','河南省三门峡市渑池县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='三门峡市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411224','卢氏县','河南省三门峡市卢氏县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='三门峡市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411281','义马市','河南省三门峡市义马市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='三门峡市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411282','灵宝市','河南省三门峡市灵宝市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='三门峡市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411300','南阳市','河南省南阳市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='河南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411301','市辖区','河南省南阳市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411302','宛城区','河南省南阳市宛城区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411303','卧龙区','河南省南阳市卧龙区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411321','南召县','河南省南阳市南召县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411322','方城县','河南省南阳市方城县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411323','西峡县','河南省南阳市西峡县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411324','镇平县','河南省南阳市镇平县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411325','内乡县','河南省南阳市内乡县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411326','淅川县','河南省南阳市淅川县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411327','社旗县','河南省南阳市社旗县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411328','唐河县','河南省南阳市唐河县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411329','新野县','河南省南阳市新野县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411330','桐柏县','河南省南阳市桐柏县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411381','邓州市','河南省南阳市邓州市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411400','商丘市','河南省商丘市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='河南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411401','市辖区','河南省商丘市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='商丘市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411402','梁园区','河南省商丘市梁园区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='商丘市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411403','睢阳区','河南省商丘市睢阳区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='商丘市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411421','民权县','河南省商丘市民权县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='商丘市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411422','睢县','河南省商丘市睢县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='商丘市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411423','宁陵县','河南省商丘市宁陵县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='商丘市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411424','柘城县','河南省商丘市柘城县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='商丘市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411425','虞城县','河南省商丘市虞城县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='商丘市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411426','夏邑县','河南省商丘市夏邑县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='商丘市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411481','永城市','河南省商丘市永城市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='商丘市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411500','信阳市','河南省信阳市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='河南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411501','市辖区','河南省信阳市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='信阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411502','浉河区','河南省信阳市浉河区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='信阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411503','平桥区','河南省信阳市平桥区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='信阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411521','罗山县','河南省信阳市罗山县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='信阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411522','光山县','河南省信阳市光山县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='信阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411523','新县','河南省信阳市新县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='信阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411524','商城县','河南省信阳市商城县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='信阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411525','固始县','河南省信阳市固始县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='信阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411526','潢川县','河南省信阳市潢川县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='信阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411527','淮滨县','河南省信阳市淮滨县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='信阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411528','息县','河南省信阳市息县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='信阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411600','周口市','河南省周口市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='河南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411601','市辖区','河南省周口市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='周口市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411602','川汇区','河南省周口市川汇区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='周口市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411621','扶沟县','河南省周口市扶沟县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='周口市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411622','西华县','河南省周口市西华县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='周口市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411623','商水县','河南省周口市商水县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='周口市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411624','沈丘县','河南省周口市沈丘县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='周口市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411625','郸城县','河南省周口市郸城县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='周口市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411626','淮阳县','河南省周口市淮阳县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='周口市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411627','太康县','河南省周口市太康县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='周口市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411628','鹿邑县','河南省周口市鹿邑县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='周口市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411681','项城市','河南省周口市项城市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='周口市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411700','驻马店市','河南省驻马店市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='河南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411701','市辖区','河南省驻马店市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='驻马店市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411702','驿城区','河南省驻马店市驿城区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='驻马店市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411721','西平县','河南省驻马店市西平县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='驻马店市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411722','上蔡县','河南省驻马店市上蔡县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='驻马店市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411723','平舆县','河南省驻马店市平舆县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='驻马店市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411724','正阳县','河南省驻马店市正阳县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='驻马店市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411725','确山县','河南省驻马店市确山县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='驻马店市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411726','泌阳县','河南省驻马店市泌阳县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='驻马店市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411727','汝南县','河南省驻马店市汝南县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='驻马店市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411728','遂平县','河南省驻马店市遂平县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='驻马店市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '411729','新蔡县','河南省驻马店市新蔡县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='驻马店市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '419001','济源市','河南省济源市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='河南省'));
#-----湖北省#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420000','湖北省','湖北省',1,NULL);

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420100','武汉市','湖北省武汉市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='湖北省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420101','市辖区','湖北省武汉市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='武汉市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420102','江岸区','湖北省武汉市江岸区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='武汉市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420103','江汉区','湖北省武汉市江汉区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='武汉市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420104','硚口区','湖北省武汉市硚口区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='武汉市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420105','汉阳区','湖北省武汉市汉阳区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='武汉市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420106','武昌区','湖北省武汉市武昌区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='武汉市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420107','青山区','湖北省武汉市青山区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='武汉市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420111','洪山区','湖北省武汉市洪山区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='武汉市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420112','东西湖区','湖北省武汉市东西湖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='武汉市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420113','汉南区','湖北省武汉市汉南区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='武汉市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420114','蔡甸区','湖北省武汉市蔡甸区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='武汉市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420115','江夏区','湖北省武汉市江夏区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='武汉市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420116','黄陂区','湖北省武汉市黄陂区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='武汉市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420117','新洲区','湖北省武汉市新洲区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='武汉市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420200','黄石市','湖北省黄石市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='湖北省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420201','市辖区','湖北省黄石市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黄石市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420202','黄石港区','湖北省黄石市黄石港区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黄石市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420203','西塞山区','湖北省黄石市西塞山区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黄石市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420204','下陆区','湖北省黄石市下陆区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黄石市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420205','铁山区','湖北省黄石市铁山区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黄石市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420222','阳新县','湖北省黄石市阳新县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黄石市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420281','大冶市','湖北省黄石市大冶市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黄石市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420300','十堰市','湖北省十堰市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='湖北省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420301','市辖区','湖北省十堰市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='十堰市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420302','茅箭区','湖北省十堰市茅箭区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='十堰市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420303','张湾区','湖北省十堰市张湾区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='十堰市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420304','郧阳区','湖北省十堰市郧阳区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='十堰市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420322','郧西县','湖北省十堰市郧西县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='十堰市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420323','竹山县','湖北省十堰市竹山县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='十堰市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420324','竹溪县','湖北省十堰市竹溪县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='十堰市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420325','房县','湖北省十堰市房县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='十堰市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420381','丹江口市','湖北省十堰市丹江口市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='十堰市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420500','宜昌市','湖北省宜昌市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='湖北省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420501','市辖区','湖北省宜昌市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宜昌市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420502','西陵区','湖北省宜昌市西陵区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宜昌市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420503','伍家岗区','湖北省宜昌市伍家岗区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宜昌市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420504','点军区','湖北省宜昌市点军区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宜昌市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420505','猇亭区','湖北省宜昌市猇亭区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宜昌市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420506','夷陵区','湖北省宜昌市夷陵区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宜昌市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420525','远安县','湖北省宜昌市远安县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宜昌市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420526','兴山县','湖北省宜昌市兴山县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宜昌市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420527','秭归县','湖北省宜昌市秭归县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宜昌市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420528','长阳土家族自治县','湖北省宜昌市长阳土家族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宜昌市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420529','五峰土家族自治县','湖北省宜昌市五峰土家族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宜昌市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420581','宜都市','湖北省宜昌市宜都市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宜昌市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420582','当阳市','湖北省宜昌市当阳市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宜昌市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420583','枝江市','湖北省宜昌市枝江市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宜昌市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420600','襄阳市','湖北省襄阳市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='湖北省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420601','市辖区','湖北省襄阳市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='襄阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420602','襄城区','湖北省襄阳市襄城区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='襄阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420606','樊城区','湖北省襄阳市樊城区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='襄阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420607','襄州区','湖北省襄阳市襄州区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='襄阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420624','南漳县','湖北省襄阳市南漳县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='襄阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420625','谷城县','湖北省襄阳市谷城县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='襄阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420626','保康县','湖北省襄阳市保康县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='襄阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420682','老河口市','湖北省襄阳市老河口市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='襄阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420683','枣阳市','湖北省襄阳市枣阳市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='襄阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420684','宜城市','湖北省襄阳市宜城市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='襄阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420700','鄂州市','湖北省鄂州市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='湖北省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420701','市辖区','湖北省鄂州市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='鄂州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420702','梁子湖区','湖北省鄂州市梁子湖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='鄂州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420703','华容区','湖北省鄂州市华容区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='鄂州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420704','鄂城区','湖北省鄂州市鄂城区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='鄂州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420800','荆门市','湖北省荆门市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='湖北省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420801','市辖区','湖北省荆门市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='荆门市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420802','东宝区','湖北省荆门市东宝区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='荆门市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420804','掇刀区','湖北省荆门市掇刀区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='荆门市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420821','京山县','湖北省荆门市京山县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='荆门市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420822','沙洋县','湖北省荆门市沙洋县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='荆门市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420881','钟祥市','湖北省荆门市钟祥市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='荆门市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420900','孝感市','湖北省孝感市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='湖北省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420901','市辖区','湖北省孝感市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='孝感市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420902','孝南区','湖北省孝感市孝南区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='孝感市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420921','孝昌县','湖北省孝感市孝昌县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='孝感市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420922','大悟县','湖北省孝感市大悟县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='孝感市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420923','云梦县','湖北省孝感市云梦县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='孝感市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420981','应城市','湖北省孝感市应城市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='孝感市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420982','安陆市','湖北省孝感市安陆市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='孝感市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '420984','汉川市','湖北省孝感市汉川市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='孝感市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '421000','荆州市','湖北省荆州市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='湖北省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '421001','市辖区','湖北省荆州市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='荆州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '421002','沙市区','湖北省荆州市沙市区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='荆州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '421003','荆州区','湖北省荆州市荆州区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='荆州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '421022','公安县','湖北省荆州市公安县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='荆州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '421023','监利县','湖北省荆州市监利县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='荆州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '421024','江陵县','湖北省荆州市江陵县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='荆州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '421081','石首市','湖北省荆州市石首市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='荆州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '421083','洪湖市','湖北省荆州市洪湖市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='荆州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '421087','松滋市','湖北省荆州市松滋市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='荆州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '421100','黄冈市','湖北省黄冈市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='湖北省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '421101','市辖区','湖北省黄冈市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黄冈市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '421102','黄州区','湖北省黄冈市黄州区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黄冈市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '421121','团风县','湖北省黄冈市团风县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黄冈市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '421122','红安县','湖北省黄冈市红安县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黄冈市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '421123','罗田县','湖北省黄冈市罗田县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黄冈市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '421124','英山县','湖北省黄冈市英山县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黄冈市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '421125','浠水县','湖北省黄冈市浠水县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黄冈市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '421126','蕲春县','湖北省黄冈市蕲春县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黄冈市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '421127','黄梅县','湖北省黄冈市黄梅县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黄冈市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '421181','麻城市','湖北省黄冈市麻城市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黄冈市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '421182','武穴市','湖北省黄冈市武穴市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黄冈市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '421200','咸宁市','湖北省咸宁市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='湖北省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '421201','市辖区','湖北省咸宁市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='咸宁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '421202','咸安区','湖北省咸宁市咸安区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='咸宁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '421221','嘉鱼县','湖北省咸宁市嘉鱼县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='咸宁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '421222','通城县','湖北省咸宁市通城县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='咸宁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '421223','崇阳县','湖北省咸宁市崇阳县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='咸宁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '421224','通山县','湖北省咸宁市通山县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='咸宁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '421281','赤壁市','湖北省咸宁市赤壁市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='咸宁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '421300','随州市','湖北省随州市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='湖北省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '421301','市辖区','湖北省随州市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='随州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '421303','曾都区','湖北省随州市曾都区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='随州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '421321','随县','湖北省随州市随县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='随州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '421381','广水市','湖北省随州市广水市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='随州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '422800','恩施土家族苗族自治州','湖北省恩施土家族苗族自治州', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='湖北省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '422801','恩施市','湖北省恩施土家族苗族自治州恩施市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='恩施土家族苗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '422802','利川市','湖北省恩施土家族苗族自治州利川市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='恩施土家族苗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '422822','建始县','湖北省恩施土家族苗族自治州建始县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='恩施土家族苗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '422823','巴东县','湖北省恩施土家族苗族自治州巴东县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='恩施土家族苗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '422825','宣恩县','湖北省恩施土家族苗族自治州宣恩县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='恩施土家族苗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '422826','咸丰县','湖北省恩施土家族苗族自治州咸丰县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='恩施土家族苗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '422827','来凤县','湖北省恩施土家族苗族自治州来凤县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='恩施土家族苗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '422828','鹤峰县','湖北省恩施土家族苗族自治州鹤峰县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='恩施土家族苗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '429004','仙桃市','湖北省仙桃市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='湖北省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '429005','潜江市','湖北省潜江市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='湖北省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '429006','天门市','湖北省天门市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='湖北省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '429021','神农架林区','湖北省神农架林区', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='湖北省'));
#-----湖南省#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430000','湖南省','湖南省',1,NULL);

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430100','长沙市','湖南省长沙市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='湖南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430101','市辖区','湖南省长沙市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='长沙市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430102','芙蓉区','湖南省长沙市芙蓉区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='长沙市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430103','天心区','湖南省长沙市天心区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='长沙市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430104','岳麓区','湖南省长沙市岳麓区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='长沙市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430105','开福区','湖南省长沙市开福区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='长沙市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430111','雨花区','湖南省长沙市雨花区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='长沙市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430112','望城区','湖南省长沙市望城区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='长沙市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430121','长沙县','湖南省长沙市长沙县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='长沙市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430124','宁乡县','湖南省长沙市宁乡县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='长沙市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430181','浏阳市','湖南省长沙市浏阳市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='长沙市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430200','株洲市','湖南省株洲市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='湖南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430201','市辖区','湖南省株洲市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='株洲市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430202','荷塘区','湖南省株洲市荷塘区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='株洲市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430203','芦淞区','湖南省株洲市芦淞区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='株洲市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430204','石峰区','湖南省株洲市石峰区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='株洲市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430211','天元区','湖南省株洲市天元区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='株洲市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430221','株洲县','湖南省株洲市株洲县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='株洲市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430223','攸县','湖南省株洲市攸县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='株洲市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430224','茶陵县','湖南省株洲市茶陵县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='株洲市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430225','炎陵县','湖南省株洲市炎陵县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='株洲市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430281','醴陵市','湖南省株洲市醴陵市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='株洲市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430300','湘潭市','湖南省湘潭市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='湖南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430301','市辖区','湖南省湘潭市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='湘潭市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430302','雨湖区','湖南省湘潭市雨湖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='湘潭市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430304','岳塘区','湖南省湘潭市岳塘区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='湘潭市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430321','湘潭县','湖南省湘潭市湘潭县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='湘潭市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430381','湘乡市','湖南省湘潭市湘乡市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='湘潭市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430382','韶山市','湖南省湘潭市韶山市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='湘潭市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430400','衡阳市','湖南省衡阳市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='湖南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430401','市辖区','湖南省衡阳市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='衡阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430405','珠晖区','湖南省衡阳市珠晖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='衡阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430406','雁峰区','湖南省衡阳市雁峰区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='衡阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430407','石鼓区','湖南省衡阳市石鼓区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='衡阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430408','蒸湘区','湖南省衡阳市蒸湘区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='衡阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430412','南岳区','湖南省衡阳市南岳区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='衡阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430421','衡阳县','湖南省衡阳市衡阳县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='衡阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430422','衡南县','湖南省衡阳市衡南县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='衡阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430423','衡山县','湖南省衡阳市衡山县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='衡阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430424','衡东县','湖南省衡阳市衡东县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='衡阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430426','祁东县','湖南省衡阳市祁东县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='衡阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430481','耒阳市','湖南省衡阳市耒阳市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='衡阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430482','常宁市','湖南省衡阳市常宁市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='衡阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430500','邵阳市','湖南省邵阳市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='湖南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430501','市辖区','湖南省邵阳市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='邵阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430502','双清区','湖南省邵阳市双清区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='邵阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430503','大祥区','湖南省邵阳市大祥区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='邵阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430511','北塔区','湖南省邵阳市北塔区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='邵阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430521','邵东县','湖南省邵阳市邵东县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='邵阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430522','新邵县','湖南省邵阳市新邵县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='邵阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430523','邵阳县','湖南省邵阳市邵阳县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='邵阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430524','隆回县','湖南省邵阳市隆回县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='邵阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430525','洞口县','湖南省邵阳市洞口县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='邵阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430527','绥宁县','湖南省邵阳市绥宁县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='邵阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430528','新宁县','湖南省邵阳市新宁县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='邵阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430529','城步苗族自治县','湖南省邵阳市城步苗族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='邵阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430581','武冈市','湖南省邵阳市武冈市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='邵阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430600','岳阳市','湖南省岳阳市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='湖南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430601','市辖区','湖南省岳阳市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='岳阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430602','岳阳楼区','湖南省岳阳市岳阳楼区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='岳阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430603','云溪区','湖南省岳阳市云溪区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='岳阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430611','君山区','湖南省岳阳市君山区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='岳阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430621','岳阳县','湖南省岳阳市岳阳县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='岳阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430623','华容县','湖南省岳阳市华容县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='岳阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430624','湘阴县','湖南省岳阳市湘阴县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='岳阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430626','平江县','湖南省岳阳市平江县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='岳阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430681','汨罗市','湖南省岳阳市汨罗市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='岳阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430682','临湘市','湖南省岳阳市临湘市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='岳阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430700','常德市','湖南省常德市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='湖南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430701','市辖区','湖南省常德市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='常德市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430702','武陵区','湖南省常德市武陵区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='常德市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430703','鼎城区','湖南省常德市鼎城区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='常德市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430721','安乡县','湖南省常德市安乡县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='常德市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430722','汉寿县','湖南省常德市汉寿县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='常德市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430723','澧县','湖南省常德市澧县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='常德市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430724','临澧县','湖南省常德市临澧县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='常德市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430725','桃源县','湖南省常德市桃源县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='常德市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430726','石门县','湖南省常德市石门县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='常德市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430781','津市市','湖南省常德市津市市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='常德市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430800','张家界市','湖南省张家界市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='湖南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430801','市辖区','湖南省张家界市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='张家界市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430802','永定区','湖南省张家界市永定区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='张家界市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430811','武陵源区','湖南省张家界市武陵源区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='张家界市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430821','慈利县','湖南省张家界市慈利县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='张家界市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430822','桑植县','湖南省张家界市桑植县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='张家界市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430900','益阳市','湖南省益阳市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='湖南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430901','市辖区','湖南省益阳市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='益阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430902','资阳区','湖南省益阳市资阳区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='益阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430903','赫山区','湖南省益阳市赫山区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='益阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430921','南县','湖南省益阳市南县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='益阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430922','桃江县','湖南省益阳市桃江县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='益阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430923','安化县','湖南省益阳市安化县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='益阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '430981','沅江市','湖南省益阳市沅江市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='益阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '431000','郴州市','湖南省郴州市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='湖南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '431001','市辖区','湖南省郴州市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='郴州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '431002','北湖区','湖南省郴州市北湖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='郴州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '431003','苏仙区','湖南省郴州市苏仙区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='郴州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '431021','桂阳县','湖南省郴州市桂阳县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='郴州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '431022','宜章县','湖南省郴州市宜章县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='郴州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '431023','永兴县','湖南省郴州市永兴县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='郴州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '431024','嘉禾县','湖南省郴州市嘉禾县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='郴州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '431025','临武县','湖南省郴州市临武县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='郴州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '431026','汝城县','湖南省郴州市汝城县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='郴州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '431027','桂东县','湖南省郴州市桂东县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='郴州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '431028','安仁县','湖南省郴州市安仁县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='郴州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '431081','资兴市','湖南省郴州市资兴市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='郴州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '431100','永州市','湖南省永州市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='湖南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '431101','市辖区','湖南省永州市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='永州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '431102','零陵区','湖南省永州市零陵区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='永州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '431103','冷水滩区','湖南省永州市冷水滩区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='永州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '431121','祁阳县','湖南省永州市祁阳县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='永州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '431122','东安县','湖南省永州市东安县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='永州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '431123','双牌县','湖南省永州市双牌县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='永州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '431124','道县','湖南省永州市道县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='永州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '431125','江永县','湖南省永州市江永县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='永州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '431126','宁远县','湖南省永州市宁远县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='永州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '431127','蓝山县','湖南省永州市蓝山县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='永州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '431128','新田县','湖南省永州市新田县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='永州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '431129','江华瑶族自治县','湖南省永州市江华瑶族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='永州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '431200','怀化市','湖南省怀化市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='湖南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '431201','市辖区','湖南省怀化市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='怀化市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '431202','鹤城区','湖南省怀化市鹤城区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='怀化市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '431221','中方县','湖南省怀化市中方县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='怀化市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '431222','沅陵县','湖南省怀化市沅陵县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='怀化市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '431223','辰溪县','湖南省怀化市辰溪县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='怀化市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '431224','溆浦县','湖南省怀化市溆浦县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='怀化市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '431225','会同县','湖南省怀化市会同县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='怀化市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '431226','麻阳苗族自治县','湖南省怀化市麻阳苗族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='怀化市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '431227','新晃侗族自治县','湖南省怀化市新晃侗族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='怀化市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '431228','芷江侗族自治县','湖南省怀化市芷江侗族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='怀化市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '431229','靖州苗族侗族自治县','湖南省怀化市靖州苗族侗族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='怀化市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '431230','通道侗族自治县','湖南省怀化市通道侗族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='怀化市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '431281','洪江市','湖南省怀化市洪江市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='怀化市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '431300','娄底市','湖南省娄底市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='湖南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '431301','市辖区','湖南省娄底市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='娄底市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '431302','娄星区','湖南省娄底市娄星区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='娄底市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '431321','双峰县','湖南省娄底市双峰县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='娄底市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '431322','新化县','湖南省娄底市新化县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='娄底市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '431381','冷水江市','湖南省娄底市冷水江市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='娄底市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '431382','涟源市','湖南省娄底市涟源市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='娄底市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '433100','湘西土家族苗族自治州','湖南省湘西土家族苗族自治州', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='湖南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '433101','吉首市','湖南省湘西土家族苗族自治州吉首市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='湘西土家族苗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '433122','泸溪县','湖南省湘西土家族苗族自治州泸溪县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='湘西土家族苗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '433123','凤凰县','湖南省湘西土家族苗族自治州凤凰县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='湘西土家族苗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '433124','花垣县','湖南省湘西土家族苗族自治州花垣县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='湘西土家族苗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '433125','保靖县','湖南省湘西土家族苗族自治州保靖县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='湘西土家族苗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '433126','古丈县','湖南省湘西土家族苗族自治州古丈县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='湘西土家族苗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '433127','永顺县','湖南省湘西土家族苗族自治州永顺县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='湘西土家族苗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '433130','龙山县','湖南省湘西土家族苗族自治州龙山县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='湘西土家族苗族自治州'));
#-----广东省#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440000','广东省','广东省',1,NULL);

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440100','广州市','广东省广州市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='广东省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440101','市辖区','广东省广州市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='广州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440103','荔湾区','广东省广州市荔湾区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='广州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440104','越秀区','广东省广州市越秀区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='广州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440105','海珠区','广东省广州市海珠区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='广州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440106','天河区','广东省广州市天河区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='广州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440111','白云区','广东省广州市白云区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='广州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440112','黄埔区','广东省广州市黄埔区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='广州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440113','番禺区','广东省广州市番禺区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='广州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440114','花都区','广东省广州市花都区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='广州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440115','南沙区','广东省广州市南沙区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='广州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440117','从化区','广东省广州市从化区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='广州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440118','增城区','广东省广州市增城区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='广州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440200','韶关市','广东省韶关市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='广东省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440201','市辖区','广东省韶关市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='韶关市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440203','武江区','广东省韶关市武江区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='韶关市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440204','浈江区','广东省韶关市浈江区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='韶关市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440205','曲江区','广东省韶关市曲江区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='韶关市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440222','始兴县','广东省韶关市始兴县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='韶关市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440224','仁化县','广东省韶关市仁化县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='韶关市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440229','翁源县','广东省韶关市翁源县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='韶关市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440232','乳源瑶族自治县','广东省韶关市乳源瑶族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='韶关市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440233','新丰县','广东省韶关市新丰县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='韶关市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440281','乐昌市','广东省韶关市乐昌市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='韶关市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440282','南雄市','广东省韶关市南雄市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='韶关市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440300','深圳市','广东省深圳市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='广东省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440301','市辖区','广东省深圳市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='深圳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440303','罗湖区','广东省深圳市罗湖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='深圳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440304','福田区','广东省深圳市福田区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='深圳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440305','南山区','广东省深圳市南山区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='深圳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440306','宝安区','广东省深圳市宝安区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='深圳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440307','龙岗区','广东省深圳市龙岗区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='深圳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440308','盐田区','广东省深圳市盐田区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='深圳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440400','珠海市','广东省珠海市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='广东省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440401','市辖区','广东省珠海市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='珠海市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440402','香洲区','广东省珠海市香洲区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='珠海市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440403','斗门区','广东省珠海市斗门区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='珠海市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440404','金湾区','广东省珠海市金湾区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='珠海市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440500','汕头市','广东省汕头市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='广东省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440501','市辖区','广东省汕头市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='汕头市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440507','龙湖区','广东省汕头市龙湖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='汕头市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440511','金平区','广东省汕头市金平区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='汕头市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440512','濠江区','广东省汕头市濠江区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='汕头市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440513','潮阳区','广东省汕头市潮阳区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='汕头市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440514','潮南区','广东省汕头市潮南区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='汕头市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440515','澄海区','广东省汕头市澄海区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='汕头市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440523','南澳县','广东省汕头市南澳县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='汕头市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440600','佛山市','广东省佛山市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='广东省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440601','市辖区','广东省佛山市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='佛山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440604','禅城区','广东省佛山市禅城区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='佛山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440605','南海区','广东省佛山市南海区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='佛山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440606','顺德区','广东省佛山市顺德区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='佛山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440607','三水区','广东省佛山市三水区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='佛山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440608','高明区','广东省佛山市高明区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='佛山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440700','江门市','广东省江门市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='广东省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440701','市辖区','广东省江门市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='江门市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440703','蓬江区','广东省江门市蓬江区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='江门市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440704','江海区','广东省江门市江海区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='江门市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440705','新会区','广东省江门市新会区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='江门市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440781','台山市','广东省江门市台山市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='江门市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440783','开平市','广东省江门市开平市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='江门市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440784','鹤山市','广东省江门市鹤山市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='江门市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440785','恩平市','广东省江门市恩平市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='江门市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440800','湛江市','广东省湛江市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='广东省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440801','市辖区','广东省湛江市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='湛江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440802','赤坎区','广东省湛江市赤坎区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='湛江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440803','霞山区','广东省湛江市霞山区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='湛江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440804','坡头区','广东省湛江市坡头区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='湛江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440811','麻章区','广东省湛江市麻章区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='湛江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440823','遂溪县','广东省湛江市遂溪县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='湛江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440825','徐闻县','广东省湛江市徐闻县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='湛江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440881','廉江市','广东省湛江市廉江市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='湛江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440882','雷州市','广东省湛江市雷州市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='湛江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440883','吴川市','广东省湛江市吴川市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='湛江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440900','茂名市','广东省茂名市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='广东省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440901','市辖区','广东省茂名市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='茂名市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440902','茂南区','广东省茂名市茂南区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='茂名市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440904','电白区','广东省茂名市电白区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='茂名市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440981','高州市','广东省茂名市高州市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='茂名市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440982','化州市','广东省茂名市化州市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='茂名市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '440983','信宜市','广东省茂名市信宜市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='茂名市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441200','肇庆市','广东省肇庆市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='广东省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441201','市辖区','广东省肇庆市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='肇庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441202','端州区','广东省肇庆市端州区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='肇庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441203','鼎湖区','广东省肇庆市鼎湖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='肇庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441204','高要区','广东省肇庆市高要区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='肇庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441223','广宁县','广东省肇庆市广宁县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='肇庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441224','怀集县','广东省肇庆市怀集县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='肇庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441225','封开县','广东省肇庆市封开县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='肇庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441226','德庆县','广东省肇庆市德庆县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='肇庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441284','四会市','广东省肇庆市四会市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='肇庆市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441300','惠州市','广东省惠州市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='广东省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441301','市辖区','广东省惠州市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='惠州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441302','惠城区','广东省惠州市惠城区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='惠州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441303','惠阳区','广东省惠州市惠阳区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='惠州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441322','博罗县','广东省惠州市博罗县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='惠州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441323','惠东县','广东省惠州市惠东县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='惠州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441324','龙门县','广东省惠州市龙门县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='惠州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441400','梅州市','广东省梅州市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='广东省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441401','市辖区','广东省梅州市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='梅州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441402','梅江区','广东省梅州市梅江区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='梅州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441403','梅县区','广东省梅州市梅县区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='梅州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441422','大埔县','广东省梅州市大埔县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='梅州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441423','丰顺县','广东省梅州市丰顺县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='梅州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441424','五华县','广东省梅州市五华县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='梅州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441426','平远县','广东省梅州市平远县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='梅州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441427','蕉岭县','广东省梅州市蕉岭县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='梅州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441481','兴宁市','广东省梅州市兴宁市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='梅州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441500','汕尾市','广东省汕尾市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='广东省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441501','市辖区','广东省汕尾市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='汕尾市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441502','城区','广东省汕尾市城区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='汕尾市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441521','海丰县','广东省汕尾市海丰县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='汕尾市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441523','陆河县','广东省汕尾市陆河县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='汕尾市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441581','陆丰市','广东省汕尾市陆丰市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='汕尾市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441600','河源市','广东省河源市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='广东省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441601','市辖区','广东省河源市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='河源市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441602','源城区','广东省河源市源城区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='河源市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441621','紫金县','广东省河源市紫金县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='河源市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441622','龙川县','广东省河源市龙川县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='河源市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441623','连平县','广东省河源市连平县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='河源市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441624','和平县','广东省河源市和平县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='河源市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441625','东源县','广东省河源市东源县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='河源市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441700','阳江市','广东省阳江市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='广东省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441701','市辖区','广东省阳江市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阳江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441702','江城区','广东省阳江市江城区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阳江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441704','阳东区','广东省阳江市阳东区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阳江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441721','阳西县','广东省阳江市阳西县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阳江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441781','阳春市','广东省阳江市阳春市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阳江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441800','清远市','广东省清远市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='广东省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441801','市辖区','广东省清远市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='清远市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441802','清城区','广东省清远市清城区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='清远市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441803','清新区','广东省清远市清新区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='清远市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441821','佛冈县','广东省清远市佛冈县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='清远市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441823','阳山县','广东省清远市阳山县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='清远市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441825','连山壮族瑶族自治县','广东省清远市县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='清远市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441826','连南瑶族自治县','广东省清远市连南瑶族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='清远市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441881','英德市','广东省清远市英德市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='清远市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441882','连州市','广东省清远市连州市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='清远市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '441900','东莞市','广东省东莞市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='广东省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '442000','中山市','广东省中山市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='广东省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '445100','潮州市','广东省潮州市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='广东省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '445101','市辖区','广东省潮州市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='潮州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '445102','湘桥区','广东省潮州市湘桥区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='潮州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '445103','潮安区','广东省潮州市潮安区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='潮州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '445122','饶平县','广东省潮州市饶平县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='潮州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '445200','揭阳市','广东省揭阳市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='广东省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '445201','市辖区','广东省揭阳市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='揭阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '445202','榕城区','广东省揭阳市榕城区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='揭阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '445203','揭东区','广东省揭阳市揭东区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='揭阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '445222','揭西县','广东省揭阳市揭西县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='揭阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '445224','惠来县','广东省揭阳市惠来县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='揭阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '445281','普宁市','广东省揭阳市普宁市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='揭阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '445300','云浮市','广东省云浮市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='广东省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '445301','市辖区','广东省云浮市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='云浮市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '445302','云城区','广东省云浮市云城区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='云浮市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '445303','云安区','广东省云浮市云安区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='云浮市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '445321','新兴县','广东省云浮市新兴县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='云浮市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '445322','郁南县','广东省云浮市郁南县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='云浮市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '445381','罗定市','广东省云浮市罗定市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='云浮市'));
#-----广西壮族自治区#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450000','广西壮族自治区','广西壮族自治区',1,NULL);

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450100','南宁市','广西壮族自治区南宁市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='广西壮族自治区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450101','市辖区','广西壮族自治区南宁市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南宁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450102','兴宁区','广西壮族自治区南宁市兴宁区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南宁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450103','青秀区','广西壮族自治区南宁市青秀区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南宁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450105','江南区','广西壮族自治区南宁市江南区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南宁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450107','西乡塘区','广西壮族自治区南宁市西乡塘区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南宁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450108','良庆区','广西壮族自治区南宁市良庆区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南宁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450109','邕宁区','广西壮族自治区南宁市邕宁区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南宁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450110','武鸣区','广西壮族自治区南宁市武鸣区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南宁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450123','隆安县','广西壮族自治区南宁市隆安县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南宁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450124','马山县','广西壮族自治区南宁市马山县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南宁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450125','上林县','广西壮族自治区南宁市上林县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南宁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450126','宾阳县','广西壮族自治区南宁市宾阳县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南宁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450127','横县','广西壮族自治区南宁市横县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南宁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450200','柳州市','广西壮族自治区柳州市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='广西壮族自治区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450201','市辖区','广西壮族自治区柳州市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='柳州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450202','城中区','广西壮族自治区柳州市城中区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='柳州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450203','鱼峰区','广西壮族自治区柳州市鱼峰区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='柳州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450204','柳南区','广西壮族自治区柳州市柳南区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='柳州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450205','柳北区','广西壮族自治区柳州市柳北区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='柳州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450206','柳江区','广西壮族自治区柳州市柳江区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='柳州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450222','柳城县','广西壮族自治区柳州市柳城县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='柳州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450223','鹿寨县','广西壮族自治区柳州市鹿寨县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='柳州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450224','融安县','广西壮族自治区柳州市融安县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='柳州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450225','融水苗族自治县','广西壮族自治区柳州市融水苗族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='柳州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450226','三江侗族自治县','广西壮族自治区柳州市三江侗族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='柳州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450300','桂林市','广西壮族自治区桂林市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='广西壮族自治区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450301','市辖区','广西壮族自治区桂林市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='桂林市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450302','秀峰区','广西壮族自治区桂林市秀峰区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='桂林市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450303','叠彩区','广西壮族自治区桂林市叠彩区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='桂林市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450304','象山区','广西壮族自治区桂林市象山区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='桂林市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450305','七星区','广西壮族自治区桂林市七星区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='桂林市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450311','雁山区','广西壮族自治区桂林市雁山区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='桂林市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450312','临桂区','广西壮族自治区桂林市临桂区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='桂林市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450321','阳朔县','广西壮族自治区桂林市阳朔县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='桂林市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450323','灵川县','广西壮族自治区桂林市灵川县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='桂林市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450324','全州县','广西壮族自治区桂林市全州县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='桂林市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450325','兴安县','广西壮族自治区桂林市兴安县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='桂林市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450326','永福县','广西壮族自治区桂林市永福县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='桂林市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450327','灌阳县','广西壮族自治区桂林市灌阳县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='桂林市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450328','龙胜各族自治县','广西壮族自治区桂林市龙胜各族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='桂林市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450329','资源县','广西壮族自治区桂林市资源县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='桂林市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450330','平乐县','广西壮族自治区桂林市平乐县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='桂林市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450331','荔浦县','广西壮族自治区桂林市荔浦县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='桂林市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450332','恭城瑶族自治县','广西壮族自治区桂林市恭城瑶族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='桂林市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450400','梧州市','广西壮族自治区梧州市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='广西壮族自治区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450401','市辖区','广西壮族自治区梧州市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='梧州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450403','万秀区','广西壮族自治区梧州市万秀区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='梧州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450405','长洲区','广西壮族自治区梧州市长洲区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='梧州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450406','龙圩区','广西壮族自治区梧州市龙圩区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='梧州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450421','苍梧县','广西壮族自治区梧州市苍梧县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='梧州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450422','藤县','广西壮族自治区梧州市藤县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='梧州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450423','蒙山县','广西壮族自治区梧州市蒙山县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='梧州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450481','岑溪市','广西壮族自治区梧州市岑溪市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='梧州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450500','北海市','广西壮族自治区北海市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='广西壮族自治区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450501','市辖区','广西壮族自治区北海市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='北海市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450502','海城区','广西壮族自治区北海市海城区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='北海市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450503','银海区','广西壮族自治区北海市银海区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='北海市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450512','铁山港区','广西壮族自治区北海市铁山港区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='北海市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450521','合浦县','广西壮族自治区北海市合浦县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='北海市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450600','防城港市','广西壮族自治区防城港市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='广西壮族自治区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450601','市辖区','广西壮族自治区防城港市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='防城港市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450602','港口区','广西壮族自治区防城港市港口区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='防城港市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450603','防城区','广西壮族自治区防城港市防城区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='防城港市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450621','上思县','广西壮族自治区防城港市上思县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='防城港市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450681','东兴市','广西壮族自治区防城港市东兴市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='防城港市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450700','钦州市','广西壮族自治区钦州市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='广西壮族自治区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450701','市辖区','广西壮族自治区钦州市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='钦州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450702','钦南区','广西壮族自治区钦州市钦南区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='钦州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450703','钦北区','广西壮族自治区钦州市钦北区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='钦州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450721','灵山县','广西壮族自治区钦州市灵山县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='钦州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450722','浦北县','广西壮族自治区钦州市浦北县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='钦州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450800','贵港市','广西壮族自治区贵港市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='广西壮族自治区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450801','市辖区','广西壮族自治区贵港市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='贵港市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450802','港北区','广西壮族自治区贵港市港北区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='贵港市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450803','港南区','广西壮族自治区贵港市港南区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='贵港市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450804','覃塘区','广西壮族自治区贵港市覃塘区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='贵港市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450821','平南县','广西壮族自治区贵港市平南县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='贵港市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450881','桂平市','广西壮族自治区贵港市桂平市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='贵港市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450900','玉林市','广西壮族自治区玉林市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='广西壮族自治区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450901','市辖区','广西壮族自治区玉林市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='玉林市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450902','玉州区','广西壮族自治区玉林市玉州区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='玉林市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450903','福绵区','广西壮族自治区玉林市福绵区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='玉林市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450921','容县','广西壮族自治区玉林市容县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='玉林市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450922','陆川县','广西壮族自治区玉林市陆川县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='玉林市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450923','博白县','广西壮族自治区玉林市博白县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='玉林市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450924','兴业县','广西壮族自治区玉林市兴业县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='玉林市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '450981','北流市','广西壮族自治区玉林市北流市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='玉林市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '451000','百色市','广西壮族自治区百色市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='广西壮族自治区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '451001','市辖区','广西壮族自治区百色市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='百色市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '451002','右江区','广西壮族自治区百色市右江区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='百色市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '451021','田阳县','广西壮族自治区百色市田阳县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='百色市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '451022','田东县','广西壮族自治区百色市田东县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='百色市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '451023','平果县','广西壮族自治区百色市平果县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='百色市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '451024','德保县','广西壮族自治区百色市德保县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='百色市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '451026','那坡县','广西壮族自治区百色市那坡县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='百色市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '451027','凌云县','广西壮族自治区百色市凌云县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='百色市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '451028','乐业县','广西壮族自治区百色市乐业县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='百色市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '451029','田林县','广西壮族自治区百色市田林县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='百色市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '451030','西林县','广西壮族自治区百色市西林县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='百色市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '451031','隆林各族自治县','广西壮族自治区百色市隆林各族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='百色市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '451081','靖西市','广西壮族自治区百色市靖西市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='百色市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '451100','贺州市','广西壮族自治区贺州市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='广西壮族自治区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '451101','市辖区','广西壮族自治区贺州市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='贺州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '451102','八步区','广西壮族自治区贺州市八步区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='贺州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '451103','平桂区','广西壮族自治区贺州市平桂区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='贺州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '451121','昭平县','广西壮族自治区贺州市昭平县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='贺州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '451122','钟山县','广西壮族自治区贺州市钟山县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='贺州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '451123','富川瑶族自治县','广西壮族自治区贺州市富川瑶族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='贺州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '451200','河池市','广西壮族自治区河池市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='广西壮族自治区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '451201','市辖区','广西壮族自治区河池市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='河池市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '451202','金城江区','广西壮族自治区河池市金城江区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='河池市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '451221','南丹县','广西壮族自治区河池市南丹县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='河池市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '451222','天峨县','广西壮族自治区河池市天峨县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='河池市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '451223','凤山县','广西壮族自治区河池市凤山县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='河池市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '451224','东兰县','广西壮族自治区河池市东兰县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='河池市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '451225','罗城仫佬族自治县','广西壮族自治区河池市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='河池市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '451226','环江毛南族自治县','广西壮族自治区河池市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='河池市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '451227','巴马瑶族自治县','广西壮族自治区河池市巴马瑶族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='河池市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '451228','都安瑶族自治县','广西壮族自治区河池市都安瑶族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='河池市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '451229','大化瑶族自治县','广西壮族自治区河池市大化瑶族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='河池市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '451281','宜州市','广西壮族自治区河池市宜州市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='河池市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '451300','来宾市','广西壮族自治区来宾市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='广西壮族自治区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '451301','市辖区','广西壮族自治区来宾市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='来宾市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '451302','兴宾区','广西壮族自治区来宾市兴宾区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='来宾市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '451321','忻城县','广西壮族自治区来宾市忻城县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='来宾市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '451322','象州县','广西壮族自治区来宾市象州县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='来宾市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '451323','武宣县','广西壮族自治区来宾市武宣县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='来宾市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '451324','金秀瑶族自治县','广西壮族自治区来宾市金秀瑶族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='来宾市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '451381','合山市','广西壮族自治区来宾市合山市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='来宾市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '451400','崇左市','广西壮族自治区崇左市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='广西壮族自治区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '451401','市辖区','广西壮族自治区崇左市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='崇左市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '451402','江州区','广西壮族自治区崇左市江州区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='崇左市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '451421','扶绥县','广西壮族自治区崇左市扶绥县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='崇左市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '451422','宁明县','广西壮族自治区崇左市宁明县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='崇左市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '451423','龙州县','广西壮族自治区崇左市龙州县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='崇左市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '451424','大新县','广西壮族自治区崇左市大新县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='崇左市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '451425','天等县','广西壮族自治区崇左市天等县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='崇左市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '451481','凭祥市','广西壮族自治区崇左市凭祥市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='崇左市'));
#-----海南省#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '460000','海南省','海南省',1,NULL);

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '460100','海口市','海南省海口市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='海南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '460101','市辖区','海南省海口市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='海口市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '460105','秀英区','海南省海口市秀英区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='海口市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '460106','龙华区','海南省海口市龙华区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='海口市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '460107','琼山区','海南省海口市琼山区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='海口市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '460108','美兰区','海南省海口市美兰区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='海口市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '460200','三亚市','海南省三亚市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='海南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '460201','市辖区','海南省三亚市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='三亚市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '460202','海棠区','海南省三亚市海棠区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='三亚市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '460203','吉阳区','海南省三亚市吉阳区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='三亚市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '460204','天涯区','海南省三亚市天涯区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='三亚市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '460205','崖州区','海南省三亚市崖州区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='三亚市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '460300','三沙市','海南省三沙市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='海南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '460400','儋州市','海南省儋州市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='海南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '469001','五指山市','海南省五指山市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='海南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '469002','琼海市','海南省琼海市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='海南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '469005','文昌市','海南省文昌市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='海南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '469006','万宁市','海南省万宁市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='海南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '469007','东方市','海南省东方市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='海南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '469021','定安县','海南省定安县', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='海南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '469022','屯昌县','海南省屯昌县', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='海南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '469023','澄迈县','海南省澄迈县', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='海南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '469024','临高县','海南省临高县', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='海南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '469025','白沙黎族自治县','海南省白沙黎族自治县', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='海南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '469026','昌江黎族自治县','海南省昌江黎族自治县', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='海南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '469027','乐东黎族自治县','海南省乐东黎族自治县', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='海南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '469028','陵水黎族自治县','海南省陵水黎族自治县', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='海南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '469029','保亭黎族苗族自治县','海南省保亭黎族苗族自治县', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='海南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '469030','琼中黎族苗族自治县','海南省琼中黎族苗族自治县', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='海南省'));
#-----四川省#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510000','四川省','四川省',1,NULL);

#-----成都市#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510100','成都市','四川省成都市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='四川省'));

#-----区、县#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510101','市辖区','四川省成都市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='成都市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510104','锦江区','四川省成都市锦江区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='成都市'));


INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510105','青羊区','四川省成都市青羊区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='成都市'));


INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510106','金牛区','四川省成都市金牛区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='成都市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510107','武侯区','四川省成都市武侯区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='成都市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510108','成华区','四川省成都市成华区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='成都市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510112','龙泉驿区','四川省成都市龙泉驿区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='成都市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510113','青白江区','四川省成都市青白江区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='成都市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510114','新都区','四川省成都市新都区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='成都市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510115','温江区','四川省成都市温江区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='成都市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510116','双流区','四川省成都市双流区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='成都市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510121','金堂县','四川省成都市金堂县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='成都市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510124','郫县','四川省成都市郫县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='成都市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510129','大邑县','四川省成都市大邑县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='成都市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510131','蒲江县','四川省成都市蒲江县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='成都市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510132','新津县','四川省成都市新津县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='成都市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510181','都江堰市','四川省成都市都江堰市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='成都市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510182','彭州市','四川省成都市彭州市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='成都市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510183','邛崃市','四川省成都市邛崃市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='成都市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510184','崇州市','四川省成都市崇州市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='成都市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510185','简阳市','四川省成都市简阳市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='成都市'));

#-----自贡市#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510300','自贡市','四川省自贡市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='四川省'));

#-----区、县#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510301','市辖区','四川省自贡市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='自贡市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510302','自流井区','四川省自贡市自流井区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='自贡市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510303','贡井区','四川省自贡市贡井区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='自贡市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510304','大安区','四川省自贡市大安区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='自贡市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510311','沿滩区','四川省自贡市沿滩区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='自贡市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510321','荣县','四川省自贡市荣县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='自贡市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510322','富顺县','四川省自贡市富顺县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='自贡市'));

#-----攀枝花市#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510400','攀枝花市','四川省攀枝花市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='四川省'));

#-----区、县#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510401','市辖区','四川省攀枝花市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='攀枝花市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510402','东区','四川省攀枝花市东区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='攀枝花市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510403','西区','四川省攀枝花市西区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='攀枝花市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510411','仁和区','四川省攀枝花市仁和区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='攀枝花市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510421','米易县','四川省攀枝花市米易县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='攀枝花市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510422','盐边县','四川省攀枝花市盐边县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='攀枝花市'));

#-----泸州市#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510500','泸州市','四川省泸州市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='四川省'));

#-----区、县#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510501','市辖区','四川省泸州市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='泸州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510502','江阳区','四川省泸州市江阳区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='泸州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510503','纳溪区','四川省泸州市纳溪区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='泸州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510504','龙马潭区','四川省泸州市龙马潭区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='泸州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510521','泸县','四川省泸州市泸县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='泸州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510522','合江县','四川省泸州市合江县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='泸州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510524','叙永县','四川省泸州市叙永县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='泸州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510525','古蔺县','四川省泸州市古蔺县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='泸州市'));

#-----德阳市#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510600','德阳市','四川省德阳市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='四川省'));

#-----区、县#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510601','市辖区','四川省德阳市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='德阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510603','旌阳区','四川省德阳市旌阳区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='德阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510623','中江县','四川省德阳市中江县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='德阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510626','罗江县','四川省德阳市罗江县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='德阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510681','广汉市','四川省德阳市广汉市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='德阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510682','什邡市','四川省德阳市什邡市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='德阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510683','绵竹市','四川省德阳市绵竹市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='德阳市'));

#-----绵阳市#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510700','绵阳市','四川省绵阳市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='四川省'));

#-----区、县#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510701','市辖区','四川省绵阳市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='绵阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510703','涪城区','四川省绵阳市涪城区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='绵阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510704','游仙区','四川省绵阳市游仙区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='绵阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510705','安州区','四川省绵阳市安州区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='绵阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510722','三台县','四川省绵阳市三台县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='绵阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510723','盐亭县','四川省绵阳市盐亭县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='绵阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510725','梓潼县','四川省绵阳市梓潼县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='绵阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510726','北川羌族自治县','四川省绵阳市北川羌族自治县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='绵阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510727','平武县','四川省绵阳市平武县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='绵阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510781','江油市','四川省绵阳市江油市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='绵阳市'));

#-----广元市#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510800','广元市','四川省广元市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='四川省'));

#-----区、县#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510801','市辖区','四川省广元市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='广元市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510802','利州区','四川省广元市利州区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='广元市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510811','昭化区','四川省广元市昭化区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='广元市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510812','朝天区','四川省广元市朝天区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='广元市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510821','旺苍县','四川省广元市旺苍县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='广元市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510822','青川县','四川省广元市青川县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='广元市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510823','剑阁县','四川省广元市剑阁县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='广元市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510824','苍溪县','四川省广元市苍溪县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='广元市'));

#-----遂宁市#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510900','遂宁市','四川省遂宁市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='四川省'));

#-----区、县#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510901','市辖区','四川省遂宁市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='遂宁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510903','船山区','四川省遂宁市船山区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='遂宁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510904','安居区','四川省遂宁市安居区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='遂宁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510921','蓬溪县','四川省遂宁市蓬溪县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='遂宁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510922','射洪县','四川省遂宁市射洪县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='遂宁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('510923','大英县','四川省遂宁市大英县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='遂宁市'));

#-----内江市#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511000','内江市','四川省内江市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='四川省'));

#-----区、县#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511001','市辖区','四川省内江市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='内江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511002','市中区','四川省内江市市中区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='内江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511011','东兴区','四川省内江市东兴区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='内江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511024','威远县','四川省内江市威远县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='内江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511025','资中县','四川省内江市资中县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='内江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511028','隆昌县','四川省内江市隆昌县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='内江市'));

#-----乐山市#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511100','乐山市','四川省内江市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='四川省'));

#-----区、县#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511101','市辖区','四川省乐山市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='乐山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511102','市中区','四川省乐山市市中区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='乐山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511111','沙湾区','四川省乐山市沙湾区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='乐山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511112','五通桥区','四川省乐山市五通桥区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='乐山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511113','金口河区','四川省乐山市金口河区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='乐山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511123','犍为县','四川省乐山市犍为县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='乐山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511124','井研县','四川省乐山市井研县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='乐山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511126','夹江县','四川省乐山市夹江县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='乐山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511129','沐川县','四川省乐山市沐川县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='乐山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511132','峨边彝族自治县','四川省乐山市峨边彝族自治县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='乐山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511133','马边彝族自治县','四川省乐山市马边彝族自治县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='乐山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511181','峨眉山市','四川省乐山市峨眉山市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='乐山市'));

#-----南充市#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511300','南充市','四川省南充市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='四川省'));

#-----区、县#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511301','市辖区','四川省南充市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南充市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511302','顺庆区','四川省南充市顺庆区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南充市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511303','高坪区','四川省南充市高坪区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南充市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511304','嘉陵区','四川省南充市嘉陵区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南充市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511321','南部县','四川省南充市南部县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南充市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511322','营山县','四川省南充市营山县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南充市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511323','蓬安县','四川省南充市蓬安县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南充市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511324','仪陇县','四川省南充市仪陇县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南充市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511325','西充县','四川省南充市西充县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南充市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511381','阆中市','四川省南充市阆中市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='南充市'));

#-----眉山市#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511400','眉山市','四川省眉山市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='四川省'));

#-----区、县#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511401','市辖区','四川省眉山市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='眉山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511402','东坡区','四川省眉山市东坡区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='眉山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511403','彭山区','四川省眉山市彭山区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='眉山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511421','仁寿县','四川省眉山市仁寿县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='眉山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511423','洪雅县','四川省眉山市洪雅县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='眉山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511424','丹棱县','四川省眉山市丹棱县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='眉山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511425','青神县','四川省眉山市青神县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='眉山市'));

#-----宜宾市#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511500','宜宾市','四川省宜宾市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='四川省'));

#-----区、县#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511501','市辖区','四川省宜宾市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宜宾市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511502','翠屏区','四川省宜宾市翠屏区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宜宾市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511503','南溪区','四川省宜宾市南溪区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宜宾市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511521','宜宾县','四川省宜宾市宜宾县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宜宾市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511523','江安县','四川省宜宾市江安县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宜宾市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511524','长宁县','四川省宜宾市长宁县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宜宾市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511525','高县','四川省宜宾市高县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宜宾市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511526','珙县','四川省宜宾市珙县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宜宾市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511527','筠连县','四川省宜宾市筠连县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宜宾市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511528','兴文县','四川省宜宾市兴文县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宜宾市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511529','屏山县','四川省宜宾市屏山县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宜宾市'));

#-----广安市#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511600','广安市','四川省广安市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='四川省'));

#-----区、县#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511601','市辖区','四川省广安市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='广安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511602','广安区','四川省广安市广安区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='广安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511603','前锋区','四川省广安市前锋区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='广安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511621','岳池县','四川省广安市岳池县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='广安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511622','武胜县','四川省广安市武胜县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='广安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511623','邻水县','四川省广安市邻水县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='广安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511681','华蓥市','四川省广安市华蓥市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='广安市'));

#-----达州市#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511700','达州市','四川省达州市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='四川省'));

#-----区、县#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511701','市辖区','四川省达州市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='达州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511702','通川区','四川省达州市通川区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='达州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511703','达川区','四川省达州市达川区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='达州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511722','宣汉县','四川省达州市宣汉县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='达州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511723','开江县','四川省达州市开江县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='达州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511724','大竹县','四川省达州市大竹县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='达州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511725','渠县','四川省达州市渠县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='达州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511781','万源市','四川省达州市万源市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='达州市'));

#-----雅安市#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511800','雅安市','四川省雅安市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='四川省'));

#-----区、县#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511801','市辖区','四川省雅安市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='雅安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511802','雨城区','四川省雅安市雨城区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='雅安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511803','名山区','四川省雅安市名山区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='雅安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511822','荥经县','四川省雅安市荥经县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='雅安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511823','汉源县','四川省雅安市汉源县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='雅安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511824','石棉县','四川省雅安市石棉县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='雅安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511825','天全县','四川省雅安市天全县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='雅安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511826','芦山县','四川省雅安市芦山县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='雅安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511827','宝兴县','四川省雅安市宝兴县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='雅安市'));

#-----巴中市#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511900','巴中市','四川省巴中市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='四川省'));

#-----区、县#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511901','市辖区','四川省巴中市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='巴中市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511902','巴州区','四川省巴中市巴州区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='巴中市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511903','恩阳区','四川省巴中市恩阳区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='巴中市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511921','通江县','四川省巴中市通江县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='巴中市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511922','南江县','四川省巴中市南江县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='巴中市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('511923','平昌县','四川省巴中市平昌县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='巴中市'));

#-----资阳市#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('512000','资阳市','四川省资阳市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='四川省'));

#-----区、县#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('512001','市辖区','四川省资阳市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='资阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('512002','雁江区','四川省资阳市雁江区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='资阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('512021','安岳县','四川省资阳市安岳县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='资阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('512022','乐至县','四川省资阳市乐至县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='资阳市'));

#-----阿坝藏族羌族自治州#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('513200','阿坝藏族羌族自治州','四川省阿坝藏族羌族自治州',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='四川省'));

#-----区、县#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('513201','马尔康市','四川省阿坝藏族羌族自治州马尔康市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阿坝藏族羌族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('513221','汶川县','四川省阿坝藏族羌族自治州汶川县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阿坝藏族羌族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('513222','理县','四川省阿坝藏族羌族自治州理县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阿坝藏族羌族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('513223','茂县','四川省阿坝藏族羌族自治州茂县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阿坝藏族羌族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('513224','松潘县','四川省巴中市松潘县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阿坝藏族羌族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('513225','九寨沟县','四川省阿坝藏族羌族自治州九寨沟县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阿坝藏族羌族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('513226','金川县','四川省阿坝藏族羌族自治州金川县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阿坝藏族羌族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('513227','小金县','四川省阿坝藏族羌族自治州小金县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阿坝藏族羌族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('513228','黑水县','四川省阿坝藏族羌族自治州黑水县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阿坝藏族羌族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('513230','壤塘县','四川省阿坝藏族羌族自治州壤塘县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阿坝藏族羌族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('513231','阿坝县','四川省阿坝藏族羌族自治州阿坝县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阿坝藏族羌族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('513232','若尔盖县','四川省阿坝藏族羌族自治州若尔盖县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阿坝藏族羌族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('513233','红原县','四川省阿坝藏族羌族自治州红原县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阿坝藏族羌族自治州'));

#-----甘孜藏族自治州#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('513300','甘孜藏族自治州','四川省甘孜藏族自治州',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='四川省'));

#-----区、县#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('513301','康定市','四川省甘孜藏族自治州康定市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='甘孜藏族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('513322','泸定县','四川省甘孜藏族自治州泸定县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='甘孜藏族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('513323','丹巴县','四川省甘孜藏族自治州丹巴县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='甘孜藏族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('513324','九龙县','四川省甘孜藏族自治州九龙县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='甘孜藏族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('513325','雅江县','四川省甘孜藏族自治州雅江县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='甘孜藏族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('513326','道孚县','四川省甘孜藏族自治州道孚县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='甘孜藏族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('513327','炉霍县','四川省甘孜藏族自治州炉霍县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='甘孜藏族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('513328','甘孜县','四川省甘孜藏族自治州甘孜县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='甘孜藏族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('513329','新龙县','四川省甘孜藏族自治州新龙县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='甘孜藏族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('513330','德格县','四川省甘孜藏族自治州德格县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='甘孜藏族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('513331','白玉县','四川省甘孜藏族自治州白玉县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='甘孜藏族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('513332','石渠县','四川省甘孜藏族自治州石渠县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='甘孜藏族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('513333','色达县','四川省甘孜藏族自治州色达县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='甘孜藏族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('513334','理塘县','四川省甘孜藏族自治州理塘县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='甘孜藏族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('513335','巴塘县','四川省甘孜藏族自治州巴塘县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='甘孜藏族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('513336','乡城县','四川省甘孜藏族自治州乡城县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='甘孜藏族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('513337','稻城县','四川省甘孜藏族自治州稻城县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='甘孜藏族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('513338','得荣县','四川省甘孜藏族自治州得荣县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='甘孜藏族自治州'));

#-----凉山彝族自治州#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('513400','凉山彝族自治州','四川省凉山彝族自治州',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='四川省'));

#-----区、县#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('513401','西昌市','四川省凉山彝族自治州西昌市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='凉山彝族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('513422','木里藏族自治县','四川省凉山彝族自治州木里藏族自治县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='凉山彝族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('513423','盐源县','四川省凉山彝族自治州盐源县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='凉山彝族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('513424','德昌县','四川省凉山彝族自治州德昌县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='凉山彝族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('513425','会理县','四川省凉山彝族自治州会理县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='凉山彝族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('513426','会东县','四川省凉山彝族自治州会东县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='凉山彝族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('513427','宁南县','四川省凉山彝族自治州宁南县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='凉山彝族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('513428','普格县','四川省凉山彝族自治州普格县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='凉山彝族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('513429','布拖县','四川省凉山彝族自治州布拖县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='凉山彝族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('513430','金阳县','四川省凉山彝族自治州金阳县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='凉山彝族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('513431','昭觉县','四川省凉山彝族自治州昭觉县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='凉山彝族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('513432','喜德县','四川省凉山彝族自治州喜德县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='凉山彝族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('513433','冕宁县','四川省凉山彝族自治州冕宁县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='凉山彝族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('513434','越西县','四川省凉山彝族自治州越西县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='凉山彝族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('513435','甘洛县','四川省凉山彝族自治州甘洛县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='凉山彝族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('513436','美姑县','四川省凉山彝族自治州美姑县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='凉山彝族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('513437','雷波县','四川省凉山彝族自治州雷波县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='凉山彝族自治州'));

#-----贵州省#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520000','贵州省','贵州省',1,NULL);

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520100','贵阳市','贵州省贵阳市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='贵州省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520101','市辖区','贵州省贵阳市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='贵阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520102','南明区','贵州省贵阳市南明区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='贵阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520103','云岩区','贵州省贵阳市云岩区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='贵阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520111','花溪区','贵州省贵阳市花溪区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='贵阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520112','乌当区','贵州省贵阳市乌当区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='贵阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520113','白云区','贵州省贵阳市白云区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='贵阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520115','观山湖区','贵州省贵阳市观山湖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='贵阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520121','开阳县','贵州省贵阳市开阳县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='贵阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520122','息烽县','贵州省贵阳市息烽县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='贵阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520123','修文县','贵州省贵阳市修文县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='贵阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520181','清镇市','贵州省贵阳市清镇市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='贵阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520200','六盘水市','贵州省六盘水市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='贵州省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520201','钟山区','贵州省六盘水市钟山区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='六盘水市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520203','六枝特区','贵州省六盘水市六枝特区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='六盘水市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520221','水城县','贵州省六盘水市水城县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='六盘水市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520222','盘县','贵州省六盘水市盘县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='六盘水市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520300','遵义市','贵州省遵义市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='贵州省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520301','市辖区','贵州省遵义市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='遵义市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520302','红花岗区','贵州省遵义市红花岗区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='遵义市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520303','汇川区','贵州省遵义市汇川区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='遵义市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520304','播州区','贵州省遵义市播州区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='遵义市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520322','桐梓县','贵州省遵义市桐梓县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='遵义市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520323','绥阳县','贵州省遵义市绥阳县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='遵义市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520324','正安县','贵州省遵义市正安县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='遵义市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520325','道真仡佬族苗族自治县','贵州省遵义市道真仡佬族苗族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='遵义市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520326','务川仡佬族苗族自治县','贵州省遵义市务川仡佬族苗族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='遵义市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520327','凤冈县','贵州省遵义市凤冈县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='遵义市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520328','湄潭县','贵州省遵义市湄潭县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='遵义市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520329','余庆县','贵州省遵义市余庆县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='遵义市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520330','习水县','贵州省遵义市习水县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='遵义市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520381','赤水市','贵州省遵义市赤水市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='遵义市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520382','仁怀市','贵州省遵义市仁怀市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='遵义市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520400','安顺市','贵州省安顺市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='贵州省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520401','市辖区','贵州省安顺市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='安顺市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520402','西秀区','贵州省安顺市西秀区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='安顺市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520403','平坝区','贵州省安顺市平坝区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='安顺市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520422','普定县','贵州省安顺市普定县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='安顺市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520423','镇宁布依族苗族自治县','贵州省安顺市镇宁布依族苗族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='安顺市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520424','关岭布依族苗族自治县','贵州省安顺市关岭布依族苗族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='安顺市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520425','紫云苗族布依族自治县','贵州省安顺市紫云苗族布依族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='安顺市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520500','毕节市','贵州省毕节市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='贵州省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520501','市辖区','贵州省毕节市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='毕节市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520502','七星关区','贵州省毕节市七星关区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='毕节市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520521','大方县','贵州省毕节市大方县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='毕节市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520522','黔西县','贵州省毕节市黔西县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='毕节市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520523','金沙县','贵州省毕节市金沙县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='毕节市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520524','织金县','贵州省毕节市织金县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='毕节市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520525','纳雍县','贵州省毕节市纳雍县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='毕节市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520526','威宁彝族回族苗族自治县','贵州省毕节市威宁彝族回族苗族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='毕节市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520527','赫章县','贵州省毕节市赫章县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='毕节市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520600','铜仁市','贵州省铜仁市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='贵州省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520601','市辖区','贵州省铜仁市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='铜仁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520602','碧江区','贵州省铜仁市碧江区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='铜仁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520603','万山区','贵州省铜仁市万山区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='铜仁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520621','江口县','贵州省铜仁市江口县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='铜仁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520622','玉屏侗族自治县','贵州省铜仁市玉屏侗族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='铜仁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520623','石阡县','贵州省铜仁市石阡县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='铜仁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520624','思南县','贵州省铜仁市思南县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='铜仁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520625','印江土家族苗族自治县','贵州省铜仁市印江土家族苗族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='铜仁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520626','德江县','贵州省铜仁市德江县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='铜仁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520627','沿河土家族自治县','贵州省铜仁市沿河土家族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='铜仁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '520628','松桃苗族自治县','贵州省铜仁市松桃苗族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='铜仁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '522300','黔西南布依族苗族自治州','贵州省黔西南布依族苗族自治州', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='贵州省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '522301','兴义市','贵州省黔西南布依族苗族自治州兴义市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黔西南布依族苗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '522322','兴仁县','贵州省黔西南布依族苗族自治州兴仁县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黔西南布依族苗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '522323','普安县','贵州省黔西南布依族苗族自治州普安县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黔西南布依族苗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '522324','晴隆县','贵州省黔西南布依族苗族自治州晴隆县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黔西南布依族苗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '522325','贞丰县','贵州省黔西南布依族苗族自治州贞丰县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黔西南布依族苗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '522326','望谟县','贵州省黔西南布依族苗族自治州望谟县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黔西南布依族苗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '522327','册亨县','贵州省黔西南布依族苗族自治州册亨县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黔西南布依族苗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '522328','安龙县','贵州省黔西南布依族苗族自治州安龙县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黔西南布依族苗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '522600','黔东南苗族侗族自治州','贵州省黔东南苗族侗族自治州', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='贵州省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '522601','凯里市','贵州省黔东南苗族侗族自治州凯里市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黔东南苗族侗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '522622','黄平县','贵州省黔东南苗族侗族自治州黄平县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黔东南苗族侗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '522623','施秉县','贵州省黔东南苗族侗族自治州施秉县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黔东南苗族侗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '522624','三穗县','贵州省黔东南苗族侗族自治州三穗县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黔东南苗族侗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '522625','镇远县','贵州省黔东南苗族侗族自治州镇远县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黔东南苗族侗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '522626','岑巩县','贵州省黔东南苗族侗族自治州岑巩县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黔东南苗族侗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '522627','天柱县','贵州省黔东南苗族侗族自治州天柱县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黔东南苗族侗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '522628','锦屏县','贵州省黔东南苗族侗族自治州锦屏县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黔东南苗族侗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '522629','剑河县','贵州省黔东南苗族侗族自治州剑河县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黔东南苗族侗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '522630','台江县','贵州省黔东南苗族侗族自治州台江县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黔东南苗族侗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '522631','黎平县','贵州省黔东南苗族侗族自治州黎平县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黔东南苗族侗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '522632','榕江县','贵州省黔东南苗族侗族自治州榕江县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黔东南苗族侗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '522633','从江县','贵州省黔东南苗族侗族自治州从江县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黔东南苗族侗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '522634','雷山县','贵州省黔东南苗族侗族自治州雷山县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黔东南苗族侗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '522635','麻江县','贵州省黔东南苗族侗族自治州麻江县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黔东南苗族侗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '522636','丹寨县','贵州省黔东南苗族侗族自治州丹寨县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黔东南苗族侗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '522700','黔南布依族苗族自治州','贵州省黔南布依族苗族自治州', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='贵州省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '522701','都匀市','贵州省黔南布依族苗族自治州都匀市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黔南布依族苗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '522702','福泉市','贵州省黔南布依族苗族自治州福泉市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黔南布依族苗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '522722','荔波县','贵州省黔南布依族苗族自治州荔波县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黔南布依族苗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '522723','贵定县','贵州省黔南布依族苗族自治州贵定县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黔南布依族苗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '522725','瓮安县','贵州省黔南布依族苗族自治州瓮安县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黔南布依族苗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '522726','独山县','贵州省黔南布依族苗族自治州独山县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黔南布依族苗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '522727','平塘县','贵州省黔南布依族苗族自治州平塘县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黔南布依族苗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '522728','罗甸县','贵州省黔南布依族苗族自治州罗甸县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黔南布依族苗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '522729','长顺县','贵州省黔南布依族苗族自治州长顺县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黔南布依族苗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '522730','龙里县','贵州省黔南布依族苗族自治州龙里县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黔南布依族苗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '522731','惠水县','贵州省黔南布依族苗族自治州惠水县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黔南布依族苗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '522732','三都水族自治县','贵州省黔南布依族苗族自治州三都水族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黔南布依族苗族自治州'));
#-----云南省#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530000','云南省','云南省',1,NULL);

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530100','昆明市','云南省昆明市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='云南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530101','市辖区','云南省昆明市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='昆明市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530102','五华区','云南省昆明市五华区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='昆明市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530103','盘龙区','云南省昆明市盘龙区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='昆明市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530111','官渡区','云南省昆明市官渡区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='昆明市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530112','西山区','云南省昆明市西山区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='昆明市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530113','东川区','云南省昆明市东川区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='昆明市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530114','呈贡区','云南省昆明市呈贡区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='昆明市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530122','晋宁县','云南省昆明市晋宁县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='昆明市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530124','富民县','云南省昆明市富民县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='昆明市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530125','宜良县','云南省昆明市宜良县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='昆明市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530126','石林彝族自治县','云南省昆明市石林彝族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='昆明市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530127','嵩明县','云南省昆明市嵩明县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='昆明市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530128','禄劝彝族苗族自治县','云南省昆明市禄劝彝族苗族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='昆明市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530129','寻甸回族彝族自治县','云南省昆明市寻甸回族彝族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='昆明市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530181','安宁市','云南省昆明市安宁市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='昆明市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530300','曲靖市','云南省曲靖市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='云南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530301','市辖区','云南省曲靖市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='曲靖市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530302','麒麟区','云南省曲靖市麒麟区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='曲靖市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530303','沾益区','云南省曲靖市沾益区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='曲靖市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530321','马龙县','云南省曲靖市马龙县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='曲靖市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530322','陆良县','云南省曲靖市陆良县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='曲靖市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530323','师宗县','云南省曲靖市师宗县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='曲靖市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530324','罗平县','云南省曲靖市罗平县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='曲靖市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530325','富源县','云南省曲靖市富源县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='曲靖市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530326','会泽县','云南省曲靖市会泽县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='曲靖市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530381','宣威市','云南省曲靖市宣威市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='曲靖市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530400','玉溪市','云南省玉溪市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='云南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530401','市辖区','云南省玉溪市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='玉溪市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530402','红塔区','云南省玉溪市红塔区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='玉溪市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530403','江川区','云南省玉溪市江川区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='玉溪市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530422','澄江县','云南省玉溪市澄江县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='玉溪市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530423','通海县','云南省玉溪市通海县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='玉溪市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530424','华宁县','云南省玉溪市华宁县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='玉溪市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530425','易门县','云南省玉溪市易门县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='玉溪市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530426','峨山彝族自治县','云南省玉溪市峨山彝族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='玉溪市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530427','新平彝族傣族自治县','云南省玉溪市新平彝族傣族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='玉溪市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530428','元江哈尼族彝族傣族自治县','云南省玉溪市元江哈尼族彝族傣族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='玉溪市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530500','保山市','云南省保山市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='云南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530501','市辖区','云南省保山市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='保山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530502','隆阳区','云南省保山市隆阳区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='保山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530521','施甸县','云南省保山市施甸县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='保山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530523','龙陵县','云南省保山市龙陵县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='保山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530524','昌宁县','云南省保山市昌宁县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='保山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530581','腾冲市','云南省保山市腾冲市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='保山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530600','昭通市','云南省昭通市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='云南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530601','市辖区','云南省昭通市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='昭通市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530602','昭阳区','云南省昭通市昭阳区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='昭通市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530621','鲁甸县','云南省昭通市鲁甸县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='昭通市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530622','巧家县','云南省昭通市巧家县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='昭通市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530623','盐津县','云南省昭通市盐津县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='昭通市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530624','大关县','云南省昭通市大关县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='昭通市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530625','永善县','云南省昭通市永善县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='昭通市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530626','绥江县','云南省昭通市绥江县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='昭通市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530627','镇雄县','云南省昭通市镇雄县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='昭通市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530628','彝良县','云南省昭通市彝良县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='昭通市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530629','威信县','云南省昭通市威信县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='昭通市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530630','水富县','云南省昭通市水富县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='昭通市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530700','丽江市','云南省丽江市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='云南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530701','市辖区','云南省丽江市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='丽江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530702','古城区','云南省丽江市古城区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='丽江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530721','玉龙纳西族自治县','云南省丽江市玉龙纳西族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='丽江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530722','永胜县','云南省丽江市永胜县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='丽江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530723','华坪县','云南省丽江市华坪县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='丽江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530724','宁蒗彝族自治县','云南省丽江市宁蒗彝族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='丽江市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530800','普洱市','云南省普洱市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='云南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530801','市辖区','云南省普洱市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='普洱市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530802','思茅区','云南省普洱市思茅区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='普洱市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530821','宁洱哈尼族彝族自治县','云南省普洱市宁洱哈尼族彝族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='普洱市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530822','墨江哈尼族自治县','云南省普洱市墨江哈尼族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='普洱市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530823','景东彝族自治县','云南省普洱市景东彝族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='普洱市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530824','景谷傣族彝族自治县','云南省普洱市景谷傣族彝族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='普洱市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530825','镇沅彝族哈尼族拉祜族自治县','云南省普洱市镇沅彝族哈尼族拉祜族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='普洱市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530826','江城哈尼族彝族自治县','云南省普洱市江城哈尼族彝族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='普洱市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530827','孟连傣族拉祜族佤族自治县','云南省普洱市孟连傣族拉祜族佤族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='普洱市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530828','澜沧拉祜族自治县','云南省普洱市澜沧拉祜族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='普洱市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530829','西盟佤族自治县','云南省普洱市西盟佤族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='普洱市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530900','临沧市','云南省临沧市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='云南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530901','市辖区','云南省临沧市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='临沧市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530902','临翔区','云南省临沧市临翔区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='临沧市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530921','凤庆县','云南省临沧市凤庆县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='临沧市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530922','云县','云南省临沧市云县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='临沧市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530923','永德县','云南省临沧市永德县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='临沧市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530924','镇康县','云南省临沧市镇康县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='临沧市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530925','双江拉祜族佤族布朗族傣族自治县','云南省临沧市双江拉祜族佤族布朗族傣族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='临沧市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530926','耿马傣族佤族自治县','云南省临沧市耿马傣族佤族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='临沧市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '530927','沧源佤族自治县','云南省临沧市沧源佤族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='临沧市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '532300','楚雄彝族自治州','云南省楚雄彝族自治州', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='云南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '532301','楚雄市','云南省楚雄彝族自治州楚雄市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='楚雄彝族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '532322','双柏县','云南省楚雄彝族自治州双柏县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='楚雄彝族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '532323','牟定县','云南省楚雄彝族自治州牟定县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='楚雄彝族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '532324','南华县','云南省楚雄彝族自治州南华县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='楚雄彝族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '532325','姚安县','云南省楚雄彝族自治州姚安县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='楚雄彝族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '532326','大姚县','云南省楚雄彝族自治州大姚县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='楚雄彝族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '532327','永仁县','云南省楚雄彝族自治州永仁县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='楚雄彝族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '532328','元谋县','云南省楚雄彝族自治州元谋县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='楚雄彝族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '532329','武定县','云南省楚雄彝族自治州武定县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='楚雄彝族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '532331','禄丰县','云南省楚雄彝族自治州禄丰县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='楚雄彝族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '532500','红河哈尼族彝族自治州','云南省红河哈尼族彝族自治州', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='云南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '532501','个旧市','云南省红河哈尼族彝族自治州个旧市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='红河哈尼族彝族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '532502','开远市','云南省红河哈尼族彝族自治州开远市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='红河哈尼族彝族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '532503','蒙自市','云南省红河哈尼族彝族自治州蒙自市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='红河哈尼族彝族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '532504','弥勒市','云南省红河哈尼族彝族自治州弥勒市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='红河哈尼族彝族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '532523','屏边苗族自治县','云南省红河哈尼族彝族自治州屏边苗族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='红河哈尼族彝族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '532524','建水县','云南省红河哈尼族彝族自治州建水县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='红河哈尼族彝族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '532525','石屏县','云南省红河哈尼族彝族自治州石屏县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='红河哈尼族彝族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '532527','泸西县','云南省红河哈尼族彝族自治州泸西县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='红河哈尼族彝族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '532528','元阳县','云南省红河哈尼族彝族自治州元阳县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='红河哈尼族彝族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '532529','红河县','云南省红河哈尼族彝族自治州红河县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='红河哈尼族彝族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '532530','金平苗族瑶族傣族自治县','云南省红河哈尼族彝族自治州金平苗族瑶族傣族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='红河哈尼族彝族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '532531','绿春县','云南省红河哈尼族彝族自治州绿春县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='红河哈尼族彝族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '532532','河口瑶族自治县','云南省红河哈尼族彝族自治州河口瑶族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='红河哈尼族彝族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '532600','文山壮族苗族自治州','云南省文山壮族苗族自治州', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='云南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '532601','文山市','云南省文山壮族苗族自治州文山市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='文山壮族苗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '532622','砚山县','云南省文山壮族苗族自治州砚山县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='文山壮族苗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '532623','西畴县','云南省文山壮族苗族自治州西畴县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='文山壮族苗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '532624','麻栗坡县','云南省文山壮族苗族自治州麻栗坡县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='文山壮族苗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '532625','马关县','云南省文山壮族苗族自治州马关县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='文山壮族苗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '532626','丘北县','云南省文山壮族苗族自治州丘北县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='文山壮族苗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '532627','广南县','云南省文山壮族苗族自治州广南县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='文山壮族苗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '532628','富宁县','云南省文山壮族苗族自治州富宁县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='文山壮族苗族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '532800','西双版纳傣族自治州','云南省西双版纳傣族自治州', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='云南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '532801','景洪市','云南省西双版纳傣族自治州景洪市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='西双版纳傣族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '532822','勐海县','云南省西双版纳傣族自治州勐海县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='西双版纳傣族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '532823','勐腊县','云南省西双版纳傣族自治州勐腊县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='西双版纳傣族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '532900','大理白族自治州','云南省大理白族自治州', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='云南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '532901','大理市','云南省大理白族自治州大理市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='大理白族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '532922','漾濞彝族自治县','云南省大理白族自治州漾濞彝族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='大理白族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '532923','祥云县','云南省大理白族自治州祥云县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='大理白族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '532924','宾川县','云南省大理白族自治州宾川县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='大理白族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '532925','弥渡县','云南省大理白族自治州弥渡县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='大理白族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '532926','南涧彝族自治县','云南省大理白族自治州南涧彝族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='大理白族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '532927','巍山彝族回族自治县','云南省大理白族自治州巍山彝族回族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='大理白族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '532928','永平县','云南省大理白族自治州永平县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='大理白族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '532929','云龙县','云南省大理白族自治州云龙县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='大理白族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '532930','洱源县','云南省大理白族自治州洱源县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='大理白族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '532931','剑川县','云南省大理白族自治州剑川县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='大理白族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '532932','鹤庆县','云南省大理白族自治州鹤庆县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='大理白族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '533100','德宏傣族景颇族自治州','云南省德宏傣族景颇族自治州', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='云南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '533102','瑞丽市','云南省德宏傣族景颇族自治州瑞丽市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='广州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '533103','芒市','云南省德宏傣族景颇族自治州芒市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='广州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '533122','梁河县','云南省德宏傣族景颇族自治州梁河县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='广州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '533123','盈江县','云南省德宏傣族景颇族自治州盈江县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='广州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '533124','陇川县','云南省德宏傣族景颇族自治州陇川县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='广州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '533300','怒江傈僳族自治州','云南省怒江傈僳族自治州', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='云南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '533301','泸水市','云南省怒江傈僳族自治州泸水市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='怒江傈僳族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '533323','福贡县','云南省怒江傈僳族自治州福贡县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='怒江傈僳族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '533324','贡山独龙族怒族自治县','云南省怒江傈僳族自治州贡山独龙族怒族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='怒江傈僳族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '533325','兰坪白族普米族自治县','云南省怒江傈僳族自治州兰坪白族普米族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='怒江傈僳族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '533400','迪庆藏族自治州','云南省迪庆藏族自治州', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='云南省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '533401','香格里拉市','云南省迪庆藏族自治州香格里拉市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='迪庆藏族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '533422','德钦县','云南省迪庆藏族自治州德钦县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='迪庆藏族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '533423','维西傈僳族自治县','云南省迪庆藏族自治州维西傈僳族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='迪庆藏族自治州'));
#-----西藏自治区#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540000','西藏自治区','西藏自治区',1,NULL);

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540100','拉萨市','西藏自治区拉萨市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='西藏自治区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540101','市辖区','西藏自治区拉萨市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='拉萨市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540102','城关区','西藏自治区拉萨市城关区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='拉萨市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540103','堆龙德庆区','西藏自治区拉萨市堆龙德庆区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='拉萨市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540121','林周县','西藏自治区拉萨市林周县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='拉萨市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540122','当雄县','西藏自治区拉萨市当雄县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='拉萨市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540123','尼木县','西藏自治区拉萨市尼木县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='拉萨市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540124','曲水县','西藏自治区拉萨市曲水县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='拉萨市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540126','达孜县','西藏自治区拉萨市达孜县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='拉萨市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540127','墨竹工卡县','西藏自治区拉萨市墨竹工卡县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='拉萨市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540200','日喀则市','西藏自治区日喀则市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='西藏自治区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540202','桑珠孜区','西藏自治区日喀则市桑珠孜区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='日喀则市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540221','南木林县','西藏自治区日喀则市南木林县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='日喀则市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540222','江孜县','西藏自治区日喀则市江孜县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='日喀则市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540223','定日县','西藏自治区日喀则市定日县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='日喀则市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540224','萨迦县','西藏自治区日喀则市萨迦县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='日喀则市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540225','拉孜县','西藏自治区日喀则市拉孜县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='日喀则市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540226','昂仁县','西藏自治区日喀则市昂仁县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='日喀则市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540227','谢通门县','西藏自治区日喀则市谢通门县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='日喀则市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540228','白朗县','西藏自治区日喀则市白朗县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='日喀则市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540229','仁布县','西藏自治区日喀则市仁布县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='日喀则市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540230','康马县','西藏自治区日喀则市康马县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='日喀则市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540231','定结县','西藏自治区日喀则市定结县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='日喀则市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540232','仲巴县','西藏自治区日喀则市仲巴县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='日喀则市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540233','亚东县','西藏自治区日喀则市亚东县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='日喀则市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540234','吉隆县','西藏自治区日喀则市吉隆县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='日喀则市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540235','聂拉木县','西藏自治区日喀则市聂拉木县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='日喀则市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540236','萨嘎县','西藏自治区日喀则市萨嘎县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='日喀则市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540237','岗巴县','西藏自治区日喀则市岗巴县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='日喀则市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540300','昌都市','西藏自治区昌都市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='西藏自治区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540302','卡若区','西藏自治区昌都市卡若区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='昌都市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540321','江达县','西藏自治区昌都市江达县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='昌都市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540322','贡觉县','西藏自治区昌都市贡觉县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='昌都市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540323','类乌齐县','西藏自治区昌都市类乌齐县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='昌都市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540324','丁青县','西藏自治区昌都市丁青县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='昌都市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540325','察雅县','西藏自治区昌都市察雅县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='昌都市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540326','八宿县','西藏自治区昌都市八宿县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='昌都市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540327','左贡县','西藏自治区昌都市左贡县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='昌都市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540328','芒康县','西藏自治区昌都市芒康县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='昌都市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540329','洛隆县','西藏自治区昌都市洛隆县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='昌都市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540330','边坝县','西藏自治区昌都市边坝县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='昌都市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540400','林芝市','西藏自治区林芝市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='西藏自治区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540402','巴宜区','西藏自治区林芝市巴宜区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='林芝市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540421','工布江达县','西藏自治区林芝市工布江达县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='林芝市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540422','米林县','西藏自治区林芝市米林县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='林芝市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540423','墨脱县','西藏自治区林芝市墨脱县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='林芝市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540424','波密县','西藏自治区林芝市波密县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='林芝市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540425','察隅县','西藏自治区林芝市察隅县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='林芝市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540426','朗县','西藏自治区林芝市朗县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='林芝市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540500','山南市','西藏自治区山南市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='西藏自治区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540501','市辖区','西藏自治区山南市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='山南市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540502','乃东区','西藏自治区山南市乃东区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='山南市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540521','扎囊县','西藏自治区山南市扎囊县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='山南市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540522','贡嘎县','西藏自治区山南市贡嘎县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='山南市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540523','桑日县','西藏自治区山南市桑日县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='山南市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540524','琼结县','西藏自治区山南市琼结县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='山南市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540525','曲松县','西藏自治区山南市曲松县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='山南市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540526','措美县','西藏自治区山南市措美县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='山南市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540527','洛扎县','西藏自治区山南市洛扎县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='山南市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540528','加查县','西藏自治区山南市加查县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='山南市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540529','隆子县','西藏自治区山南市隆子县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='山南市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540530','错那县','西藏自治区山南市错那县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='山南市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '540531','浪卡子县','西藏自治区山南市浪卡子县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='山南市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '542400','那曲地区','西藏自治区那曲地区', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='西藏自治区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '542421','那曲县','西藏自治区那曲地区那曲县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='那曲地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '542422','嘉黎县','西藏自治区那曲地区嘉黎县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='那曲地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '542423','比如县','西藏自治区那曲地区比如县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='那曲地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '542424','聂荣县','西藏自治区那曲地区聂荣县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='那曲地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '542425','安多县','西藏自治区那曲地区安多县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='那曲地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '542426','申扎县','西藏自治区那曲地区申扎县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='那曲地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '542427','索县','西藏自治区那曲地区索县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='那曲地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '542428','班戈县','西藏自治区那曲地区班戈县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='那曲地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '542429','巴青县','西藏自治区那曲地区巴青县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='那曲地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '542430','尼玛县','西藏自治区那曲地区尼玛县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='那曲地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '542431','双湖县','西藏自治区那曲地区双湖县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='那曲地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '542500','阿里地区','西藏自治区阿里地区', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='西藏自治区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '542521','普兰县','西藏自治区阿里地区普兰县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阿里地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '542522','札达县','西藏自治区阿里地区札达县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阿里地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '542523','噶尔县','西藏自治区阿里地区噶尔县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阿里地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '542524','日土县','西藏自治区阿里地区日土县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阿里地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '542525','革吉县','西藏自治区阿里地区革吉县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阿里地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '542526','改则县','西藏自治区阿里地区改则县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阿里地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '542527','措勤县','西藏自治区阿里地区措勤县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阿里地区'));
#-----陕西省#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610000','陕西省','陕西省',1,NULL);

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610100','西安市','陕西省西安市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='陕西省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610101','市辖区','陕西省西安市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='西安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610102','新城区','陕西省西安市新城区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='西安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610103','碑林区','陕西省西安市碑林区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='西安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610104','莲湖区','陕西省西安市莲湖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='西安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610111','灞桥区','陕西省西安市灞桥区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='西安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610112','未央区','陕西省西安市未央区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='西安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610113','雁塔区','陕西省西安市雁塔区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='西安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610114','阎良区','陕西省西安市阎良区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='西安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610115','临潼区','陕西省西安市临潼区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='西安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610116','长安区','陕西省西安市长安区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='西安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610117','高陵区','陕西省西安市高陵区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='西安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610122','蓝田县','陕西省西安市蓝田县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='西安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610124','周至县','陕西省西安市周至县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='西安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610125','户县','陕西省西安市户县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='西安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610200','铜川市','陕西省铜川市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='陕西省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610201','市辖区','陕西省铜川市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='铜川市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610202','王益区','陕西省铜川市王益区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='铜川市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610203','印台区','陕西省铜川市印台区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='铜川市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610204','耀州区','陕西省铜川市耀州区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='铜川市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610222','宜君县','陕西省铜川市宜君县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='铜川市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610300','宝鸡市','陕西省宝鸡市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='陕西省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610301','市辖区','陕西省宝鸡市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宝鸡市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610302','渭滨区','陕西省宝鸡市渭滨区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宝鸡市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610303','金台区','陕西省宝鸡市金台区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宝鸡市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610304','陈仓区','陕西省宝鸡市陈仓区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宝鸡市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610322','凤翔县','陕西省宝鸡市凤翔县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宝鸡市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610323','岐山县','陕西省宝鸡市岐山县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宝鸡市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610324','扶风县','陕西省宝鸡市扶风县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宝鸡市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610326','眉县','陕西省宝鸡市眉县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宝鸡市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610327','陇县','陕西省宝鸡市陇县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宝鸡市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610328','千阳县','陕西省宝鸡市千阳县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宝鸡市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610329','麟游县','陕西省宝鸡市麟游县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宝鸡市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610330','凤县','陕西省宝鸡市凤县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宝鸡市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610331','太白县','陕西省宝鸡市太白县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='宝鸡市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610400','咸阳市','陕西省咸阳市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='陕西省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610401','市辖区','陕西省咸阳市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='咸阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610402','秦都区','陕西省咸阳市秦都区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='咸阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610403','杨陵区','陕西省咸阳市杨陵区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='咸阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610404','渭城区','陕西省咸阳市渭城区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='咸阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610422','三原县','陕西省咸阳市三原县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='咸阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610423','泾阳县','陕西省咸阳市泾阳县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='咸阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610424','乾县','陕西省咸阳市乾县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='咸阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610425','礼泉县','陕西省咸阳市礼泉县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='咸阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610426','永寿县','陕西省咸阳市永寿县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='咸阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610427','彬县','陕西省咸阳市彬县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='咸阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610428','长武县','陕西省咸阳市长武县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='咸阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610429','旬邑县','陕西省咸阳市旬邑县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='咸阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610430','淳化县','陕西省咸阳市淳化县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='咸阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610431','武功县','陕西省咸阳市武功县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='咸阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610481','兴平市','陕西省咸阳市兴平市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='咸阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610500','渭南市','陕西省渭南市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='陕西省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610501','市辖区','陕西省渭南市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='渭南市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610502','临渭区','陕西省渭南市临渭区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='渭南市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610503','华州区','陕西省渭南市华州区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='渭南市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610522','潼关县','陕西省渭南市潼关县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='渭南市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610523','大荔县','陕西省渭南市大荔县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='渭南市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610524','合阳县','陕西省渭南市合阳县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='渭南市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610525','澄城县','陕西省渭南市澄城县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='渭南市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610526','蒲城县','陕西省渭南市蒲城县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='渭南市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610527','白水县','陕西省渭南市白水县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='渭南市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610528','富平县','陕西省渭南市富平县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='渭南市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610581','韩城市','陕西省渭南市韩城市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='渭南市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610582','华阴市','陕西省渭南市华阴市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='渭南市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610600','延安市','陕西省延安市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='陕西省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610601','市辖区','陕西省延安市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='延安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610602','宝塔区','陕西省延安市宝塔区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='延安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610603','安塞区','陕西省延安市安塞区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='延安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610621','延长县','陕西省延安市延长县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='延安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610622','延川县','陕西省延安市延川县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='延安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610623','子长县','陕西省延安市子长县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='延安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610625','志丹县','陕西省延安市志丹县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='延安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610626','吴起县','陕西省延安市吴起县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='延安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610627','甘泉县','陕西省延安市甘泉县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='延安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610628','富县','陕西省延安市富县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='延安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610629','洛川县','陕西省延安市洛川县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='延安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610630','宜川县','陕西省延安市宜川县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='延安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610631','黄龙县','陕西省延安市黄龙县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='延安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610632','黄陵县','陕西省延安市黄陵县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='延安市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610700','汉中市','陕西省汉中市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='陕西省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610701','市辖区','陕西省汉中市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='汉中市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610702','汉台区','陕西省汉中市汉台区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='汉中市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610721','南郑县','陕西省汉中市南郑县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='汉中市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610722','城固县','陕西省汉中市城固县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='汉中市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610723','洋县','陕西省汉中市洋县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='汉中市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610724','西乡县','陕西省汉中市西乡县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='汉中市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610725','勉县','陕西省汉中市勉县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='汉中市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610726','宁强县','陕西省汉中市宁强县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='汉中市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610727','略阳县','陕西省汉中市略阳县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='汉中市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610728','镇巴县','陕西省汉中市镇巴县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='汉中市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610729','留坝县','陕西省汉中市留坝县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='汉中市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610730','佛坪县','陕西省汉中市佛坪县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='汉中市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610800','榆林市','陕西省榆林市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='陕西省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610801','市辖区','陕西省榆林市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='榆林市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610802','榆阳区','陕西省榆林市榆阳区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='榆林市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610803','横山区','陕西省榆林市横山区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='榆林市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610821','神木县','陕西省榆林市神木县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='榆林市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610822','府谷县','陕西省榆林市府谷县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='榆林市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610824','靖边县','陕西省榆林市靖边县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='榆林市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610825','定边县','陕西省榆林市定边县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='榆林市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610826','绥德县','陕西省榆林市绥德县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='榆林市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610827','米脂县','陕西省榆林市米脂县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='榆林市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610828','佳县','陕西省榆林市佳县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='榆林市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610829','吴堡县','陕西省榆林市吴堡县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='榆林市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610830','清涧县','陕西省榆林市清涧县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='榆林市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610831','子洲县','陕西省榆林市子洲县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='榆林市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610900','安康市','陕西省安康市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='陕西省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610901','市辖区','陕西省安康市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='安康市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610902','汉滨区','陕西省安康市汉滨区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='安康市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610921','汉阴县','陕西省安康市汉阴县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='安康市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610922','石泉县','陕西省安康市石泉县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='安康市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610923','宁陕县','陕西省安康市宁陕县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='安康市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610924','紫阳县','陕西省安康市紫阳县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='安康市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610925','岚皋县','陕西省安康市岚皋县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='安康市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610926','平利县','陕西省安康市平利县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='安康市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610927','镇坪县','陕西省安康市镇坪县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='安康市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610928','旬阳县','陕西省安康市旬阳县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='安康市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '610929','白河县','陕西省安康市白河县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='安康市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '611000','商洛市','陕西省商洛市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='陕西省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '611001','市辖区','陕西省商洛市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='商洛市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '611002','商州区','陕西省商洛市商州区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='商洛市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '611021','洛南县','陕西省商洛市洛南县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='商洛市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '611022','丹凤县','陕西省商洛市丹凤县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='商洛市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '611023','商南县','陕西省商洛市商南县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='商洛市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '611024','山阳县','陕西省商洛市山阳县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='商洛市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '611025','镇安县','陕西省商洛市镇安县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='商洛市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '611026','柞水县','陕西省商洛市柞水县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='商洛市'));
#-----甘肃省#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620000','甘肃省','甘肃省',1,NULL);

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620100','兰州市','甘肃省兰州市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='甘肃省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620101','市辖区','甘肃省兰州市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='兰州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620102','城关区','甘肃省兰州市城关区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='兰州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620103','七里河区','甘肃省兰州市七里河区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='兰州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620104','西固区','甘肃省兰州市西固区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='兰州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620105','安宁区','甘肃省兰州市安宁区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='兰州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620111','红古区','甘肃省兰州市红古区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='兰州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620121','永登县','甘肃省兰州市永登县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='兰州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620122','皋兰县','甘肃省兰州市皋兰县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='兰州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620123','榆中县','甘肃省兰州市榆中县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='兰州市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620200','嘉峪关市','甘肃省嘉峪关市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='甘肃省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620300','金昌市','甘肃省金昌市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='甘肃省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620301','市辖区','甘肃省金昌市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='金昌市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620302','金川区','甘肃省金昌市金川区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='金昌市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620321','永昌县','甘肃省金昌市永昌县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='金昌市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620400','白银市','甘肃省白银市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='甘肃省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620401','市辖区','甘肃省白银市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='白银市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620402','白银区','甘肃省白银市白银区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='白银市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620403','平川区','甘肃省白银市平川区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='白银市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620421','靖远县','甘肃省白银市靖远县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='白银市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620422','会宁县','甘肃省白银市会宁县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='白银市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620423','景泰县','甘肃省白银市景泰县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='白银市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620500','天水市','甘肃省天水市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='甘肃省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620501','市辖区','甘肃省天水市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='天水市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620502','秦州区','甘肃省天水市秦州区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='天水市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620503','麦积区','甘肃省天水市麦积区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='天水市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620521','清水县','甘肃省天水市清水县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='天水市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620522','秦安县','甘肃省天水市秦安县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='天水市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620523','甘谷县','甘肃省天水市甘谷县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='天水市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620524','武山县','甘肃省天水市武山县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='天水市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620525','张家川回族自治县','甘肃省天水市张家川回族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='天水市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620600','武威市','甘肃省武威市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='甘肃省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620601','市辖区','甘肃省武威市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='武威市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620602','凉州区','甘肃省武威市凉州区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='武威市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620621','民勤县','甘肃省武威市民勤县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='武威市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620622','古浪县','甘肃省武威市古浪县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='武威市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620623','天祝藏族自治县','甘肃省武威市天祝藏族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='武威市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620700','张掖市','甘肃省张掖市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='甘肃省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620701','市辖区','甘肃省张掖市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='张掖市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620702','甘州区','甘肃省张掖市甘州区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='张掖市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620721','肃南裕固族自治县','甘肃省张掖市肃南裕固族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='张掖市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620722','民乐县','甘肃省张掖市民乐县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='张掖市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620723','临泽县','甘肃省张掖市临泽县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='张掖市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620724','高台县','甘肃省张掖市高台县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='张掖市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620725','山丹县','甘肃省张掖市山丹县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='张掖市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620800','平凉市','甘肃省平凉市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='甘肃省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620801','市辖区','甘肃省平凉市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='平凉市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620802','崆峒区','甘肃省平凉市崆峒区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='平凉市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620821','泾川县','甘肃省平凉市泾川县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='平凉市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620822','灵台县','甘肃省平凉市灵台县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='平凉市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620823','崇信县','甘肃省平凉市崇信县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='平凉市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620824','华亭县','甘肃省平凉市华亭县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='平凉市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620825','庄浪县','甘肃省平凉市庄浪县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='平凉市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620826','静宁县','甘肃省平凉市静宁县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='平凉市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620900','酒泉市','甘肃省酒泉市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='甘肃省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620901','市辖区','甘肃省酒泉市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='酒泉市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620902','肃州区','甘肃省酒泉市肃州区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='酒泉市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620921','金塔县','甘肃省酒泉市金塔县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='酒泉市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620922','瓜州县','甘肃省酒泉市瓜州县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='酒泉市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620923','肃北蒙古族自治县','甘肃省酒泉市肃北蒙古族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='酒泉市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620924','阿克塞哈萨克族自治县','甘肃省酒泉市阿克塞哈萨克族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='酒泉市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620981','玉门市','甘肃省酒泉市玉门市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='酒泉市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '620982','敦煌市','甘肃省酒泉市敦煌市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='酒泉市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '621000','庆阳市','甘肃省庆阳市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='甘肃省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '621001','市辖区','甘肃省庆阳市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='庆阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '621002','西峰区','甘肃省庆阳市西峰区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='庆阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '621021','庆城县','甘肃省庆阳市庆城县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='庆阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '621022','环县','甘肃省庆阳市环县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='庆阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '621023','华池县','甘肃省庆阳市华池县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='庆阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '621024','合水县','甘肃省庆阳市合水县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='庆阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '621025','正宁县','甘肃省庆阳市正宁县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='庆阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '621026','宁县','甘肃省庆阳市宁县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='庆阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '621027','镇原县','甘肃省庆阳市镇原县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='庆阳市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '621100','定西市','甘肃省定西市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='甘肃省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '621101','市辖区','甘肃省定西市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='定西市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '621102','安定区','甘肃省定西市安定区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='定西市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '621121','通渭县','甘肃省定西市通渭县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='定西市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '621122','陇西县','甘肃省定西市陇西县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='定西市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '621123','渭源县','甘肃省定西市渭源县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='定西市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '621124','临洮县','甘肃省定西市临洮县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='定西市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '621125','漳县','甘肃省定西市漳县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='定西市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '621126','岷县','甘肃省定西市岷县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='定西市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '621200','陇南市','甘肃省陇南市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='甘肃省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '621201','市辖区','甘肃省陇南市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='陇南市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '621202','武都区','甘肃省陇南市武都区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='陇南市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '621221','成县','甘肃省陇南市成县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='陇南市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '621222','文县','甘肃省陇南市文县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='陇南市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '621223','宕昌县','甘肃省陇南市宕昌县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='陇南市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '621224','康县','甘肃省陇南市康县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='陇南市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '621225','西和县','甘肃省陇南市西和县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='陇南市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '621226','礼县','甘肃省陇南市礼县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='陇南市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '621227','徽县','甘肃省陇南市徽县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='陇南市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '621228','两当县','甘肃省陇南市两当县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='陇南市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '622900','临夏回族自治州','甘肃省临夏回族自治州', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='甘肃省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '622901','临夏市','甘肃省临夏回族自治州临夏市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='临夏回族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '622921','临夏县','甘肃省临夏回族自治州临夏县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='临夏回族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '622922','康乐县','甘肃省临夏回族自治州康乐县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='临夏回族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '622923','永靖县','甘肃省临夏回族自治州永靖县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='临夏回族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '622924','广河县','甘肃省临夏回族自治州广河县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='临夏回族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '622925','和政县','甘肃省临夏回族自治州和政县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='临夏回族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '622926','东乡族自治县','甘肃省临夏回族自治州东乡族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='临夏回族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '622927','积石山保安族东乡族撒拉族自治县','甘肃省临夏回族自治州积石山保安族东乡族撒拉族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='临夏回族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '623000','甘南藏族自治州','甘肃省甘南藏族自治州', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='甘肃省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '623001','合作市','甘肃省甘南藏族自治州合作市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='甘南藏族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '623021','临潭县','甘肃省甘南藏族自治州临潭县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='甘南藏族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '623022','卓尼县','甘肃省甘南藏族自治州卓尼县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='甘南藏族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '623023','舟曲县','甘肃省甘南藏族自治州舟曲县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='甘南藏族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '623024','迭部县','甘肃省甘南藏族自治州迭部县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='甘南藏族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '623025','玛曲县','甘肃省甘南藏族自治州玛曲县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='甘南藏族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '623026','碌曲县','甘肃省甘南藏族自治州碌曲县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='甘南藏族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '623027','夏河县','甘肃省甘南藏族自治州夏河县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='甘南藏族自治州'));
#-----青海省#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '630000','青海省','青海省',1,NULL);

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '630100','西宁市','青海省西宁市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='青海省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '630101','市辖区','青海省西宁市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='西宁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '630102','城东区','青海省西宁市城东区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='西宁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '630103','城中区','青海省西宁市城中区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='西宁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '630104','城西区','青海省西宁市城西区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='西宁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '630105','城北区','青海省西宁市城北区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='西宁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '630121','大通回族土族自治县','青海省西宁市大通回族土族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='西宁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '630122','湟中县','青海省西宁市湟中县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='西宁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '630123','湟源县','青海省西宁市湟源县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='西宁市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '630200','海东市','青海省海东市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='青海省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '630202','乐都区','青海省海东市乐都区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='海东市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '630203','平安区','青海省海东市平安区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='海东市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '630222','民和回族土族自治县','青海省海东市民和回族土族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='海东市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '630223','互助土族自治县','青海省海东市互助土族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='海东市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '630224','化隆回族自治县','青海省海东市化隆回族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='海东市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '630225','循化撒拉族自治县','青海省海东市循化撒拉族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='海东市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '632200','海北藏族自治州','青海省海北藏族自治州', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='青海省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '632221','门源回族自治县','青海省海北藏族自治州门源回族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='海北藏族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '632222','祁连县','青海省海北藏族自治州祁连县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='海北藏族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '632223','海晏县','青海省海北藏族自治州海晏县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='海北藏族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '632224','刚察县','青海省海北藏族自治州刚察县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='海北藏族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '632300','黄南藏族自治州','青海省黄南藏族自治州', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='青海省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '632321','同仁县','青海省黄南藏族自治州同仁县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黄南藏族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '632322','尖扎县','青海省黄南藏族自治州尖扎县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黄南藏族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '632323','泽库县','青海省黄南藏族自治州泽库县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黄南藏族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '632324','河南蒙古族自治县','青海省黄南藏族自治州河南蒙古族自治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='黄南藏族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '632500','海南藏族自治州','青海省海南藏族自治州', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='青海省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '632521','共和县','青海省海南藏族自治州共和县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='海南藏族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '632522','同德县','青海省海南藏族自治州同德县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='海南藏族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '632523','贵德县','青海省海南藏族自治州贵德县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='海南藏族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '632524','兴海县','青海省海南藏族自治州兴海县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='海南藏族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '632525','贵南县','青海省海南藏族自治州贵南县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='海南藏族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '632600','果洛藏族自治州','青海省果洛藏族自治州', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='青海省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '632621','玛沁县','青海省果洛藏族自治州玛沁县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='果洛藏族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '632622','班玛县','青海省果洛藏族自治州班玛县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='果洛藏族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '632623','甘德县','青海省果洛藏族自治州甘德县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='果洛藏族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '632624','达日县','青海省果洛藏族自治州达日县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='果洛藏族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '632625','久治县','青海省果洛藏族自治州久治县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='果洛藏族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '632626','玛多县','青海省果洛藏族自治州玛多县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='果洛藏族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '632700','玉树藏族自治州','青海省玉树藏族自治州', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='青海省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '632701','玉树市','青海省玉树藏族自治州玉树市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='玉树藏族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '632722','杂多县','青海省玉树藏族自治州杂多县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='玉树藏族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '632723','称多县','青海省玉树藏族自治州称多县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='玉树藏族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '632724','治多县','青海省玉树藏族自治州治多县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='玉树藏族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '632725','囊谦县','青海省玉树藏族自治州囊谦县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='玉树藏族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '632726','曲麻莱县','青海省玉树藏族自治州曲麻莱县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='玉树藏族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '632800','海西蒙古族藏族自治州','青海省海西蒙古族藏族自治州', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='青海省'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '632801','格尔木市','青海省海西蒙古族藏族自治州格尔木市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='海西蒙古族藏族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '632802','德令哈市','青海省海西蒙古族藏族自治州德令哈市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='海西蒙古族藏族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '632821','乌兰县','青海省海西蒙古族藏族自治州乌兰县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='海西蒙古族藏族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '632822','都兰县','青海省海西蒙古族藏族自治州都兰县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='海西蒙古族藏族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '632823','天峻县','青海省海西蒙古族藏族自治州天峻县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='海西蒙古族藏族自治州'));
#-----宁夏回族自治区#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '640000','宁夏回族自治区','宁夏回族自治区',1,NULL);

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '640100','银川市','宁夏回族自治区银川市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='宁夏回族自治区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '640101','市辖区','宁夏回族自治区银川市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='银川市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '640104','兴庆区','宁夏回族自治区银川市兴庆区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='银川市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '640105','西夏区','宁夏回族自治区银川市西夏区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='银川市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '640106','金凤区','宁夏回族自治区银川市金凤区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='银川市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '640121','永宁县','宁夏回族自治区银川市永宁县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='银川市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '640122','贺兰县','宁夏回族自治区银川市贺兰县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='银川市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '640181','灵武市','宁夏回族自治区银川市灵武市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='银川市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '640200','石嘴山市','宁夏回族自治区石嘴山市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='宁夏回族自治区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '640201','市辖区','宁夏回族自治区石嘴山市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='石嘴山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '640202','大武口区','宁夏回族自治区石嘴山市大武口区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='石嘴山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '640205','惠农区','宁夏回族自治区石嘴山市惠农区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='石嘴山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '640221','平罗县','宁夏回族自治区石嘴山市平罗县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='石嘴山市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '640300','吴忠市','宁夏回族自治区吴忠市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='宁夏回族自治区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '640301','市辖区','宁夏回族自治区吴忠市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='吴忠市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '640302','利通区','宁夏回族自治区吴忠市利通区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='吴忠市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '640303','红寺堡区','宁夏回族自治区吴忠市红寺堡区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='吴忠市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '640323','盐池县','宁夏回族自治区吴忠市盐池县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='吴忠市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '640324','同心县','宁夏回族自治区吴忠市同心县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='吴忠市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '640381','青铜峡市','宁夏回族自治区吴忠市青铜峡市', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='吴忠市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '640400','固原市','宁夏回族自治区固原市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='宁夏回族自治区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '640401','市辖区','宁夏回族自治区固原市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='固原市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '640402','原州区','宁夏回族自治区固原市原州区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='固原市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '640422','西吉县','宁夏回族自治区固原市西吉县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='固原市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '640423','隆德县','宁夏回族自治区固原市隆德县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='固原市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '640424','泾源县','宁夏回族自治区固原市泾源县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='固原市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '640425','彭阳县','宁夏回族自治区固原市彭阳县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='固原市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '640500','中卫市','宁夏回族自治区中卫市', 2,(SELECT id FROM region_info t1 WHERE REGION_NAME='宁夏回族自治区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '640501','市辖区','宁夏回族自治区中卫市市辖区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='中卫市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '640502','沙坡头区','宁夏回族自治区中卫市沙坡头区', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='中卫市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '640521','中宁县','宁夏回族自治区中卫市中宁县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='中卫市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '640522','海原县','宁夏回族自治区中卫市海原县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='中卫市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ( '640522','海原县','宁夏回族自治区中卫市海原县', 3,(SELECT id FROM region_info t1 WHERE REGION_NAME='中卫市'));
#-----新疆维吾尔自治区#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('650000','新疆维吾尔自治区','新疆维吾尔自治区',1,NULL);

#-----乌鲁木齐市#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('650100','乌鲁木齐市','新疆维吾尔自治区乌鲁木齐市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='新疆维吾尔自治区'));

#-----区、县#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('650101','市辖区','新疆维吾尔自治区乌鲁木齐市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='乌鲁木齐市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('650102','天山区','新疆维吾尔自治区乌鲁木齐市天山区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='乌鲁木齐市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('650103','沙依巴克区','新疆维吾尔自治区乌鲁木齐市沙依巴克区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='乌鲁木齐市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('650104','新市区','新疆维吾尔自治区乌鲁木齐市新市区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='乌鲁木齐市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('650105','水磨沟区','新疆维吾尔自治区乌鲁木齐市水磨沟区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='乌鲁木齐市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('650106','头屯河区','新疆维吾尔自治区乌鲁木齐市头屯河区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='乌鲁木齐市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('650107','达坂城区','新疆维吾尔自治区乌鲁木齐市达坂城区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='乌鲁木齐市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('650109','米东区','新疆维吾尔自治区乌鲁木齐市米东区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='乌鲁木齐市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('650121','乌鲁木齐县','新疆维吾尔自治区乌鲁木齐市乌鲁木齐县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='乌鲁木齐市'));

#-----克拉玛依市#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('650200','克拉玛依市','新疆维吾尔自治区克拉玛依市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='新疆维吾尔自治区'));

#-----区、县#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('650201','市辖区','新疆维吾尔自治区克拉玛依市市辖区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='克拉玛依市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('650202','独山子区','新疆维吾尔自治区克拉玛依市独山子区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='克拉玛依市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('650203','克拉玛依区','新疆维吾尔自治区克拉玛依市克拉玛依区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='克拉玛依市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('650204','白碱滩区','新疆维吾尔自治区克拉玛依市白碱滩区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='克拉玛依市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('650205','乌尔禾区','新疆维吾尔自治区克拉玛依市乌尔禾区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='克拉玛依市'));

#-----吐鲁番市#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('650400','吐鲁番市','新疆维吾尔自治区吐鲁番市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='新疆维吾尔自治区'));

#-----区、县#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('650402','高昌区','新疆维吾尔自治区吐鲁番市高昌区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='吐鲁番市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('650421','鄯善县','新疆维吾尔自治区吐鲁番市鄯善县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='吐鲁番市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('650422','托克逊县','新疆维吾尔自治区吐鲁番市托克逊县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='吐鲁番市'));

#-----哈密市#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('650500','哈密市','新疆维吾尔自治区哈密市',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='新疆维吾尔自治区'));

#-----区、县#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('650502','伊州区','新疆维吾尔自治区哈密市伊州区',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='哈密市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('650521','巴里坤哈萨克自治县','新疆维吾尔自治区哈密市巴里坤哈萨克自治县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='哈密市'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('650522','伊吾县','新疆维吾尔自治区哈密市伊吾县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='哈密市'));

#-----昌吉回族自治州#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('652300','昌吉回族自治州','新疆维吾尔自治区昌吉回族自治州',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='新疆维吾尔自治区'));

#-----区、县#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('652301','昌吉市','新疆维吾尔自治区昌吉回族自治州昌吉市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='昌吉回族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('652302','阜康市','新疆维吾尔自治区昌吉回族自治州阜康市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='昌吉回族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('652323','呼图壁县','新疆维吾尔自治区昌吉回族自治州呼图壁县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='昌吉回族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('652324','玛纳斯县','新疆维吾尔自治区昌吉回族自治州玛纳斯县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='昌吉回族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('652325','奇台县','新疆维吾尔自治区昌吉回族自治州奇台县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='昌吉回族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('652327','吉木萨尔县','新疆维吾尔自治区昌吉回族自治州吉木萨尔县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='昌吉回族自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('652328','木垒哈萨克自治县','新疆维吾尔自治区昌吉回族自治州木垒哈萨克自治县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='昌吉回族自治州'));

#-----博尔塔拉蒙古自治州#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('652700','博尔塔拉蒙古自治州','新疆维吾尔自治区博尔塔拉蒙古自治州',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='新疆维吾尔自治区'));

#-----区、县#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('652701','博乐市','新疆维吾尔自治区博尔塔拉蒙古自治州博乐市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='博尔塔拉蒙古自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('652702','阿拉山口市','新疆维吾尔自治区博尔塔拉蒙古自治州阿拉山口市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='博尔塔拉蒙古自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('652722','精河县','新疆维吾尔自治区博尔塔拉蒙古自治州精河县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='博尔塔拉蒙古自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('652723','温泉县','新疆维吾尔自治区博尔塔拉蒙古自治州温泉县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='博尔塔拉蒙古自治州'));

#-----巴音郭楞蒙古自治州#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('652800','巴音郭楞蒙古自治州','新疆维吾尔自治区巴音郭楞蒙古自治州',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='新疆维吾尔自治区'));

#-----区、县#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('652801','库尔勒市','新疆维吾尔自治区巴音郭楞蒙古自治州库尔勒市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='巴音郭楞蒙古自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('652822','轮台县','新疆维吾尔自治区巴音郭楞蒙古自治州轮台县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='巴音郭楞蒙古自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('652823','尉犁县','新疆维吾尔自治区巴音郭楞蒙古自治州尉犁县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='巴音郭楞蒙古自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('652824','若羌县','新疆维吾尔自治区巴音郭楞蒙古自治州若羌县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='巴音郭楞蒙古自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('652825','且末县','新疆维吾尔自治区巴音郭楞蒙古自治州且末县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='巴音郭楞蒙古自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('652826','焉耆回族自治县','新疆维吾尔自治区巴音郭楞蒙古自治州焉耆回族自治县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='巴音郭楞蒙古自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('652827','和静县','新疆维吾尔自治区巴音郭楞蒙古自治州和静县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='巴音郭楞蒙古自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('652828','和硕县','新疆维吾尔自治区巴音郭楞蒙古自治州和硕县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='巴音郭楞蒙古自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('652829','博湖县','新疆维吾尔自治区巴音郭楞蒙古自治州博湖县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='巴音郭楞蒙古自治州'));

#-----阿克苏地区#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('652900','阿克苏地区','新疆维吾尔自治区阿克苏地区',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='新疆维吾尔自治区'));

#-----区、县#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('652901','阿克苏市','新疆维吾尔自治区阿克苏地区阿克苏市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阿克苏地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('652922','温宿县','新疆维吾尔自治区阿克苏地区温宿县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阿克苏地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('652923','库车县','新疆维吾尔自治区阿克苏地区库车县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阿克苏地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('652924','沙雅县','新疆维吾尔自治区阿克苏地区沙雅县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阿克苏地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('652925','新和县','新疆维吾尔自治区阿克苏地区新和县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阿克苏地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('652926','拜城县','新疆维吾尔自治区阿克苏地区拜城县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阿克苏地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('652927','乌什县','新疆维吾尔自治区阿克苏地区乌什县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阿克苏地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('652928','阿瓦提县','新疆维吾尔自治区阿克苏地区阿瓦提县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阿克苏地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('652929','柯坪县','新疆维吾尔自治区阿克苏地区柯坪县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阿克苏地区'));

#-----克孜勒苏柯尔克孜自治州#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('653000','克孜勒苏柯尔克孜自治州','新疆维吾尔自治区克孜勒苏柯尔克孜自治州',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='新疆维吾尔自治区'));

#-----区、县#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('653001','阿图什市','新疆维吾尔自治区克孜勒苏柯尔克孜自治州阿图什市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='克孜勒苏柯尔克孜自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('653022','阿克陶县','新疆维吾尔自治区克孜勒苏柯尔克孜自治州阿克陶县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='克孜勒苏柯尔克孜自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('653023','阿合奇县','新疆维吾尔自治区克孜勒苏柯尔克孜自治州阿合奇县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='克孜勒苏柯尔克孜自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('653024','乌恰县','新疆维吾尔自治区克孜勒苏柯尔克孜自治州乌恰县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='克孜勒苏柯尔克孜自治州'));

#-----喀什地区#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('653100','喀什地区','新疆维吾尔自治区喀什地区',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='新疆维吾尔自治区'));

#-----区、县#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('653101','喀什市','新疆维吾尔自治区喀什地区喀什市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='喀什地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('653121','疏附县','新疆维吾尔自治区喀什地区疏附县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='喀什地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('653122','疏勒县','新疆维吾尔自治区喀什地区疏勒县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='喀什地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('653123','英吉沙县','新疆维吾尔自治区喀什地区英吉沙县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='喀什地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('653124','泽普县','新疆维吾尔自治区喀什地区泽普县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='喀什地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('653125','莎车县','新疆维吾尔自治区喀什地区莎车县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='喀什地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('653126','叶城县','新疆维吾尔自治区喀什地区叶城县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='喀什地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('653127','麦盖提县','新疆维吾尔自治区喀什地区麦盖提县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='喀什地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('653128','岳普湖县','新疆维吾尔自治区喀什地区岳普湖县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='喀什地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('653129','伽师县','新疆维吾尔自治区喀什地区伽师县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='喀什地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('653130','巴楚县','新疆维吾尔自治区喀什地区巴楚县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='喀什地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('653131','塔什库尔干塔吉克自治县','新疆维吾尔自治区喀什地区塔什库尔干塔吉克自治县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='喀什地区'));

#-----和田地区#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('653200','和田地区','新疆维吾尔自治区和田地区',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='新疆维吾尔自治区'));

#-----区、县#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('653201','和田市','新疆维吾尔自治区和田地区和田市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='和田地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('653221','和田县','新疆维吾尔自治区和田地区和田县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='和田地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('653222','墨玉县','新疆维吾尔自治区和田地区墨玉县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='和田地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('653223','皮山县','新疆维吾尔自治区和田地区皮山县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='和田地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('653224','洛浦县','新疆维吾尔自治区和田地区洛浦县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='和田地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('653225','策勒县','新疆维吾尔自治区和田地区策勒县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='和田地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('653226','于田县','新疆维吾尔自治区和田地区于田县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='和田地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('653227','民丰县','新疆维吾尔自治区和田地区民丰县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='和田地区'));

#-----伊犁哈萨克自治州#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('654000','伊犁哈萨克自治州','新疆维吾尔自治区伊犁哈萨克自治州',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='新疆维吾尔自治区'));

#-----区、县#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('654002','伊宁市','新疆维吾尔自治区伊犁哈萨克自治州伊宁市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='伊犁哈萨克自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('654003','奎屯市','新疆维吾尔自治区伊犁哈萨克自治州奎屯市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='伊犁哈萨克自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('654004','霍尔果斯市','新疆维吾尔自治区伊犁哈萨克自治州霍尔果斯市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='伊犁哈萨克自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('654021','伊宁县','新疆维吾尔自治区伊犁哈萨克自治州伊宁县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='伊犁哈萨克自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('654022','察布查尔锡伯自治县','新疆维吾尔自治区伊犁哈萨克自治州察布查尔锡伯自治县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='伊犁哈萨克自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('654023','霍城县','新疆维吾尔自治区伊犁哈萨克自治州霍城县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='伊犁哈萨克自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('654024','巩留县','新疆维吾尔自治区伊犁哈萨克自治州巩留县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='伊犁哈萨克自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('654025','新源县','新疆维吾尔自治区伊犁哈萨克自治州新源县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='伊犁哈萨克自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('654026','昭苏县','新疆维吾尔自治区伊犁哈萨克自治州昭苏县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='伊犁哈萨克自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('654027','特克斯县','新疆维吾尔自治区伊犁哈萨克自治州特克斯县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='伊犁哈萨克自治州'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('654028','尼勒克县','新疆维吾尔自治区伊犁哈萨克自治州尼勒克县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='伊犁哈萨克自治州'));

#-----塔城地区#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('654200','塔城地区','新疆维吾尔自治区塔城地区',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='新疆维吾尔自治区'));

#-----区、县#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('654201','塔城市','新疆维吾尔自治区塔城地区塔城市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='塔城地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('654202','乌苏市','新疆维吾尔自治区塔城地区乌苏市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='塔城地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('654221','额敏县','新疆维吾尔自治区塔城地区额敏县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='塔城地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('654223','沙湾县','新疆维吾尔自治区塔城地区沙湾县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='塔城地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('654224','托里县','新疆维吾尔自治区塔城地区托里县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='塔城地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('654225','裕民县','新疆维吾尔自治区塔城地区裕民县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='塔城地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('654226','和布克赛尔蒙古自治县','新疆维吾尔自治区塔城地区和布克赛尔蒙古自治县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='塔城地区'));

#-----阿勒泰地区#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('654300','阿勒泰地区','新疆维吾尔自治区阿勒泰地区',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='新疆维吾尔自治区'));

#-----区、县#-----
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('654301','阿勒泰市','新疆维吾尔自治区阿勒泰地区阿勒泰市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阿勒泰地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('654321','布尔津县','新疆维吾尔自治区阿勒泰地区布尔津县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阿勒泰地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('654322','富蕴县','新疆维吾尔自治区阿勒泰地区富蕴县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阿勒泰地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('654323','福海县','新疆维吾尔自治区阿勒泰地区福海县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阿勒泰地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('654324','哈巴河县','新疆维吾尔自治区阿勒泰地区哈巴河县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阿勒泰地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('654325','青河县','新疆维吾尔自治区阿勒泰地区青河县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阿勒泰地区'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('654326','吉木乃县','新疆维吾尔自治区阿勒泰地区吉木乃县',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='阿勒泰地区'));

#-----自治区直辖县级行政区划#-----#
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('659000','自治区直辖县级行政区划','新疆维吾尔自治区直辖县级行政区划',2,(SELECT id FROM region_info t1 WHERE REGION_NAME='新疆维吾尔自治区'));

#-----区、县#-----#
INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('659001','石河子市','新疆维吾尔自治区直辖县级行政区划石河子市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='自治区直辖县级行政区划'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('659002','阿拉尔市','新疆维吾尔自治区直辖县级行政区划阿拉尔市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='自治区直辖县级行政区划'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('659003','图木舒克市','新疆维吾尔自治区直辖县级行政区划图木舒克市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='自治区直辖县级行政区划'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('659004','五家渠市','新疆维吾尔自治区直辖县级行政区划五家渠市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='自治区直辖县级行政区划'));

INSERT INTO region_info(region_code,region_name,region_description,code_level,parent_id)VALUES ('659006','铁门关市','新疆维吾尔自治区直辖县级行政区划铁门关市',3,(SELECT id FROM region_info t1 WHERE REGION_NAME='自治区直辖县级行政区划'));

