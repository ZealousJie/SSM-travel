package org.hnist.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SaveDescInterceptor implements HandlerInterceptor {

    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        System.out.println("正在拦截");
        HttpSession session = request.getSession();
        Integer rid = (Integer) session.getAttribute("role");
        if (rid==1 || rid==3){
            return true;
        }

        else {

            response.sendRedirect(request.getContextPath()+"/jsp/order?errMsg=2&size=5&page=1");
            return false;
        }
    }
}
