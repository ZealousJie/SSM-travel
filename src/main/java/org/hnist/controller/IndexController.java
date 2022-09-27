package org.hnist.controller;

import org.apache.ibatis.annotations.Param;
import org.hnist.model.*;
import org.hnist.service.IndexService;
import org.hnist.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class IndexController {

    @Resource
    private IndexService indexService;
    @Resource
    private UserService userService;

    @RequestMapping(value = "/jsp/indexData")
    public ModelAndView IndexData(){
        ModelAndView modelAndView =new ModelAndView();

        List<Dorder> list = indexService.selDiscount();

        List<Scen> hot = indexService.selHot();


        modelAndView.addObject("discount",list);
        modelAndView.addObject("hot",hot);
        modelAndView.setViewName("/index.jsp");
        return modelAndView;
    }

    @RequestMapping("/hotel1")
    public ModelAndView hotel1(@Param("oid") int oid,@Param("price") double price) throws ParseException {
        ModelAndView modelAndView = new ModelAndView();
        Order order = indexService.selDetail(oid);
        Order order1 = indexService.selPic(oid);
        List<String> strings = indexService.selFlag();
        for (String string : strings) {
            String msg;
            System.out.println(string);
            System.out.println(order.getName());
            double price1 = order.getPrice();
            if(string.equals(order.getName())){
                msg = "限时优惠!!  原单价："+price1+",现价只要" + price;
                order.setMsg(msg);
                modelAndView.addObject("orders",order);
                modelAndView.addObject("orderP",order1);
                modelAndView.setViewName("/jdxx.jsp");
                return modelAndView;
            }
            else {
                msg = "暂无优惠活动";
                order.setMsg(msg);
            }
        }
        modelAndView.addObject("orders",order);
        modelAndView.addObject("orderP",order1);
        modelAndView.setViewName("/jdxx.jsp");
        return modelAndView;
    }
    @RequestMapping("/hotel")
    public ModelAndView hotel(@Param("oid") int oid) throws ParseException {
        ModelAndView modelAndView = new ModelAndView();
        Order order = indexService.selDetail(oid);
        Order order1 = indexService.selPic(oid);
        order.setMsg("暂无优惠活动");
        modelAndView.addObject("orders",order);
        modelAndView.addObject("orderP",order1);
        modelAndView.setViewName("/jdxx.jsp");
        return modelAndView;
    }
    @RequestMapping(value = "/highRole")
    @ResponseBody
    public String login(HttpServletRequest request){
        String flag = "true";
        HttpSession session = request.getSession();
        Integer rid = (Integer) session.getAttribute("role");
        System.out.println(rid);
        if (rid != 1 && rid != 3) {
            flag = "false";
        }
        System.out.println(flag);

        return flag;

    }
    @RequestMapping("/zhuXiao1")
    public void zhuXiao1(HttpServletRequest request){
        HttpSession session = request.getSession();
        session.invalidate();
//        return "redirect:/admin/all-admin-login.html";
    }
    @RequestMapping("/zhuXiao")
    public String zhuXiao(HttpServletRequest request){
        HttpSession session = request.getSession();
        session.invalidate();
        return "redirect:/admin/all-admin-login.html";
    }

    @RequestMapping("/profile")
    public ModelAndView profile(HttpServletRequest request){
        ModelAndView modelAndView = new ModelAndView();
        HttpSession session = request.getSession();
        Integer id = (Integer) session.getAttribute("uid");
        User user = userService.upUser1(id);
        modelAndView.addObject("normalUser",user);
        modelAndView.setViewName("/center.jsp");
        return modelAndView;
    }

}
