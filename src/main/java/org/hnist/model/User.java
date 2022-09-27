package org.hnist.model;
import java.util.Date;
import java.util.List;

import com.alibaba.excel.annotation.ExcelIgnore;
import com.alibaba.excel.annotation.ExcelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;

@Data
@EqualsAndHashCode
public class User {
    @ExcelIgnore
    private     Integer id;
    @ExcelProperty("邮箱")
    @NotEmpty(message = "角色邮箱必填")
    @Email
    private String email;
    @ExcelProperty("密码")
    @NotEmpty(message = "角色密码必填")
    private String password;
    @ExcelProperty("姓名")
    private String name;
    @ExcelProperty("电话")
    private String phone;
    @ExcelProperty("角色")
    private Integer rid;
    @ExcelIgnore
    private Role role;
    //描述的是当前用户拥有哪些订单
    @ExcelIgnore
    private List<Order> orderList;
    //照片文件名
    @ExcelProperty("图片")
    private String upic;
    //实际照片文件
    @ExcelIgnore
    private MultipartFile myfile;



    public List<Order> getOrderList() {
        return orderList;
    }

    public void setOrderList(List<Order> orderList) {
        this.orderList = orderList;
    }

    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Integer getRid() {
        return rid;
    }

    public void setRid(Integer rid) {
        this.rid = rid;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public String getUpic() {
        return upic;
    }

    public void setUpic(String upic) {
        this.upic = upic;
    }

    public MultipartFile getMyfile() {
        return myfile;
    }

    public void setMyfile(MultipartFile myfile) {
        this.myfile = myfile;
    }



    public User(Integer id, String email, String password, String name, String phone, Integer rid, Role role) {
        this.id = id;
        this.email = email;
        this.password = password;
        this.name = name;
        this.phone = phone;
        this.rid = rid;
        this.role = role;
    }

    public User() {
    }

//    @Override
//    public String toString() {
//        return "User [id=" + id + ", email=" + email + ", password="
//                + password + "]";
//    }


    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", name='" + name + '\'' +
                ", phone='" + phone + '\'' +
                ", rid=" + rid +
                ", role=" + role +
                ", orderList=" + orderList +
                ", upic='" + upic + '\'' +
                ", myfile=" + myfile +
                '}';
    }

    public String userOrderToString(){
        return "User{" +
                "id=" + id +
                ", email='" + email + '\'' +'\n'+
                ", password='" + password + '\'' +'\n'+
                ", name='" + name + '\'' +'\n'+
                ", phone='" + phone + '\'' +'\n'+
                ", orderList=" + orderList +'\n'+
                '}'+'\n';
    }


}