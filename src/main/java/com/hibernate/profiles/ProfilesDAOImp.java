package com.hibernate.profiles;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class ProfilesDAOImp implements ProfilesDAO {

	@Autowired
	private SessionFactory sessionFactory;
	public void insert(Profiles p) {
		this.sessionFactory.getCurrentSession().save(p);
	}

	public void update(Profiles p) {
		this.sessionFactory.getCurrentSession().update(p);
	}

	public void delete(int id) {
		this.sessionFactory.getCurrentSession().createQuery("delete from Profiles where id=:id").setInteger("id", id).executeUpdate();
	}


	public Profiles getProfiles(int id) {
		return (Profiles)this.sessionFactory.getCurrentSession().createQuery("from Profiles where id=:id").setInteger("id",id).list().get(0);
	}
	
	public List<Profiles> getAllProfiles() {
		return (List<Profiles>)this.sessionFactory.getCurrentSession().createQuery("from Profiles").list();
	}

	public boolean getEmails(String email) {
		int num = ((Number) this.sessionFactory.getCurrentSession().createQuery("select count(*) from Profiles where email=:email").setString("email", email).uniqueResult()).intValue();
		boolean flag = false;
		if(num == 1) {
			flag = true;
		}
		return flag;

	}


}
