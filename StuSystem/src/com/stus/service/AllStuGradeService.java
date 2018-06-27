package com.stus.service;

import java.sql.SQLException;
import java.util.List;

import com.stus.Dao.AllStuGradeDao;
import com.stus.bean.Grade;

public class AllStuGradeService {

	public List<Grade> showGrade(String tid) throws SQLException {
		AllStuGradeDao aDao = new AllStuGradeDao();
		return aDao.showGrade(tid);
	}

}
