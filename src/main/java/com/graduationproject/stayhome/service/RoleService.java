package com.graduationproject.stayhome.service;

import com.graduationproject.stayhome.model.Role;

public interface RoleService {

    /**
     * 根据name获取角色
     * @param name
     * @return
     */
    Role getRoleByName(String name);
}
