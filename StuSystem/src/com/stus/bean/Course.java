package com.stus.bean;

public class Course {

	private int id;
	private String cname;
	private int type;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCname() {
		return cname;
	}

	@Override
	public String toString() {
		return "Course [id=" + id + ", cname=" + cname + ", type=" + type + "]";
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

}
