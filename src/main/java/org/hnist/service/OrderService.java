package org.hnist.service;

import org.apache.ibatis.annotations.Param;
import org.hnist.model.Hot;
import org.hnist.model.Order;
import org.hnist.model.Travel;

import java.util.List;

public interface OrderService {
    List<Order> findAll(int page,int size);
    Order getDesc(int id);
    void updateDesc(Order order, Travel travel);
    List<Order> find();
    List<Hot> selHotOrder();
    void buy(Order order);
    Order findOne(int id);
    List<Order> selUserOrder(int id);
}
