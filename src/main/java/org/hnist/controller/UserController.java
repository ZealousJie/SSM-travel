package org.hnist.controller;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.alibaba.excel.EasyExcel;
import org.apache.ibatis.annotations.Param;
import org.hnist.listener.UserListener;
import org.hnist.model.User;

import org.hnist.model.Volist;
import org.hnist.service.UserService;
import org.hnist.util.MyUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


@Controller //放入容器当中 web层
public class UserController {
    private static final HttpSession HttpSession = null;
    @Autowired  //实例 UserService
    private UserService userService;




    @RequestMapping(value="/userLogin",method = RequestMethod.POST)//请求映射 访问userLogin 时 帮我映射到下面的方法
    @ResponseBody
    public void selectUser(@ModelAttribute User user, HttpSession session,HttpServletResponse response) throws IOException {
         userService.Login(user, session,response);
    }//@ModelAttribute不够理解

    @RequestMapping(value = "/register",method = RequestMethod.POST)
    public String registerUser(@ModelAttribute User user, HttpSession session){

        return userService.Register(user,session);
    }
    //级联查询 查询user表和其在role表相关信息
    @RequestMapping(value = "/jsp/userAll",method = RequestMethod.GET)
    public ModelAndView getUser(){
        ModelAndView modelAndView = new ModelAndView();
        List<User> list = userService.getUserAll();
        for (User user : list) {
            System.out.println(user);
        }
        modelAndView.addObject("list",list);
        modelAndView.setViewName("/jsp/all-admin-user.jsp");
        return modelAndView;
    }
    @RequestMapping(value = "/jsp/userOrder",method = RequestMethod.GET)
    public String getOrder(){
        userService.getOrderAll();
        return "redirect:/index.html";
    }
    @RequestMapping(value = "/jsp/userAdd",method = RequestMethod.POST)
    public String addUser(User user, MultipartFile myfile,HttpSession session,HttpServletRequest request){
        System.out.println(user.toString());
        String upic;
        try {
            upic= MyUtil.upload(request,myfile);
            if(upic!=null){
                user.setUpic(upic);
                System.out.println("图片上传成功");
            }
            else {
                System.out.println("图片上传失败");
            }
        } catch (IOException e) {
            e.printStackTrace();
            System.out.println("图片上传失败");
        }
        userService.addUser(user);
        return "redirect:/jsp/userAll";
    }
    @RequestMapping(value = "/jsp/upUser1")
    public ModelAndView upUser1(@RequestParam("userId") Integer id){
        ModelAndView modelAndView = new ModelAndView();
        User user = userService.upUser1(id);
        modelAndView.addObject("user",user);
        modelAndView.setViewName("/jsp/userUpdate.jsp");
        return modelAndView;
    }
    @RequestMapping(value = "/user/upUser2",method = RequestMethod.POST)
    public String upUser2(User user,HttpServletRequest request){
        System.out.println("用户正在更新");
        String image = user.getUpic();
        MyUtil.deleteFile(request,image);
        String upic;
        try {
            MultipartFile myfile = user.getMyfile();
            upic= MyUtil.upload(request,myfile);
            if(upic!=null){
                user.setUpic(upic);
                System.out.println("图片上传成功");
            }
            else {
                System.out.println("图片上传失败");
            }
        } catch (IOException e) {
            e.printStackTrace();
            System.out.println("图片上传失败");
        }
        userService.upUser2(user);
        return "redirect:/jsp/userAll";
    }
    @RequestMapping(value = "/user/delUser/{userId}")
    public String delUser(@PathVariable("userId") Integer id){
        userService.delUser(id);
        return "redirect:/jsp/userAll";
    }


    @PostMapping("/upload")
    @ResponseBody
    public String upload(MultipartFile file) throws IOException {

        return userService.upload(file);
    }
    @GetMapping("/export1")
    @ResponseBody
    public void export(HttpServletResponse response) throws Exception{
        userService.export(response);
    }
}