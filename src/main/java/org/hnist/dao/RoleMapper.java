package org.hnist.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.hnist.model.Role;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("roleMapper")
@Mapper
public interface RoleMapper {
     List<Role> findAll();
     void saveDao(Role role);
     void removeById(@Param("roleId") Integer roleId);
     Role updateRoleById(@Param("rid") Integer rid);

     void update(@Param("id") Integer id, @Param("rname") String rolename,
                 @Param("remail") String remail, @Param("rdes") String roledes);
}
