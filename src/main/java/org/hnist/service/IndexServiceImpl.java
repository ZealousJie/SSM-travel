package org.hnist.service;


import org.hnist.dao.IndexMapper;
import org.hnist.dao.OrderMapper;
import org.hnist.model.Dorder;
import org.hnist.model.Hot;
import org.hnist.model.Order;
import org.hnist.model.Scen;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service("IndexService")
@Transactional
public class IndexServiceImpl  implements IndexService{

    @Resource
    private IndexMapper indexMapper;

    public List<Dorder> selDiscount() {
        List<Dorder> list = indexMapper.selDiscount();
        System.out.println(list);
        return list;
    }

    public List<Scen> selHot() {
        List<Scen> hot = indexMapper.selHot();
        System.out.println(hot);
       return hot;
    }

    @Override
    public Order selDetail(int oid) {
        Order order1 = indexMapper.selOrders(oid);
        return order1;
    }

    @Override
    public Order selPic(int oid) {
        Order order = indexMapper.selPic(oid);
        return order;
    }

    @Override
    public List<String> selFlag() {
        List<String> list = indexMapper.selFlag();
        for (String s : list) {
            System.out.println(s);
        }
        return list;
    }


}
