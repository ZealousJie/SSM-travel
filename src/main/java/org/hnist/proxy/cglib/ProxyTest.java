package org.hnist.proxy.cglib;

import org.springframework.cglib.proxy.Enhancer;
import org.springframework.cglib.proxy.MethodInterceptor;
import org.springframework.cglib.proxy.MethodProxy;

import java.lang.reflect.Method;

//基于jdk(proxy)动态代理的代码 这是spring帮你封装好的 即aop 这算是aop底层代码
public class ProxyTest {
    public static void main(final String[] args) {
        //目标对象
        final Target target = new Target();

        //增强对象
        final enhance enhance1 = new enhance();
        //返回值时动态生成代理对象 即为目标对象生成代理对象  基于cglib
            //1.创建增强器 cglib提供的
        Enhancer enhancer = new Enhancer();
            //2.设置父类 即目标
        enhancer.setSuperclass(Target.class);
            //3.设置回调
        enhancer.setCallback(new MethodInterceptor() {

            public Object intercept(Object proxy, Method method, Object[] objects, MethodProxy methodProxy) throws Throwable {
                enhance1.before();
                Object invoke = method.invoke(target, args);
                enhance1.after();
                return invoke;
            }
        });
            //4.创建代理对象

        Target proxy = (Target) enhancer.create();
        //调用
        proxy.save();
    }
}
