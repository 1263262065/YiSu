package com.cvs.service;

import com.cvs.dao.recordMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class recordServiceImpl implements recordService {
    @Resource
    recordMapper recordMapper;
    @Override
    public int sumrecord() {

        return recordMapper.sumrecord();
    }

    @Override
    public int sumprice() {
        return recordMapper.sumprice();
    }

    @Override
    public int dayrecord() {
        return recordMapper.dayrecord();
    }

    @Override
    public int dayprice() {
        return recordMapper.dayprice();
    }
}
