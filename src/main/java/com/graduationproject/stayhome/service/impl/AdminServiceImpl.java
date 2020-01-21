package com.graduationproject.stayhome.service.impl;

import com.graduationproject.stayhome.mapper.AdminMapper;
import com.graduationproject.stayhome.model.Admin;
import com.graduationproject.stayhome.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService {
    @Autowired
    private AdminMapper adminMapper;

    @Override
    public Admin getAdminByUsernameAndPassword(String username, String password) {
        return adminMapper.selectByUsernameAndPassword(username, password);
    }
}
