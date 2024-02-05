package com.klef.jfsd.sdp.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.sdp.model.Art;
import com.klef.jfsd.sdp.model.Customer;
import com.klef.jfsd.sdp.repository.ArtRepository;
import com.klef.jfsd.sdp.repository.ArtistRepository;
import com.klef.jfsd.sdp.repository.CustomerRepository;

@Service
public class CustomerServiceImpl implements CustomerService{
	
	@Autowired
	private CustomerRepository customerRepository;
	
	@Autowired
	private ArtRepository artRepository;

	@Override
	public String addcustomer(Customer c) {
		customerRepository.save(c);
		return "Registered Successfully";
	}

	@Override
	public Customer checklogin(String email, String pwd) {
		return customerRepository.checklogin(email, pwd);
	}

	@Override
	public int customerscount() {
		
		return (int) customerRepository.count();
	}

	@Override
	public List<Art> viewallarts() {
		return artRepository.findAll();
	}

	@Override
	public Art viewartbyid(int artid) {
		Optional<Art> ar=artRepository.findById(artid);
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

	
	

}
