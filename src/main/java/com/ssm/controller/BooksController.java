package com.ssm.controller;


import com.ssm.entity.Books;
import com.ssm.service.BooksService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/book")
public class BooksController {

    @Autowired
    @Qualifier("booksService")
    private BooksService booksService;

    @RequestMapping(value = "/add")
    public String add(Books books){
        booksService.add(books);
        //添加成功：重定向到列表页面
        return "redirect:/book/queryAll";
    }
    @RequestMapping(value = "/del/{bookId}")
    public String del(@PathVariable("bookId") int bookId){
        booksService.delete(bookId);
        return "redirect:/book/queryAll";
    }
    @RequestMapping(value = "/update")
    public String update(Books books){
        booksService.update(books);
        return "redirect:/book/queryAll";
    }
    @RequestMapping(value = "/queryById",produces = "application/json;charset=utf-8")
    public String queryById(@RequestParam("id") int bookId){
        Books books = booksService.queryById(bookId);
        return books.toString();
    }

    /**
     * 查询所有书籍并返回列表页面
     * @return
     */
    @RequestMapping(value = "/queryAll")
    public String selectAll(Model model){
        List<Books> books = booksService.selectAll();
        model.addAttribute("books",books);
        return "bookList";
    }
    /**
     * 查询所有书籍并返回列表页面
     * @return
     */
    @RequestMapping(value = "/toAdd")
    public String toAddPage(){
        return "addBook";
    }
    /**
     * 跳转到修改书籍页面
     * @return
     */
    @RequestMapping(value = "/toUpdate")
    public String toUpdate(@RequestParam("bookId") int id, Model model){
        Books books = booksService.queryById(id);
        model.addAttribute("books",books);
        return "updateBook";
    }
    /**
     * 根据书籍名称查询书的信息
     * @return
     */
    @RequestMapping(value = "/byBookName")
    public String querybyBookName(String queryBookName,Model model){
        List<Books> books = booksService.querybyBookName(queryBookName);
        if (CollectionUtils.isEmpty(books)){
            model.addAttribute("msg","未查到数据");
        }else {
            model.addAttribute("books",books);
        }
        return "bookList";
    }
}
