package org.oguz.spring.web.service;


import java.util.List;

import org.oguz.spring.web.model.User;
import org.oguz.spring.web.model.dao.UsersDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("usersService")
public class UsersService
{
	private UsersDao usersDao;


	@Autowired
	public void setUsersDao(UsersDao usersDao)
	{
		this.usersDao = usersDao;
	}


	public void createUser(User user)
	{
		usersDao.createUser(user);

	}


	public boolean exists(String username)
	{

		return usersDao.exists(username);
	}

	public List<User> getCurrent()
	{
		return this.usersDao.getUsers();
	}

}
