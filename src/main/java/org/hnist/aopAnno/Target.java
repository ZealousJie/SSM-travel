package org.hnist.aopAnno;

//目标类

import org.springframework.stereotype.Component;

@Component("target")
public class Target implements TargetInterface {
    public void save() {
        System.out.println("save running-----");

    }
}
