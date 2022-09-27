package org.hnist.controller;


import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.github.pagehelper.PageInfo;
import org.apache.ibatis.annotations.Param;
import org.hnist.model.Hot;
import org.hnist.model.Order;
import org.hnist.model.Travel;
import org.hnist.service.OrderService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Date;
import java.util.List;

@Controller
public class OrderController {

    @Resource
    private OrderService orderService;

    @RequestMapping(value = "/jsp/order",method = RequestMethod.GET)
    public ModelAndView getOrder(@RequestParam(name = "page",defaultValue = "1")int page,
                                 @RequestParam(name = "size",defaultValue = "5")int size){
        ModelAndView modelAndView = new ModelAndView();
        List<Order> orderList = orderService.findAll(page,size);
        PageInfo listInfo = new PageInfo(orderList);//就是一个分页的bean 里面有已经分好的页的相关信息
        modelAndView.addObject("listInfo",listInfo);
        modelAndView.setViewName("/jsp/all-order-manage-list.jsp");
        return modelAndView;
    }
    @RequestMapping(value = "/jsp/ODesById",method = RequestMethod.GET)
    public ModelAndView getDesc(@RequestParam(name = "id",defaultValue = "1")int id){
        ModelAndView modelAndView1 = new ModelAndView();
        Order order = orderService.getDesc(id);
        modelAndView1.addObject("order",order);
        modelAndView1.setViewName("/jsp/all-order-manage-edit.jsp");
        System.out.println("详情查看");
        return modelAndView1;
    }
    @RequestMapping(value = "/jsp/UDesById",method = RequestMethod.GET)
    public ModelAndView toUpDesc(@RequestParam(name = "id",defaultValue = "1")int id){
        ModelAndView modelAndView2 = new ModelAndView();
        Order order = orderService.getDesc(id);
        modelAndView2.addObject("order",order);
        modelAndView2.setViewName("/jsp/all-order-edit-update.jsp");
        System.out.println("详情修改");
        return modelAndView2;
    }

    @RequestMapping(value = "/jsp/updateDesc",method = RequestMethod.POST)
    public String updateDesc(Order order,Travel travel){
        System.out.println(order);
        System.out.println(travel);
        orderService.updateDesc(order,travel);
        return "redirect:/jsp/order";
    }

    @RequestMapping(value = "/find",method = RequestMethod.GET)
    public ModelAndView find(){
        ModelAndView modelAndView =new ModelAndView();
        List<Order> orderList = orderService.find();
        System.out.println(orderList);
        modelAndView.addObject("order",orderList);
        modelAndView.setViewName("/jdjs.jsp");
        return modelAndView;
    }

    @RequestMapping(value = "/hotOrder",method = RequestMethod.GET)
    public ModelAndView selHotOrder(){
        ModelAndView modelAndView =new ModelAndView();
        List<Hot> hot = orderService.selHotOrder();
        System.out.println(hot);
        modelAndView.addObject("hotOrder",hot);
        modelAndView.setViewName("/list.jsp");
        return modelAndView;
    }

    @RequestMapping(value = "/buy",method = RequestMethod.POST)
    @ResponseBody
    public String buy(Integer oid, HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("---------------------------");
        Order order = orderService.findOne(oid);
        System.out.println("---------------------------");
        System.out.println(oid);
        order.setId(null);
        HttpSession session = request.getSession();
        Integer uid = (Integer) session.getAttribute("uid");
        order.setUid(uid);
        orderService.buy(order);

        String flag = "true";
       return flag;
    }
    @RequestMapping(value = "/orderList",method = RequestMethod.GET)
    @ResponseBody
    public String orderList(Integer userId) throws JsonProcessingException {
        System.out.println("访问用户的历史订单");
        ObjectMapper objectMapper =new ObjectMapper();
        List<Order> orderList = orderService.selUserOrder(userId);
        System.out.println(orderList);
        for (Order order : orderList) {
            System.out.println(order);
        }
        if (orderList.size()>0){
            return objectMapper.writeValueAsString(orderList);
        }
        else return "null";
    }
}
