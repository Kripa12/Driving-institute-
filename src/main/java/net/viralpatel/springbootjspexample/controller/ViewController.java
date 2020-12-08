package net.viralpatel.springbootjspexample.controller;

import net.viralpatel.springbootjspexample.core.UserType;
import net.viralpatel.springbootjspexample.model.User;
import net.viralpatel.springbootjspexample.repository.UserRepository;
import net.viralpatel.springbootjspexample.service.user.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/**
 * View  Control
 * Main api '/'
 * only view returning related api*/

@Controller
public class ViewController {


    @Autowired
    private UserRepository userRepository;

    @Autowired
    private UserService userService;

    /**
     * default api
     * index page*/
    @GetMapping("/")
    public String welcome(ModelMap modelMap , HttpServletResponse response) {
        Cookie name = new Cookie("username",null);
        Cookie userId = new Cookie("userId",null);
        Cookie userType = new Cookie("userType",null);
        response.addCookie(name);
        response.addCookie(userId);
        response.addCookie(userType);
        modelMap.put("message", "helloMessage");

        return "index";
    }


    /**
     * summary page returning api*/
    @GetMapping("/summary")
    public String loadFeedbackList(){
        return "summary";
    }


    /**
     * summary page returning api
     * @param username -name of user
     * @param password -password of user*/
    @PostMapping("/login")
    public String login(@RequestParam String username , @RequestParam String password , ModelMap modelMap, HttpServletResponse response,HttpServletRequest request) {
        // todo find user type and return view according to it
        User user = userRepository.findUserByUserName(username);
        if (user == null) {
            modelMap.put("error" , "user not found");
            return "index";
        }
        if(!user.getPassword().equals(password)){
            modelMap.put("error" , "Incorrect Password!!");
            return "index";
        }
        modelMap.put("user" , user);
        Cookie name = new Cookie("username",user.getUserName());
        Cookie userId = new Cookie("userId",user.getId().toString());
        Cookie userType = new Cookie("userType",user.getUserType().toString());
//        Cookie email = new Cookie("email", "rockaygmail.com");
        name.setMaxAge(7*24*60*60);
        // Add both the cookies in the response header.
        response.addCookie(name);
        response.addCookie(userId);
        response.addCookie(userType);
        return "admin-dashboard";
    }

    /**
     * @param - id of user*/
    @GetMapping("/exam/{id}")
    public String takeExam(ModelMap modelMap , @PathVariable String id) {
        modelMap.put("userId" , id);
        return "exam-form";
    }

    /**
     * index - logout*/
    @GetMapping("/index")
    public String logout(HttpServletResponse response) {
        // clear cookie data
        Cookie name = new Cookie("username",null);
        Cookie userId = new Cookie("userId",null);
        Cookie userType = new Cookie("userType",null);
        response.addCookie(name);
        response.addCookie(userId);
        response.addCookie(userType);
        return "index";
    }

    @GetMapping("/home")
    public String home(HttpServletRequest httpServletRequest , ModelMap modelMap) {
        Map<String, Cookie> cookieMap = new HashMap<>();
        for (Cookie cookie : httpServletRequest.getCookies()) {
            cookieMap.put(cookie.getName(), cookie);
        }
        if (ObjectUtils.isEmpty(cookieMap)) {
            return "index";
        }
        User user = new User();
        user.setUserType(UserType.valueOf(cookieMap.get("userType").getValue()));
        user.setId(Long.valueOf(cookieMap.get("userId").getValue()));
        user.setUserName(cookieMap.get("username").getValue());
        modelMap.put("user", user);
        return "admin-dashboard";
    }

    /**
     * view all answers*/
    @GetMapping("/view-answers")
    public String viewUserAnswers(ModelMap modelMap){
        List<User> users = userService.findAll();
        modelMap.put("userList" , users);
        return "view-answer";
    }


    /**
     * weather data page*/
    @GetMapping("/postal-code")
    public String loadMarketPriceData(){
        return "weather-data";
    }
}
