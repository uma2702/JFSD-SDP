package com.klef.jfsd.sdp.service;

import java.util.List;

import com.klef.jfsd.sdp.model.Art;

public interface ArtService {
	public String addart(Art ar);
	public List<Art> ViewAllArts(String email);
	public Art viewartbyid(int arid);
	public List<Art> viewallarts();
	public int artscount();
	public String updateart(Art at);
	
	
}
