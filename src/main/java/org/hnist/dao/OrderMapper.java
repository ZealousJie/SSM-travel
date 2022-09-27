package org.hnist.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.hnist.model.Hot;
import org.hnist.model.Order;
import org.hnist.model.Travel;

import java.util.List;

@Mapper
public interface OrderMapper {

    Order findDesc(@Param("id") int id);
    List<Order> findAll();
    void updateDesc(Order order);
    void updateDescTravel(@Param("travel") Travel travel, @Param("id") Integer tid);
    List<Order> find();
    List<Hot> selHotOrder();
    void buy(Order order);
    Order findOne(@Param("id") int id);
    List<Order> selUserOrder(@Param("id") int id);
}
