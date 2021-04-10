package com.cvs.controller;

import com.cvs.pojo.SysUser;
import com.cvs.service.SysUserService;
import com.cvs.service.recordService;
import com.cvs.utils.Constants;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller

public class LoginController {
    @Resource
    private SysUserService sysUserService;
    @Resource
    private recordService recordService;
    @RequestMapping("/admin")
    public String toLogin(){
        return "login";
    }
    @RequestMapping("/login")
    public  String login(@RequestParam String UserName, @RequestParam String PassWord, HttpServletRequest request, HttpSession session){
        SysUser sysUser=sysUserService.login(UserName,PassWord);
        if(null!=sysUser){
            session.setAttribute(Constants.USER_SESSION,sysUser);
            session.setAttribute("sumrecord",recordService.sumrecord());
            session.setAttribute("sumprice",recordService.sumprice());
            session.setAttribute("dayrecord",recordService.dayrecord());
            session.setAttribute("dayprice",recordService.dayprice());
            return "redirect:/user/admin";
        }else{
            request.setAttribute("error","<script>alert('账号或密码错误')</script>");
            return "login";
        }
    }
    @RequestMapping("/user/admin")
    public  String toMain(){
        return "frame";
    }
    @RequestMapping("/logout")
    public String logout(HttpSession session){
        session.removeAttribute(Constants.USER_SESSION);
        return "/login";
    }
    @RequestMapping("/401")
    public  String sysError(){
        return "401";
    }
}
