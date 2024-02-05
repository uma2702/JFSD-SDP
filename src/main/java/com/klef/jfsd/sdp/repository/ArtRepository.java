package com.klef.jfsd.sdp.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.sdp.model.Art;

@Repository
public interface ArtRepository extends JpaRepository<Art, Integer>{
  @Query("from Art where email=?1")
  public List<Art> viewarts(String email);

}
