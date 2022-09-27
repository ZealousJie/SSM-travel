package org.hnist.service;

import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hnist.model.User;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

public interface UserService  {
    void Login(User user, HttpSession session, HttpServletResponse response) throws IOException;
    String Register(User user,HttpSession session);
    List<User> getUserAll();
    void getOrderAll();
    void addUser(User user);
    void delUser(Integer id);
    User upUser1(Integer id);
    void upUser2(User user);
    public String upload(MultipartFile file) throws IOException;
    public void export(HttpServletResponse response) throws Exception;
}
