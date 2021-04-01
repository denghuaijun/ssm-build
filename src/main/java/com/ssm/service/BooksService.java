package com.ssm.service;

import com.ssm.entity.Books;

import java.util.List;

public interface BooksService {
    //新增书
    int add(Books books);
    //删除
    int delete(int bookID);
    //修改
    int update(Books books);
    //根据ID查询
    Books queryById(int bookID);
    //查询所有
    List<Books> selectAll();
    //根据书名查询书的信息
    List<Books> querybyBookName(String queryBookName);
}
