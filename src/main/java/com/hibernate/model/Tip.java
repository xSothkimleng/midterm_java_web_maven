package com.hibernate.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name="Tip")
@Table(name="tbl_tip")
public class Tip {
	
	@Id
	int tip_id;
	String title;
	String description;
	String exampleHtmlEscape;
	
	public Tip() {}

	public Tip(String title, String description, String exampleHtmlEscape) {
		super();
		this.title = title;
		this.description = description;
		this.exampleHtmlEscape = exampleHtmlEscape;
	}

	public int getTip_id() {
		return tip_id;
	}

	public void setTip_id(int tip_id) {
		this.tip_id = tip_id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getExampleHtmlEscape() {
		return exampleHtmlEscape;
	}

	public void setExampleHtmlEscape(String exampleHtmlEscape) {
		this.exampleHtmlEscape = exampleHtmlEscape;
	}
}
