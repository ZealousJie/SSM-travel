package org.hnist.aopAnno;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

//切面类 包含增强方法

@Component("myAspect")//注入到容器中
@Aspect //标注该类是一个切面类
public class MyAspect {


    //配置织入过程 增强类型注解里写切点表达式
//    @Before("Pointcut()")
    public void before(){
        System.out.println("前置增强");
    }
    public void afterReturning(){
        System.out.println("后置增强");
    }

    @Around("PointcutLogin()")
    public Object around1(ProceedingJoinPoint proceedingJoinPoint) throws Throwable {
        System.out.println("用户正在登录");
        Object proceed = proceedingJoinPoint.proceed();//正在执行的连接点 即切点（方法）
        System.out.println("用户登录结束");
        return proceed;
    }
    @Around("PointcutUser()")
    public Object around2(ProceedingJoinPoint proceedingJoinPoint) throws Throwable {
        System.out.println("用户正在查询");
        Object proceed = proceedingJoinPoint.proceed();//正在执行的连接点 即切点（方法）
        System.out.println("用户查询结束");
        return proceed;
    }
    public void afterThrowing(){
        System.out.println("异常抛出增强");
    }

    public void after(){
        System.out.println("最终增强");
    }

    @Pointcut("execution(* org.hnist.service.*.Login(..) )")//切点应该是service的方法 不是controller
    public void PointcutLogin(){}
    @Pointcut("execution(* org.hnist.service.*.getUserAll(..) )")//切点应该是service的方法 不是controller
    public void PointcutUser(){}
}
