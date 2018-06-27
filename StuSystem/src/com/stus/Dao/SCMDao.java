package com.stus.Dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.stus.bean.ClasszPlace;
import com.stus.util.DataSourceUtils;

public class SCMDao {

	public List<ClasszPlace> findMessage(String id) throws SQLException {
		String sql = "select * from classplace where cname in (select cname from elective where sid=?)";
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDateSource());
		return runner.query(sql, new BeanListHandler<ClasszPlace>(ClasszPlace.class),id);
	}

}
