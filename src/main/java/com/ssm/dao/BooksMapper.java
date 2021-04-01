package com.ssm.dao;

import com.ssm.entity.Books;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BooksMapper {
    //新增书
    int add(Books books);
    //删除
    int delete(@Param("bookID") int bookID);
    //修改
    int update(Books books);
    //根据ID查询
    Books queryById(@Param("bookID")int bookID);
    //查询所有
    List<Books> selectAll();
    //根据书的名称查询书的信息
    List<Books> queryByName(@Param("bookName") String bookName);
}
