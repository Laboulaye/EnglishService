package com.study.englishservice.repositories;

import com.study.englishservice.model.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends CrudRepository<User, Long> {

    User getById(Long id);
}
