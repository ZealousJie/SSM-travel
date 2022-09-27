package org.hnist.model;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;

public class Role {

    private Integer id;
    @NotEmpty(message = "角色名称必填")
    private String rolename;
    @Email(message = "邮箱格式错误")
    private String remail;//角色专属邮箱
    @NotEmpty(message = "角色描述")
    private String roledes;

    public Integer getId() {
        return id;
    }

    public Role(Integer id, String rolename, String remail, String roledes) {
        this.id = id;
        this.rolename = rolename;
        this.remail = remail;
        this.roledes = roledes;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Role() {
    }

    public String getRolename() {
        return rolename;
    }

    public void setRolename(String rolename) {
        this.rolename = rolename;
    }

    public String getRemail() {
        return remail;
    }

    public void setRemail(String remail) {
        this.remail = remail;
    }

    public String getRoledes() {
        return roledes;
    }

    public void setRoledes(String roledes) {
        this.roledes = roledes;
    }

    @Override
    public String toString() {
        return "Role{" +
                "id=" + id +
                ", rolename='" + rolename + '\'' +
                ", remail='" + remail + '\'' +
                ", roledes='" + roledes + '\'' +
                '}';
    }
}
