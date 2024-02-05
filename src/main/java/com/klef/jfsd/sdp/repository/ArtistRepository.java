package com.klef.jfsd.sdp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.sdp.model.Artist;

@Repository
public interface ArtistRepository extends JpaRepository<Artist, Integer>{
	
	@Query("select a from Artist a where email=?1 and password=?2")
	public Artist checkplogin(String email,String pwd);

}
