package com.stus.service;


import java.sql.SQLException;
import java.util.List;

import com.stus.Dao.SCMDao;
import com.stus.bean.ClasszPlace;

public class SCMService {

	public List<ClasszPlace> findMessage(String id) throws SQLException {
		SCMDao scmDao = new SCMDao();
		return scmDao.findMessage(id);
	}

}
