package com.graduationproject.stayhome.mapper;

import com.graduationproject.stayhome.model.Role;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface RoleMapper {

    @Select("select * from role where `name` = #{name}")
    Role selectByName(String name);
}
