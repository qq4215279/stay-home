package com.graduationproject.stayhome.service.impl;

import com.graduationproject.stayhome.mapper.RoleMapper;
import com.graduationproject.stayhome.model.Role;
import com.graduationproject.stayhome.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RoleServiceImpl implements RoleService {

    @Autowired
    private RoleMapper roleMapper;

    @Override
    public Role getRoleByName(String name) {
        return roleMapper.selectByName(name);
    }
}
