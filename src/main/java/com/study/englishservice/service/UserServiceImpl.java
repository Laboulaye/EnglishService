package com.study.englishservice.service;

import com.study.englishservice.model.User;
import com.study.englishservice.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class UserServiceImpl implements UserService {

    private final UserRepository userRepository;

    @Override
    public User getUser(Long id) {
        return userRepository.getById(id);
    }
}
