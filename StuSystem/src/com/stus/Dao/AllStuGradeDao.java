package com.stus.Dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.stus.bean.Grade;
import com.stus.util.DataSourceUtils;

public class AllStuGradeDao {

	public List<Grade> showGrade(String tid) throws SQLException {
		String sql = "SELECT student.id,elective.cname,student.name,elective.grade FROM classplace INNER JOIN elective ON elective.cname = classplace.cname INNER JOIN student ON elective.sid = student.id INNER JOIN teacher ON classplace.cteacher = teacher.name WHERE teacher.id = ? ORDER BY elective.cname";
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDateSource());
		return runner.query(sql, new BeanListHandler<Grade>(Grade.class),tid);
	}

}
