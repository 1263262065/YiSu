package com.cvs.dao;

import com.cvs.pojo.SysUser;
import org.apache.ibatis.annotations.Param;


public interface SysUserMapper {
    public SysUser SelectLogin(@Param("UserName") String UserName);

}
