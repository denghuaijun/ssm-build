package com.ssm.controller;

import com.alibaba.fastjson.JSON;
import com.ssm.entity.Books;
import com.ssm.entity.User;
import com.ssm.service.BooksService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * 测试ajax页面
 */

@RestController
@RequestMapping("/ajax")
public class TestAjaxController {

    @Autowired
    private BooksService booksService;

    @RequestMapping("/t1")
    public  String t1(){
        return "hello";
    }

    /**
     * 使用ajax发送异步请求
     * @param name
     * @param response
     * @throws IOException
     */
    @PostMapping("/a1")
    public void testA1(String name, HttpServletResponse response) throws IOException {
        System.out.println("ajax---->:"+name);
        response.getWriter().write(name);
    }

    @RequestMapping(value = "/a2",produces = "application/json;charset=utf-8")
    public String queryBooks()  {
        List<Books> books = booksService.selectAll();
        System.out.println(books);
        return books.toString();
    }


    @RequestMapping("/a3")
    public List<User> a3()  {
        List<User> userList =new ArrayList<>();
        userList.add(new User("邓怀俊",10,"男"));
        userList.add(new User("邓怀俊1",10,"男"));
        userList.add(new User("邓怀俊2",10,"男"));

        return userList;
    }
}
