package com.cvs.service;

import com.cvs.dao.SysUserMapper;
import com.cvs.pojo.SysUser;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class SysUserServiceImpl implements SysUserService {
    @Resource
    private SysUserMapper sysUserMapper;
       @Override

    public SysUser login(String account, String password) {
        SysUser sysUser=sysUserMapper.SelectLogin(account);
        if(sysUser !=null){
            if(!sysUser.getPassWord().equals(password)){
                sysUser=null;
            }

        }
        return sysUser;

    }
}
