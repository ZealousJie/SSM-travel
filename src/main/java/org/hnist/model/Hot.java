package org.hnist.model;


public class Hot {
    private int num;
    private String name;
    private double price;
    private int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Hot{" +
                "num=" + num +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", id=" + id +
                '}';
    }
}
