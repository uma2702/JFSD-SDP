package com.klef.jfsd.sdp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.sdp.model.Admin;

import jakarta.transaction.Transactional;

@Repository
public interface AdminRepository extends JpaRepository<Admin, Integer> {
	@Query("select ad from Admin ad where username=?1 and password=?2")
    public Admin checkadminlogin(String auname, String apwd);
	
	@Query("update Artist set artiststatus=?1 where id=?2 ")//employee is model not pojo class
	@Modifying
	@Transactional
	public int updatestatus(boolean active,int aid);
	

}









