package controller;

import dao.BlogMapper;
import dao.UserMapper;
import model.Blog;
import model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by tang on 2017/3/29.
 */
@Controller
public class BlogController {
    @Autowired
    private BlogMapper blogMapper;
    @Autowired
    private UserMapper userMapper;

    @RequestMapping("/getBlogs")
    public String getBlogs(ModelMap modelMap) {
        List<Blog> blogs = blogMapper.getBlogs();
        modelMap.addAttribute("blogs", blogs);
        return "/blogs";
    }

    //显示添加博客页面
    @RequestMapping("/addBlog")
    public String addBlog(ModelMap modelMap) {
        List<User> users = userMapper.getAllUsers();
        modelMap.addAttribute("users", users);
        return "/addBlog";
    }

    //添加博客,并跳转到首页
    @RequestMapping("/addBlogPost")
    public String addBlogPost(@ModelAttribute("blog") Blog blog) {
        blogMapper.insertSelective(blog);
        return "redirect:/getBlogs";
    }
    @RequestMapping("/deleteBlog/{id}")
    public String deleteBlog(@PathVariable("id")Integer id){
        blogMapper.deleteByPrimaryKey(id);
        return "redirect:/getBlogs";
    }
    @RequestMapping("/showBlog/{id}")
    public String showBlog(@PathVariable("id")Integer id,ModelMap modelMap){
        Blog blog = blogMapper.selectByPrimaryKey(id);
        modelMap.addAttribute("blog",blog);
        return "/blogDetail";
    }
    //跳转到更新页面
    @RequestMapping("/updateBlog/{id}")
    public String updateBlog(@PathVariable("id")Integer id,ModelMap modelMap){
        Blog blog = blogMapper.selectByPrimaryKey(id);
        List<User> users = userMapper.getAllUsers();
        modelMap.addAttribute("blog",blog);
        modelMap.addAttribute("users",users);
        return "/updateBlog";
    }
    //处理更新请求
    @RequestMapping("/updateBlogPost")
    public String updateBlogPost(@ModelAttribute("blog")Blog blog){
        blogMapper.updateByPrimaryKeySelective(blog);
        return "redirect:/getBlogs";
    }
}
