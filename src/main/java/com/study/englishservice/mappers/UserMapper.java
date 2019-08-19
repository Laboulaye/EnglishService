package com.study.englishservice.mappers;

import com.study.englishservice.dto.UserDTO;
import com.study.englishservice.model.User;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

@Mapper
public interface UserMapper {
    UserMapper INSTANCE = Mappers.getMapper(UserMapper.class);

    UserDTO toDTO(User user);
}
