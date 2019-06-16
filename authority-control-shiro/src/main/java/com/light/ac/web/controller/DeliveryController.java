package com.light.ac.web.controller;

import com.github.pagehelper.PageInfo;
import com.light.ac.domain.User;
import com.light.ac.service.UserService;
import com.light.ac.vo.Result;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by 蓝兵 on 2019/6/15.
 */

@Controller
@RequestMapping("/delivery")
public class DeliveryController {

    @Autowired
    private UserService userService;

    @RequiresPermissions("delivery:listUI")
    @RequestMapping("/listUI")
    public String listUI(HttpServletRequest request) {
        return "delivery/listUI";
    }

    @RequiresPermissions("delivery:listUI")
    @RequestMapping("/list")
    @ResponseBody
    public Result list(int offset, int limit, String search) {

        PageInfo<User> pageInfo = this.userService.getListByPage(offset / limit + 1, limit, search);
        return Result.succeed(pageInfo);
    }
}
