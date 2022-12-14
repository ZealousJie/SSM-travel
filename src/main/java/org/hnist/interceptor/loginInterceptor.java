package org.hnist.interceptor;

import org.hnist.model.User;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class loginInterceptor implements HandlerInterceptor {


    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        HttpSession session = request.getSession();
        User user =(User) session.getAttribute("user");
        if(user==null){
            response.sendRedirect(request.getContextPath()+"/admin/all-admin-login.html");
            return false;
        }

        return true;
    }
}
