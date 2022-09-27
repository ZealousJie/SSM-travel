package org.hnist.service;


import org.hnist.dao.RoleMapper;
import org.hnist.model.Role;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service("RoleService")
@Transactional
public class RoleServiceImpI implements RoleService {
    @Resource
    private RoleMapper roleMapper;

    public List<Role> getAllRole() {
        List<Role> list = roleMapper.findAll();
        return  list;
    }


    public void save(Role role) {


        roleMapper.saveDao(role);
    }


    public void remove(Integer id) {
        roleMapper.removeById(id);
        System.out.println("删除成功");
    }

    public Role updateRole(Integer id) {
       Role role= roleMapper.updateRoleById(id);
        return role;
    }

    public void saveUp(Role role) {
        roleMapper.update(role.getId(),role.getRolename(),role.getRemail(),role.getRoledes());
    }
}
