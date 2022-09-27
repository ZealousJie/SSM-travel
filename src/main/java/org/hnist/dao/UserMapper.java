package org.hnist.dao;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.hnist.model.User;

import org.springframework.stereotype.Repository;

@Repository("userMapper") //dao层 可以理解为数据库层？  id=userMapper注入spring 容器
@Mapper
public interface UserMapper {
    User selectUser(@Param("email") String email,@Param("password") String password);
    User selectEmail(@Param("email") String email);
    void insertUser(@Param("email") String email,@Param("password") String password,@Param("name") String name);//注册
    List<User> getUser();
    List<User> getUser1();
    List<User> getUserAndOrder();
    Integer selectRole(@Param("email") String email);
    void delUser(@Param("id") Integer id);
    void addUser(User user);
    User upUser1(@Param("id") Integer id);
    void upUser2(User user);
    int read(User user);
}


