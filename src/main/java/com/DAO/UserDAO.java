package com.DAO;

import com.entity.User;

public interface UserDAO {
    boolean userRegister(User user);
    
    User login(String username, String password);
}
