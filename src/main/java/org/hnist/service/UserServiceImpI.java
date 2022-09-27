package org.hnist.service;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLEncoder;
import java.util.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.*;

import com.alibaba.excel.EasyExcel;
import org.hnist.dao.UserMapper;
import org.hnist.listener.UserListener;
import org.hnist.model.User;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

//@Autowired 根据数据类型从容器匹配 以下方为例 找userMapper有没有被注入 但有多个的时候该注解不行
//@Qualifier（“id”） 是按照id从容器匹配  但是要和上方一起用
//@Resource（name=“”）  = @Qualifier（“id”）  + @Autowired（多用这个）
@Service("UserService") //@Service代表这是server层 即业务层   将下方注入spring容器 他在容器中代表的id值 为 UserService
@Transactional(isolation = Isolation.REPEATABLE_READ)//事务隔离级别为重复读会出现幻读 但不会出现脏读 和重复都
public class UserServiceImpI implements UserService{
    @Resource //默认id= UserMapper 首字母小写 其他同
    //@Autowired
    public UserMapper userMapper;


    public void Login(User user, HttpSession session, HttpServletResponse response) throws IOException {
        if(userMapper.selectUser(user.getEmail(),user.getPassword())!=null){
            User user2 = userMapper.selectUser(user.getEmail(), user.getPassword());
            session.setAttribute("user",user2);
            session.setAttribute("uid",user2.getId());
            Integer rid = userMapper.selectRole(user.getEmail());
            System.out.println(rid);
            session.setAttribute("role",rid);
            Boolean boo = true;
            String json = "{\"flag\":"+boo+"}";
            response.getWriter().print(json);
            System.out.print("登录成功 欢迎"+user2+session+"\n");
        }
        else {
            Boolean boo = false;
            String json = "{\"flag\":"+boo+"}";
            response.getWriter().print(json);
            System.out.println("登录失败");
        }


    }


    public String Register(User user, HttpSession session) {
        if(userMapper.selectEmail(user.getEmail())!=null){
            Object[] options = { "OK", "CANCEL" };
            JOptionPane.showOptionDialog(null, "邮箱已存在点击 OK 继续", "Warning",
                    JOptionPane.DEFAULT_OPTION, JOptionPane.WARNING_MESSAGE,
                    null, options, options[0]);
            System.out.println("注册失败");//纯垃圾这个提示框
            return "redirect:/admin/all-admin-register.html";
        }else {
            userMapper.insertUser(user.getEmail(),user.getPassword(),user.getName());
            System.out.println("注册成功");
            return "redirect:/admin/all-admin-login.html";
        }

    }

    public List<User> getUserAll(){
       List<User> listUser =  userMapper.getUser();
        System.out.println(listUser);
        return listUser;
    }

    public void getOrderAll() {
        List<User> listOrder =  userMapper.getUserAndOrder();
        for (User user : listOrder) {
            System.out.println(user.userOrderToString());
        }


    }

    public void addUser(User user) {
        userMapper.addUser(user);
    }

    public void delUser(Integer id) {
        userMapper.delUser(id);
    }

    public User upUser1(Integer id) {
        User user = userMapper.upUser1(id);
        return user;
    }
    public void upUser2(User user) {
        userMapper.upUser2(user);
    }




    @Override
    public String upload(MultipartFile file) throws IOException {
        EasyExcel.read(file.getInputStream(), User.class, new UserListener(userMapper)).sheet().doRead();
        return "success";
    }

    @Override
    public void export(HttpServletResponse response) throws Exception  {
        List<User> busers=userMapper.getUser1();
//      设置样式
        String filename = URLEncoder.encode("myExcel", "utf-8");
        response.setContentType("application/vnd.ms-excel");
        response.setCharacterEncoding("utf-8");
        response.setHeader("Content-Disposition","attachment;filename=" + filename + ".xlsx");
        /**
         * EasyExcel的写文件操作,data()方法用来查询数据库数据返回list
         * sheet为excel的工作表表名
         */
        System.out.println("123");
        EasyExcel.write(response.getOutputStream(), User.class).sheet().doWrite(busers);
    }


//    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
//        System.out.println("123456");
//        User user= null;
//        try {
//            user=userMapper.selectEmail(username);
//        }catch (Exception e){
//            e.printStackTrace();
//        }
//        org.springframework.security.core.userdetails.User user1 =
//                new org.springframework.security.core.userdetails.User(user.getEmail(),"{noop}"+user.getPassword(),getAuthority());
//        return user1;
//    }
//    public List<SimpleGrantedAuthority> getAuthority(){
//
//        List<SimpleGrantedAuthority> list = new ArrayList();
//        list.add(new SimpleGrantedAuthority("ROLE_USER"));
//        return list;
//    }
}
