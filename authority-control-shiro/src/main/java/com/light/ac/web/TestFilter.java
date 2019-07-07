package com.light.ac.web;

import org.apache.shiro.web.filter.PathMatchingFilter;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

/**
 * Created by 蓝兵 on 2019/6/18.
 * https://www.w3cschool.cn/shiro/oibf1ifh.html
 */

public class TestFilter extends PathMatchingFilter {

    @Override
    protected boolean onPreHandle(ServletRequest request1, ServletResponse response, Object mappedValue) {

        HttpServletRequest request = (HttpServletRequest) request1;

        System.out.println("onPreHandle(): " + request.getContextPath());//
        System.out.println("onPreHandle(): " + request.getPathInfo());//
        System.out.println("onPreHandle(): " + request.getPathTranslated());//
        System.out.println("onPreHandle(): " + request.getQueryString()); //
        System.out.println("onPreHandle(): " + request.getRequestURI());//
        System.out.println("onPreHandle(): " + request.getRequestURL().toString());//
        System.out.println("onPreHandle(): " + request.getServletPath());//

        return true;
    }
}
