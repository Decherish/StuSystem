package com.stus.bean;

public class Student {

	@Override
	public String toString() {
		return "Student [id=" + id + ", name=" + name + ", password="
				+ password + ", type=" + type + ", sex=" + sex
				+ ", ldormitory=" + ldormitory + ", classz=" + classz
				+ ", birthday=" + birthday + "]";
	}

	private int id;
	private String name;
	private String password;
	private int type;
	private String sex;
	private String ldormitory;
	private String classz;
	private String birthday;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getLdormitory() {
		return ldormitory;
	}

	public void setLdormitory(String ldormitory) {
		this.ldormitory = ldormitory;
	}

	public String getClassz() {
		return classz;
	}

	public void setClassz(String classz) {
		this.classz = classz;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
}
