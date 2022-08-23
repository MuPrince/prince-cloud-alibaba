package com.prince.server.config;

import com.alibaba.csp.sentinel.datasource.ReadableDataSource;
import com.alibaba.csp.sentinel.datasource.nacos.NacosDataSource;
import com.alibaba.csp.sentinel.init.InitFunc;
import com.alibaba.csp.sentinel.slots.block.RuleConstant;
import com.alibaba.csp.sentinel.slots.block.flow.FlowRule;
import com.alibaba.csp.sentinel.slots.block.flow.FlowRuleManager;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.TypeReference;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;

import java.util.ArrayList;
import java.util.List;

/**
 * Description : 限流规则初始化
 *
 * @author Mu Prince <br\>
 * @since 2022/7/25 11:04
 */
public class SentinelRuleInitFunc implements InitFunc {

    @Override
    public void init() throws Exception {
//        ReadableDataSource<String, List<FlowRule>> flowRuleDataSource=
//                new NacosDataSource<>("127.0.0.1:8848", "SENTINEL_GROUP", "prince-user", s -> JSON.parseObject(s, new TypeReference<List<FlowRule>>() {
//                }));
//        FlowRuleManager.register2Property(flowRuleDataSource.getProperty());

//        List<FlowRule> rules = new ArrayList<>();
//        FlowRule rule = new FlowRule();
//        rule.setResource("tag");
//        rule.setGrade(RuleConstant.FLOW_GRADE_QPS);
//        rule.setCount(2);
//        rules.add(rule);
//        FlowRuleManager.loadRules(rules);
    }
}
