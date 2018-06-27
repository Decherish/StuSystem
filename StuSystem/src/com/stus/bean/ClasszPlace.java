package com.stus.bean;

public class ClasszPlace {

	private int cid;
	private String cteacher;
	private String time;
	private String place;
	private String cname;

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public String getCteacher() {
		return cteacher;
	}

	public void setCteacher(String cteahcer) {
		this.cteacher = cteahcer;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	@Override
	public String toString() {
		return "ClasszPlace [cid=" + cid + ", cteacher=" + cteacher + ", time="
				+ time + ", place=" + place + ", cname=" + cname + "]";
	}

}
