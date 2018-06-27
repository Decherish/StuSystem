package com.stus.Dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.stus.bean.Elective;
import com.stus.bean.Obligatory;
import com.stus.util.DataSourceUtils;

public class GradeDao {

	public List<Elective> findEle(String id) throws SQLException {
		String sql = "select * from elective where sid=?";
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDateSource());
		return runner.query(sql, new BeanListHandler<Elective>(Elective.class),id);
	}

	public List<Obligatory> finObl(String id) throws SQLException {
		String sql = "select * from Obligatory where sid=?";
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDateSource());
		return runner.query(sql, new BeanListHandler<Obligatory>(Obligatory.class),id);
	}

}
