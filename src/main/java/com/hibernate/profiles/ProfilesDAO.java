package com.hibernate.profiles;

import java.util.List;

import org.springframework.context.annotation.Profile;

public interface ProfilesDAO {

	void insert(Profiles p);
	void update(Profiles p);
	void delete(int id);
	Profiles getProfiles(int id);
	boolean getEmails(String email);
	List<Profiles> getAllProfiles();
}
