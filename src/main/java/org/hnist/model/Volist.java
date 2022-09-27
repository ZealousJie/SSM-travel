package org.hnist.model;

import java.util.List;

public class Volist {
    private List<User> list;

    public List<User> getList() {
        return list;
    }

    public void setList(List<User> list) {
        this.list = list;
    }

    public Volist(List<User> list) {
        this.list = list;
    }

    @Override
    public String toString() {
        return "Volist{" +
                "list=" + list +
                '}';
    }
}
