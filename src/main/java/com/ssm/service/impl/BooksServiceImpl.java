package com.ssm.service.impl;

import com.ssm.dao.BooksMapper;
import com.ssm.entity.Books;
import com.ssm.service.BooksService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

//@Service 使用配置文件xml，注解不看了
public class BooksServiceImpl implements BooksService {

    //使用组合的方式注入
    //@Autowired
    private BooksMapper booksMapper;

    public void setBooksMapper(BooksMapper booksMapper) {
        this.booksMapper = booksMapper;
    }

    @Override
    public int add(Books books) {
        return booksMapper.add(books);
    }
    @Override
    public int delete(int bookID) {
        return booksMapper.delete(bookID);
    }
    @Override
    public int update(Books books) {
        int update = booksMapper.update(books);
        //int n=3/0; 测试事物使用
        return update;
    }
    @Override
    public Books queryById(int bookID) {
        return booksMapper.queryById(bookID);
    }
    @Override
    public List<Books> selectAll() {
        return booksMapper.selectAll();
    }

    @Override
    public List<Books> querybyBookName(String queryBookName) {
        return booksMapper.queryByName(queryBookName);
    }
}
