package org.hnist.service;

import com.github.pagehelper.PageHelper;
import org.hnist.dao.OrderMapper;
import org.hnist.model.Hot;
import org.hnist.model.Order;
import org.hnist.model.Travel;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
@Transactional
public class OrderServiceImpl implements OrderService{

    @Resource
    private OrderMapper orderMapper;
    public List<Order> findAll(int page,int size) {

        PageHelper.startPage(page,size);//第一个参数 代表第几页，第二个参数代表每页多少条数据
        List<Order> orderList = orderMapper.findAll();
        return orderList;
    }

    public Order getDesc(int id){
        Order desc = orderMapper.findDesc(id);
        return desc;
    }


    public void updateDesc(Order order, Travel travel) {
        orderMapper.updateDesc(order);
        orderMapper.updateDescTravel(travel,order.getTravelId());
    }

    public List<Order> find() {
        List<Order> orderList = orderMapper.find();
        return orderList;
    }

    @Override
    public List<Hot> selHotOrder() {
        List<Hot> hotList= orderMapper.selHotOrder();
        System.out.println(hotList);
        return hotList;
    }

    @Override
    public void buy(Order order) {
        orderMapper.buy(order);
    }

    @Override
    public Order findOne(int id) {
        Order one = orderMapper.findOne(id);
        return one;
    }

    @Override
    public List<Order> selUserOrder(int id) {
        System.out.println("111111");
        List<Order> orderList = orderMapper.selUserOrder(id);
        return orderList;
    }


}
