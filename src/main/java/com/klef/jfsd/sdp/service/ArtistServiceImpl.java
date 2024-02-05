package com.klef.jfsd.sdp.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.sdp.model.Artist;
import com.klef.jfsd.sdp.repository.ArtistRepository;

@Service
public class ArtistServiceImpl implements ArtistService{
	
	@Autowired
	private ArtistRepository artistRepository;
	
	

	@Override
	public String addArtist(Artist a) {
		artistRepository.save(a);
		return "Registered Successfully";
	}


	@Override
	public Artist viewArtistbyid(int aid) {
		Optional<Artist> obj = artistRepository.findById(aid);
		if(obj.isPresent()) {
			Artist a=obj.get();
			return a;
		}else {
		return null;
		}
	}

	@Override
	public Artist checkplogin(String email, String pwd) {
		return artistRepository.checkplogin(email, pwd);

	}


	@Override
	public int artistscount() 
	{
       return (int) artistRepository.count();

	}


	@Override
	public List<Artist> viewallartists() {
		
		return artistRepository.findAll();
	}


	@Override
	public String updateartist(Artist atst) {
		Artist a=artistRepository.findById(atst.getId()).get();
		
		a.setName(atst.getName());
		a.setGender(atst.getGender());
		a.setBio(atst.getBio());
		a.setArtisticMedium(atst.getArtisticMedium());
		a.setLocation(atst.getLocation());
		a.setArtworkCategories(atst.getArtworkCategories());
		a.setEmail(atst.getEmail());
		a.setPhoneNumber(atst.getPhoneNumber());
		
		artistRepository.save(a);
		
		return "Updated Successfully";
	}



}
