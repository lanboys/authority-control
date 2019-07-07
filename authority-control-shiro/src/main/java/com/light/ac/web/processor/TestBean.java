package com.light.ac.web.processor;

import org.springframework.beans.factory.InitializingBean;

/**
 * Created by 蓝兵 on 2019/7/7.
 */
public class TestBean implements InitializingBean {

    String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
        System.out.println("**************1****************");
        System.out.println("setName-method is called " + name);
        System.out.println("******************************");
    }

    @Override
    public void afterPropertiesSet() throws Exception {
        System.out.println("***************2***************");
        System.out.println("afterPropertiesSet is called");
        System.out.println("******************************");
    }

    public void init() {
        System.out.println("*************3*****************");
        System.out.println("init-method is called");
        System.out.println("******************************");
    }
}