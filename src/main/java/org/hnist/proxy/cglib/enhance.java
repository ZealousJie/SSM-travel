package org.hnist.proxy.cglib;

//增强对象
public class enhance {

    //增强方法
    public void before(){
        System.out.println("前置增强.....");
    }

    public void after(){
        System.out.println("后置增强.....");
    }
}
