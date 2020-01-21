package com.graduationproject.stayhome.mapper;

import com.graduationproject.stayhome.model.Admin;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface AdminMapper {

    @Select("select * from admin where username=#{username} and password = #{password}")
    Admin selectByUsernameAndPassword(@Param("username") String username,
                                      @Param("password") String password);
}
