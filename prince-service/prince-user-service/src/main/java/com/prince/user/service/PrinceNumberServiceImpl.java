package com.prince.user.service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.prince.user.mapper.PrinceNumberMapper;
import com.prince.user.entity.po.PrinceNumber;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

/**
 * Description : prince号
 *
 * @author Mu Prince <br\>
 * @since 2022/7/14 15:09
 */
@Service
@RequiredArgsConstructor
public class PrinceNumberServiceImpl extends ServiceImpl<PrinceNumberMapper, PrinceNumber> implements PrinceNumberService {

    private final PrinceNumberMapper princeNumberMapper;
}
