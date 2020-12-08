package net.viralpatel.springbootjspexample.controller;


import net.viralpatel.springbootjspexample.model.User;
import net.viralpatel.springbootjspexample.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import java.util.Arrays;
import java.util.stream.Collectors;
/**
 * Rest api
 * Main api '/user'
 * only user related api*/

@RestController
@RequestMapping("/user")
public class UserController {
    public UserController(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @Autowired
    private UserRepository userRepository;

    /**
     * register api , sub api -'/register'
     * Request type User
     * @param user  pass user detail for register*/
    @PostMapping("/register")
    public ResponseEntity<?>  register(@RequestBody User user){
        User user1 = userRepository.findUserByUserName(user.getUserName());
        if(user1 != null) {
            return ResponseEntity
                    .status(401)
                    .body("user already taken");
        }
        User saveUser = userRepository.save(user);
        if(saveUser == null) {
            return ResponseEntity
                    .status(401)
                    .body("failed to save user");
        }
        return ResponseEntity
                .status(200)
                .body("successfully saved !!!");
    }

    /**
     * @param request - http request
     * returns all the cookies from http*/
    @GetMapping ("/all-cookies")
    public String readCookie (HttpServletRequest request) {
        Cookie[] cookies=request.getCookies();
        if (cookies!=null) {
            return Arrays.stream (cookies)
                    .map (c->c.getName () + "=" + c.getValue ())
                    .collect (Collectors.joining (","));
        }
        return "no cookies";
    }
}
