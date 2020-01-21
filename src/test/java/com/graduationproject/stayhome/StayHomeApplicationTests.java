package com.graduationproject.stayhome;

import com.graduationproject.stayhome.mapper.RoomDetailMapper;
import com.graduationproject.stayhome.mapper.UserMapper;
import com.graduationproject.stayhome.model.Order;
import com.graduationproject.stayhome.model.RoomDetail;
import com.graduationproject.stayhome.model.User;
import com.graduationproject.stayhome.service.OrderService;
import com.graduationproject.stayhome.service.RoomDetailService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.util.ResourceUtils;

import java.io.File;
import java.io.FileNotFoundException;
import java.sql.Time;

@RunWith(SpringRunner.class)
@SpringBootTest
public class StayHomeApplicationTests {

    @Autowired
    private OrderService orderService;

    @Autowired
    private RoomDetailService roomDetailService;

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private RoomDetailMapper roomDetailMapper;

    @Test
    public void contextLoads() throws FileNotFoundException {
//        User user = new User();
//        user.setUsername("43243424");
//        user.setPhone("13912121212");
//        user.setEmail("1273@qq.com");
//        user.setPassword("1212121212");
//        user.setRole(1);
//        int row = userMapper.updateByUsername(user);
//        System.out.println(row);
//        RoomDetail roomDetail = new RoomDetail(1, 8, "房源地理位置非常优越,毗邻太古里五星级酒店-博舍酒店(The Temple House),下楼就是成都最时尚的地段太古里商圈,您可以随时感受城市最繁华的心脏…",
//                278, 6, 60, Time.valueOf("15:00:00"), Time.valueOf("12:00:00"), 2, null);
//        int row = roomDetailMapper.updateById(roomDetail);
//        System.out.println(row);
        System.out.println(System.getProperty("user.dir"));
    }

}
