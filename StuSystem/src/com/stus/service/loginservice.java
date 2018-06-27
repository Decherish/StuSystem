package com.stus.service;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.stus.Dao.loginDao;
import com.stus.bean.Student;
import com.stus.bean.Teacher;

public class loginservice {
	
	loginDao lDao = new loginDao();
	
	public Student login(String id) throws SQLException{
		return lDao.login(id);
	}
	

	public Teacher login1(String id) throws SQLException {
		return lDao.login1(id);
	}
}
