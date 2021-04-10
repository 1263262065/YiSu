package com.cvs.web;

import com.cvs.pojo.SysUser;
import com.cvs.utils.Constants;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class SysInterceptor extends HandlerInterceptorAdapter {
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response,Object handler) throws IOException {
        HttpSession session=request.getSession();
        SysUser sysUser= (SysUser)session.getAttribute(Constants.USER_SESSION);
        if(null == sysUser){
                response.sendRedirect(request.getContextPath()+"/401");
                return false;
        }
        return  true;
    }
}
