package com.light.ac.web;

import org.apache.shiro.web.filter.PathMatchingFilter;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/**
 * Created by 蓝兵 on 2019/6/18.
 * https://www.w3cschool.cn/shiro/oibf1ifh.html
 */

public class LoginFilter extends PathMatchingFilter {

    @Override
    protected boolean onPreHandle(ServletRequest request1, ServletResponse response, Object mappedValue) {


        return true;
    }
}
