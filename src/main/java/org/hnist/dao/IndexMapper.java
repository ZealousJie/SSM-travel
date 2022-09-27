package org.hnist.dao;


import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.hnist.model.Dorder;
import org.hnist.model.Hot;
import org.hnist.model.Order;
import org.hnist.model.Scen;

import java.util.List;

@Mapper
public interface IndexMapper {
    List<Dorder> selDiscount();
    List<Scen> selHot();
    Order selOrders(@Param("oid") int oid);
    Order selPic(@Param("oid") int oid);
    List<String> selFlag();//查出所有优惠的订单
}
