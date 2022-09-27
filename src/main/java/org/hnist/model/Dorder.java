package org.hnist.model;

import org.springframework.web.multipart.MultipartFile;

public class Dorder {
    private int did;
    private int oid;
    private double dprice;
    private String dpic;
    private MultipartFile multipartFile;
    private Order order;



    public int getDid() {
        return did;
    }

    public void setDid(int did) {
        this.did = did;
    }

    public int getOid() {
        return oid;
    }

    public void setOid(int oid) {
        this.oid = oid;
    }

    public double getDprice() {
        return dprice;
    }

    public void setDprice(double dprice) {
        this.dprice = dprice;
    }

    public String getDpic() {
        return dpic;
    }

    public void setDpic(String dpic) {
        this.dpic = dpic;
    }

    public Order getOrder() {
        return order;
    }

    public void setOrder(Order order) {
        this.order = order;
    }

    @Override
    public String toString() {
        return "Dorder{" +
                "did=" + did +
                ", oid=" + oid +
                ", dprice=" + dprice +
                ", dpic='" + dpic + '\'' +
                ", order=" + order +
                '}';
    }
}
