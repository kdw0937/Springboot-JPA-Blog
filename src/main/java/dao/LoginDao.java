package dao;

import model.User;

public interface LoginDao {	
	void enrtyUser(User user);
	User getUser(String id);
	String getPassword(String id);
	Integer getIdCount(String id);
	String getGrade(String grade);
}
