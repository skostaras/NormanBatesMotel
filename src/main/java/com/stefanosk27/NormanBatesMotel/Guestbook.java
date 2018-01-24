package com.stefanosk27.NormanBatesMotel;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="guestbook")
public class Guestbook{
	
	@Id
	@Column(name="ID")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	int id;
	
	@Column(name="nickname")
	String nickname;	
	
	@Column(name="email")
	String email;
	
	@Column(name="city")
	String city;
	
	@Column(name="comments")
	String comments;
	
	public Guestbook() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public Guestbook(int id, String nickname, String email, String city, String comments) {
		super();
		this.id = id;
		this.nickname = nickname;
		this.email = email;
		this.city = city;
		this.comments = comments;
	}
	
	
}