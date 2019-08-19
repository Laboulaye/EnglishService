package com.study.englishservice.controller;

import com.study.englishservice.model.User;
import com.study.englishservice.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
public class Controller {

    private final UserService userService;

    @GetMapping("/hello/{id}")
    public User sayHello(@PathVariable Long id){
        return userService.getUser(id);
    }
}
