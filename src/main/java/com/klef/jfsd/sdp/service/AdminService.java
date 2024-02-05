package com.klef.jfsd.sdp.service;


import java.util.List;

import com.klef.jfsd.sdp.model.Admin;
import com.klef.jfsd.sdp.model.Artist;

public interface AdminService{
	public List<Artist> viewallartists();
	public String deleteartist(int id);
    public Admin checkadminlogin(String auname, String apwd);
	public Artist viewartistbyid(int aid);
	public int updatestatus(boolean active,int aid);
	
}
