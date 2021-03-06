package com.graduationproject.stayhome.service;

import com.graduationproject.stayhome.model.Order;

import java.util.Date;
import java.util.List;

public interface OrderService {

    /**
     * 增加订单信息
     * @param userId 用户id
     * @param arrivalDate 入住日期
     * @param departureDate 退房日期
     * @param adultNumber 成人数量
     * @param childrenNumber 儿童数量
     * @param roomId 房间id
     */
    void addOrder(Integer userId, Date arrivalDate, Date departureDate,
                  Integer adultNumber, Integer childrenNumber, Integer roomId);

    /**
     * 根据userId获得订单
     * @param userId 用户id
     * @return 订单
     */
    List<Order> getOrderByUserId(Integer userId);

    /**
     * 根据订单id删除订单
     * @param id
     */
    void removeOrderById(String id);

    /**
     * 根据订单id添加评论
     * @param comment
     * @param id
     */
    void modifyCommentById(String comment, String id);

    /**
     * 获取订单数
     * @return
     */
    Integer getOrderCount();

    /**
     * 获取订单评论数
     * @return 订单评论数
     */
    Integer getOrderCommentCount();

    /**
     * 根据房东id获取所有没有入住的订单
     * @param ownerId 房东id
     * @return 订单
     */
    List<Order> getNonArrivalOrderByOwnerId(Integer ownerId);

    /**
     * 根据订单号修改入住时间
     * @param id 订单号
     * @param arrivalTime 到达时间
     * @return 修改行数
     */
    Integer modifyOrderArrivalTimeById(String id, Date arrivalTime);

    /**
     * 根据ownerId获取已入住的订单
     * @param ownerId 房东id
     * @return 已入住订单
     */
    List<Order> getArrivalOrderByOwnerId(Integer ownerId);

    /**
     * 根据订单号退房
     * @param id 订单号
     * @param departureTime 退房时间
     * @return 修改行数
     */
    Integer modifyOrderDepartureTimeById(String id, Date departureTime);
}
