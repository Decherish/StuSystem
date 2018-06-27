package com.stus.service;

import java.sql.SQLException;

import com.stus.Dao.UpGradeDao;

public class UpGradeService {

	public void UpGrade(String sid, String cname, Object grade) throws SQLException {
		UpGradeDao uDao = new UpGradeDao();
		uDao.UpGrade(sid,cname,grade);
	}

}
