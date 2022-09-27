package org.hnist.proxy.jdk;

//目标对象
public class Target implements TargetInterface {

    public void save() {
        System.out.println("save running-----");
    }
}
