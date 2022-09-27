package org.hnist.ExceSolve;

import org.hnist.exception.MyException;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class MyExceptionSolve implements HandlerExceptionResolver {

    public ModelAndView resolveException(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) {
        ModelAndView modelAndView =new ModelAndView();
        if (e instanceof MyException){
            modelAndView.addObject("info","自定义异常");
        }else {
            modelAndView.addObject("info","普通异常");
        }
        modelAndView.setViewName("/jsp/error.jsp");
        return modelAndView;
    }
}
