package org.hnist.service;

import org.hnist.model.Role;

import java.util.List;

public interface RoleService {
    public List<Role> getAllRole();

    void save(Role role);

    void remove(Integer id);

    Role updateRole(Integer id);

    void saveUp(Role role);
}
