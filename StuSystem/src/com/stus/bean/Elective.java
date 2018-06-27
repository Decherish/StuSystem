package com.stus.bean;

public class Elective {

	@Override
	public String toString() {
		return "Elective [id=" + id + ", sid=" + sid + ", cname=" + cname
				+ ", grade=" + grade + "]";
	}

	private int id;
	private int sid;
	private String cname;
	private String grade;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getSid() {
		return sid;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}
}
