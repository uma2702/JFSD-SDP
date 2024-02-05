package com.klef.jfsd.sdp.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.sdp.model.Admin;
import com.klef.jfsd.sdp.model.Artist;
import com.klef.jfsd.sdp.repository.AdminRepository;
import com.klef.jfsd.sdp.repository.ArtistRepository;

@Service
public class AdminServiceImpl implements AdminService{

	
	@Autowired
	private ArtistRepository artistRepository;
	
	@Autowired
	private AdminRepository adminRepository;
	
	@Override
	public List<Artist> viewallartists() {
		return artistRepository.findAll();
	}

	@Override
	public Admin checkadminlogin(String auname, String apwd) {
		return adminRepository.checkadminlogin(auname, apwd);
	}

	@Override
	public String deleteartist(int id) {
        Optional<Artist> obj = artistRepository.findById(id);
	    
	    String msg = null;
	    
	    if(obj.isPresent())
	    {
	      Artist a= obj.get();
	      artistRepository.delete(a);
	      msg = "Artist Deleted Successfully";
	    }
	    else
	    {
	      msg = "Artist Not Found";
	    }
	    
	    return msg;
	}

	@Override
	public Artist viewartistbyid(int aid) 
	{
Optional<Artist> obj = artistRepository.findById(aid);    
	    
	    if(obj.isPresent())
	    {
	      Artist artist = obj.get();
	      return artist;
	    }
	    else
	    {
	      return null;
	    }

	}
	
	public int updatestatus(boolean active, int aid) 
	{
		//admin will update so adminservice is taken-->adminrepo
		return adminRepository.updatestatus(active, aid);
	}
}
