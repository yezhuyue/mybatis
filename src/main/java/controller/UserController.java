package controller;

import com.alibaba.fastjson.JSON;
import dao.UserMapper;
import model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * Created by tang on 2017/3/28.
 */
@Controller
public class UserController {

    @Autowired
    private UserMapper userMapper;
    //跳转至欢迎首页
    @RequestMapping(value = "/",method = RequestMethod.GET)
    public String index() {
        return "/index";
    }

    @RequestMapping("/getUsers")
    public String users(ModelMap modelMap){
        List<User> users = userMapper.getAllUsers();
        modelMap.addAttribute("users",users);
        return "/users";
    }
    @RequestMapping("/show/{id}")
    public String showUser(@PathVariable("id") String id,ModelMap modelMap){
        User user = userMapper.selectByPrimaryKey(id);
        String updateTime = JSON.toJSONStringWithDateFormat(user.getUpdateTime(),"yyyy-MM-dd HH:mm:ss");
        String createTime = JSON.toJSONStringWithDateFormat(user.getCreateTime(),"yyyy-MM-dd HH:mm:ss");
        modelMap.addAttribute("user",user);
        modelMap.addAttribute("updateTime",updateTime);
        modelMap.addAttribute("createTime",createTime);
        return "/userDetail";
    }
    //更新页面信息
    @RequestMapping("/update/{id}")
    public String updateUser(@PathVariable("id") String id,ModelMap modelMap){
        User user = userMapper.selectByPrimaryKey(id);
        modelMap.addAttribute("user",user);
        return "/updateUser";
    }
    @RequestMapping("/updatePost")
    public String updateUserPost(@ModelAttribute("user")User user){
        userMapper.updateByPrimaryKeySelective(user);
        return "redirect:/getUsers";
    }
    //显示添加用户页面
    @RequestMapping("/addUser")
        public String addUser(){
            return "/addUser";
    }
    @RequestMapping(value = "addUserPost",method = RequestMethod.POST)
    public String addUserPost(@ModelAttribute("user")User user){
        userMapper.insertSelective(user);
        return "redirect:/getUsers";
    }
    @RequestMapping("/delete/{id}")
    public String deleteUser(@PathVariable("id")String id){
        userMapper.deleteByPrimaryKey(id);
        return "redirect:/getUsers";
    }
}
