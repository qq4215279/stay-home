package com.graduationproject.stayhome.service.impl;

import com.graduationproject.stayhome.mapper.OrderMapper;
import com.graduationproject.stayhome.model.Order;
import com.graduationproject.stayhome.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.UUID;

@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderMapper orderMapper;

    @Override
    public void addOrder(Integer userId, Date arrivalDate, Date departureDate,
                         Integer adultNumber, Integer childrenNumber, Integer roomId) {
        orderMapper.insert(UUID.randomUUID().toString(), new Date(), userId, arrivalDate,
                departureDate, adultNumber, childrenNumber, roomId);
    }

    @Override
    public List<Order> getOrderByUserId(Integer userId) {
        return orderMapper.selectByUserId(userId);
    }

    @Override
    public void removeOrderById(String id) {
        orderMapper.deleteById(id);
    }

    @Override
    public void modifyCommentById(String comment, String id) {
        orderMapper.updateCommentById(comment, id);
    }

    @Override
    public Integer getOrderCount() {
        return orderMapper.selectCount();
    }

    @Override
    public Integer getOrderCommentCount() {
        return orderMapper.selectCommentCount();
    }

    @Override
    public List<Order> getNonArrivalOrderByOwnerId(Integer ownerId) {
        return orderMapper.selectNonArrivalOrderByOwnerId(ownerId);
    }

    @Override
    public Integer modifyOrderArrivalTimeById(String id, Date arrivalTime) {
        return orderMapper.updateArrivalTimeById(id, arrivalTime);
    }

    @Override
    public List<Order> getArrivalOrderByOwnerId(Integer ownerId) {
        return orderMapper.selectArrivalOrderByOwnerId(ownerId);
    }

    @Override
    public Integer modifyOrderDepartureTimeById(String id, Date departureTime) {
        return orderMapper.updateDepartureTimeById(id, departureTime);
    }
}
