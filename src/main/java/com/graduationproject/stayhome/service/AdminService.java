package com.graduationproject.stayhome.service;

import com.graduationproject.stayhome.model.Admin;

public interface AdminService {

    /**
     * 根据用户名获取admin
     * @param username
     * @param password
     * @return
     */
    Admin getAdminByUsernameAndPassword(String username, String password);
}
