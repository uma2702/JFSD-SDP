package com.klef.jfsd.sdp.service;

import java.util.List;

import com.klef.jfsd.sdp.model.Artist;

public interface ArtistService {
	
	public String addArtist(Artist a);
    public Artist viewArtistbyid(int aid);
	public Artist checkplogin(String email,String pwd);
    public int artistscount();
    
    public List<Artist> viewallartists();
    public String updateartist(Artist atst);

}
