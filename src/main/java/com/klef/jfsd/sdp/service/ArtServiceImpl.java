package com.klef.jfsd.sdp.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.sdp.model.Art;
import com.klef.jfsd.sdp.repository.ArtRepository;

@Service
public class ArtServiceImpl implements ArtService {
	
	@Autowired 
	private ArtRepository artRepository;

	@Override
	public String addart(Art ar) {
		artRepository.save(ar);
		return "Successfully Uploaded";
	}

	@Override
	public List<Art> ViewAllArts(String email) 
	{
		return artRepository.viewarts(email);
	}

	@Override
	public Art viewartbyid(int arid) 
	{
		Optional<Art> ar=artRepository.findById(arid);
		if(!ar.isEmpty())
		{
			Art a=ar.get();
			return a;
		}
		else 
		{
			return null;
		} 
	}

	@Override
	public List<Art> viewallarts() 
	{
		return artRepository.findAll();
	}

	@Override
	public int artscount() {
		
		return (int) artRepository.count();
	}

	@Override
	public String updateart(Art at) {
		Art a=artRepository.findById(at.getId()).get();
		
		a.setName(at.getName());
		a.setType(at.getType());
		a.setPrice(at.getPrice());
		a.setDesc(at.getDesc());
		a.setEmail(at.getEmail());
		a.setStock(at.isStock());
		a.setImage(at.getImage());
		
	
		
		artRepository.save(a);
		
		return "update Success..";
	}

	
	
	
	

}
