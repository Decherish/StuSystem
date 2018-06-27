package com.stus.Dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.stus.util.*;
import com.stus.bean.Student;

public class MessageDao {

	public List<Student> findAll(String id) throws SQLException {
		String sql = "SELECT student.id,student.name,student.password,student.sex,student.ldormitory,student.classz,student.birthday FROM classplace INNER JOIN elective ON elective.cname = classplace.cname INNER JOIN student ON elective.sid = student.id INNER JOIN teacher ON classplace.cteacher = teacher.name WHERE teacher.id = ? GROUP BY student.id";
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDateSource());
		return runner.query(sql, new BeanListHandler<Student>(Student.class),id);
	}

	public Student findByid(String id) throws SQLException {
		String sql = "select * from student where id=?";
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDateSource());
		return runner.query(sql, new BeanHandler<Student>(Student.class), id);
	}

}
