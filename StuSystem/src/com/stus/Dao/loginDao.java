package com.stus.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.sql.DataSource;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;
import org.apache.commons.dbutils.handlers.BeanHandler;

import com.stus.bean.Student;
import com.stus.bean.Teacher;
import com.stus.util.DataSourceUtils;

public class loginDao {

	public Student login(String id) throws SQLException{
		String sql = "select * from student where id=?";
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDateSource());
		return runner.query(sql, new BeanHandler<Student>(Student.class),id);
	}

	public Teacher login1(String id) throws SQLException {
		String sql = "select * from teacher where id=?";
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDateSource());
		return runner.query(sql, new BeanHandler<Teacher>(Teacher.class),id);
	}

}
