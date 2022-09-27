package org.hnist.service;

import org.hnist.model.Dorder;
import org.hnist.model.Hot;
import org.hnist.model.Order;
import org.hnist.model.Scen;

import java.util.List;

public interface IndexService {
    List<Dorder> selDiscount();
    List<Scen> selHot();
    Order selDetail(int oid);
    Order selPic(int oid);
    List<String> selFlag();
}
