package org.hnist.proxy.jdk;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

//基于jdk(proxy)动态代理的代码 这是spring帮你封装好的 即aop 这算是aop底层代码
public class ProxyTest {
    public static void main(String[] args) {
        //目标对象
        final Target target =new Target();

        //增强对象
        final enhance enhance1 = new enhance();
        //返回值时动态生成代理对象 即为目标对象生成代理对象
       TargetInterface proxy=(TargetInterface) Proxy.newProxyInstance(
                target.getClass().getClassLoader(),         //第一个参数 目标对象的类加载器
                target.getClass().getInterfaces(),          //第二个参数目标对象相同的接口字节码对象数组
                new InvocationHandler() {                   //最后一个参数, 一个接口
                    @Override
                    //调用代理对象的任何方法 实质执行的都是invoke 方法
                    public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
                        enhance1.before();//前置增强
                        Object invoke = method.invoke(target, args);//执行目标方法 目标对象，实际参数
                        enhance1.after(); //后置增强
                        return invoke;
                    }
                }
        );

       //调用代理对象的方法
        proxy.save();
    }
}
