package com.stus.service;

import java.sql.SQLException;
import java.util.List;

import com.stus.Dao.MessageDao;
import com.stus.bean.Student;

public class MessageService {

	MessageDao messageDao = new MessageDao();
	public List<Student> findAll(String id) throws SQLException {
		return messageDao.findAll(id);
	}
	
	public Student findByid(String id) throws SQLException{
		return messageDao.findByid(id);
	}



}
