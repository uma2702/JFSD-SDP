package com.klef.jfsd.sdp.service;

import java.util.List;

import com.klef.jfsd.sdp.model.Art;
import com.klef.jfsd.sdp.model.Customer;

public interface CustomerService {
	public String addcustomer(Customer c);
	public Customer checklogin(String email, String pwd);
	public int customerscount();
	public List<Art> viewallarts();
	public Art viewartbyid(int artid);


}
