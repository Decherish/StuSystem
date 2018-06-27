package com.stus.service;

import java.sql.SQLException;
import java.util.List;

import com.stus.Dao.ChooseDao;
import com.stus.bean.Course;

public class ChooseService {

	ChooseDao cDao = new ChooseDao();

	public List<Course> find() throws SQLException {
		return cDao.find();
	}

	public void choose(String id,String name) throws SQLException {
		cDao.choose(id,name);
	}

}
