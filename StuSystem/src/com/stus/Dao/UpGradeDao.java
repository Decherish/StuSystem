package com.stus.Dao;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;

import com.stus.util.DataSourceUtils;

public class UpGradeDao {

	public void UpGrade(String sid, String cname, Object grade) throws SQLException {
		String sql = "update elective set grade=? where sid=? and cname=?";
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDateSource());
		runner.update(sql,grade,sid,cname);
	}

}
