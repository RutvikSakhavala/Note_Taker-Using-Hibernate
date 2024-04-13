package com.hibernate.project;

import java.util.Date;
import java.util.Random;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Note {
	
	@Id
	private int id;
	private String title;
	private String content;
	private Date addDate;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getAddDate() {
		return addDate;
	}
	public void setAddDate(Date addDate) {
		this.addDate = addDate;
	}
	public Note(String title, String content, Date addDate) {
		super();
		this.id = new Random().nextInt(1000);
		this.title = title;
		this.content = content;
		this.addDate = addDate;
	}
	public Note() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
