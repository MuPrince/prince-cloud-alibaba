package com.prince.moment.service;

import java.util.Map;

/**
 * Description : 搜索
 *
 * @author Mu Prince <br\>
 * @since 2022/8/13 11:36
 */
public interface SearchService {
    Map<String, Object> searchAll(String keyword);
}
