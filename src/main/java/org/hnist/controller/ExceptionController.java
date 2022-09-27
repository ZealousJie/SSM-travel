package org.hnist.controller;


import org.hnist.exception.MyException;
import org.hnist.service.ExceptionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ExceptionController {

    @Autowired
    private ExceptionService exceptionService;

    @RequestMapping(value = "/show")
    //加逗号 抛出多个异常
    public void show() throws MyException {
        System.out.println("show is running-----");
        exceptionService.show();
    }

}
