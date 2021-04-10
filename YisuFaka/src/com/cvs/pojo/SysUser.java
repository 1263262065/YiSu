package com.cvs.pojo;

import java.util.Date;

/**
 * 系统用户类
 * @author project.cvs.team
 */
public class SysUser {
	private String UserName;
	private String PassWord;

	public String getUserName() {
		return UserName;
	}

	public void setUserName(String userName) {
		UserName = userName;
	}

	public String getPassWord() {
		return PassWord;
	}

	public void setPassWord(String passWord) {
		PassWord = passWord;
	}
}
