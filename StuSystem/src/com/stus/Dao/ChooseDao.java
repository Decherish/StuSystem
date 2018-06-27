package com.stus.Dao;

import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.stus.bean.Course;
import com.stus.util.DataSourceUtils;

public class ChooseDao {

	public List<Course> find() throws SQLException {
		String sql = "select * from course";
		QueryRunner  runner = new QueryRunner(DataSourceUtils.getDateSource());
		return runner.query(sql, new BeanListHandler<Course>(Course.class));
	}

	public void choose(String id, String name) throws SQLException {
		String sql = "insert into elective values(null,?,?,0)";
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDateSource());
		runner.update(sql, id,name);
	}

}
