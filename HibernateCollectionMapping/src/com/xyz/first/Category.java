package com.xyz.first;

import java.util.List;

public class Category {
	private int id;
	   private String cname;
	   
	   private List<String>productname;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public List<String> getProductname() {
		return productname;
	}

	public void setProductname(List<String> productname) {
		this.productname = productname;
	}
	   
	   
}
