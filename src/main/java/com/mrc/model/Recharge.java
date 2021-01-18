package com.mrc.model;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "recharge")
public class Recharge {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	@Column(name = "username")
	private String username;
	private Double amount;
	private String status;
	private String operator;
	private String phone;
	private String simtype;
	@Column(name = "created_date")
	private Timestamp createdDate;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public Double getAmount() {
		return amount;
	}
	public void setAmount(Double amount) {
		this.amount = amount;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Timestamp getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(Timestamp createdDate) {
		this.createdDate = createdDate;
	}
	
	public String getOperator() {
		return operator;
	}
	public void setOperator(String operator) {
		this.operator = operator;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public String getSimtype() {
		return simtype;
	}
	public void setSimtype(String simtype) {
		this.simtype = simtype;
	}
//	@Override
//	public String toString() {
//		return "Recharge [id=" + id + ", createdBy=" + createdBy + ", amount=" + amount + ", status=" + status
//				+ ", operator=" + operator + ", phone=" + phone + ", simtype=" + simtype + ", createdDate="
//				+ createdDate + "]";
//	}

}
