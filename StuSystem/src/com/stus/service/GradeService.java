package com.stus.service;

import java.sql.SQLException;
import java.util.List;

import com.stus.Dao.GradeDao;
import com.stus.bean.Elective;
import com.stus.bean.Obligatory;

public class GradeService {

	GradeDao gDao = new GradeDao();
	public List<Elective> findEle(String id) throws SQLException {
		return gDao.findEle(id);
	}
	public List<Obligatory> finObl(String id) throws SQLException {
		return gDao.finObl(id);
	}

}
