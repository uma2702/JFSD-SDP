package com.klef.jfsd.sdp.controller;

import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;

import javax.sql.rowset.serial.SerialException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.sdp.model.Admin;
import com.klef.jfsd.sdp.model.Art;
import com.klef.jfsd.sdp.model.Artist;
import com.klef.jfsd.sdp.model.Customer;
import com.klef.jfsd.sdp.service.AdminService;
import com.klef.jfsd.sdp.service.ArtService;
import com.klef.jfsd.sdp.service.ArtistService;
import com.klef.jfsd.sdp.service.CustomerService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@org.springframework.stereotype.Controller
public class Controller {
	
	@Autowired
	private CustomerService customerService;
	
	@Autowired
	private ArtistService artistService;
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private ArtService artService;
	
	@GetMapping("exhibit")
	  public String exhibit()
	  {
	    return "exhibit";
	  }
	
	@GetMapping("/")
	public ModelAndView login() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("login");
		return mv;
	}
	
	@PostMapping("checklogin")
	public ModelAndView checklogin(HttpServletRequest request) {
		ModelAndView mv=new ModelAndView();
		
		String email = request.getParameter("email");
	     String pwd = request.getParameter("pwd");
	     
	     Customer c = customerService.checklogin(email, pwd);
	     
	     if(c!=null) {
	    	 HttpSession session = request.getSession();
	    	 
	    	 session.setAttribute("cid", c.getId());
	    	 session.setAttribute("cname", c.getName());
	    	 
	    	 mv.setViewName("chome");
	     }
	     else {
	    	 mv.setViewName("login");
	    	 mv.addObject("message", "Login Failed");
	     }
	     return mv;
	}
	
	@GetMapping("reg")
	public ModelAndView register() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("register");
		return mv;
	}
	
	@PostMapping("insertc")
	public ModelAndView insert(HttpServletRequest request) {
		String msg=null;

		
		ModelAndView mv=new ModelAndView();
		try {
			String name = request.getParameter("name");
		    String gender = request.getParameter("gender");
		    String email = request.getParameter("email");
		    String pwd = request.getParameter("pwd");
		     
		    Customer c = new Customer();
		    c.setName(name);
		    c.setGender(gender);
		    c.setEmail(email);
		    c.setPassword(pwd);
		    
		    msg = customerService.addcustomer(c);
		    
		    mv.setViewName("register");
		    mv.addObject("message", "Registered Successfully");

		}catch(Exception e) {
			msg = e.getMessage();
			
		}
		
		return mv;
	}
	
	
	@GetMapping("chome")
	public ModelAndView chome() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("chome");
		return mv;
	}
	
	@GetMapping("gallery")
	public ModelAndView gallery() {
		ModelAndView mv=new ModelAndView();
		List<Art> artlist = customerService.viewallarts();
		mv.addObject("artinfo", artlist);
		mv.setViewName("gallery");
		return mv;
	}
	
	@GetMapping("artist")
	public ModelAndView artists() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("artists");
		return mv;
	}
	@GetMapping("artisthome")
	public ModelAndView artisthome() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("artisthome");
		return mv;
	}
	@GetMapping("er")
	public ModelAndView er() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("er");
		return mv;
	}
	@GetMapping("search")
	public ModelAndView search() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("search");
		return mv;
	}
	
	@GetMapping("about")
	public ModelAndView about() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("about");
		return mv;
	}
	
	@GetMapping("footer")
	public ModelAndView footer() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("footer");
		return mv;
	}
	
	@GetMapping("collab")
	public ModelAndView business() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("business");
		return mv;
	}
	
	@GetMapping("clogout")
	public ModelAndView customerlogout() {
		ModelAndView mv= new ModelAndView();
		mv.setViewName("login");
		mv.addObject("message", "Logged out");
		return mv;
	}
	
	@GetMapping("explore")
	public ModelAndView explore() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("explore");
		return mv;
	}
	
	@GetMapping("explore2")
	public ModelAndView explore2() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("explore2");
		return mv;
	}
	
	@GetMapping("cards")
	public ModelAndView cards() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("cards");
		return mv;
	}
	
	@GetMapping("qrcode")
	public ModelAndView qrcode() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("qrcode");
		return mv;
	}
	
	@GetMapping("plogin")
	public ModelAndView plogin() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("plogin");
		return mv;
	}
	
	@PostMapping("checkplogin")
	public ModelAndView checkplogin(HttpServletRequest request) {
		ModelAndView mv=new ModelAndView();
		
		String email = request.getParameter("email");
	     String pwd = request.getParameter("pwd");
	     
	     Artist a = artistService.checkplogin(email, pwd);
	     if(a!=null) {
	    	 HttpSession session = request.getSession();
	    	 
	    	 session.setAttribute("aid", a.getId());
	    	 session.setAttribute("aname", a.getName());
	    	 session.setAttribute("email", email);
	    	 
	    	 mv.setViewName("phome");
	     }
	     else {
	    	 mv.setViewName("plogin");
	    	 mv.addObject("message", "Login Failed");
	     }
	     return mv;
	}
	
	
	
	@GetMapping("preg")
	public ModelAndView pregister() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("pregister");
		return mv;
	}
	
	@PostMapping("insertp")
	public ModelAndView insertp(HttpServletRequest request,@RequestParam("artistimage") MultipartFile file)throws IOException, SerialException, SQLException {
		String msg=null;
		
		ModelAndView mv=new ModelAndView();
		try {
			String name = request.getParameter("name");
		    String gender = request.getParameter("gender");
		    String bio = request.getParameter("bio");
		    String am = request.getParameter("artisticMedium");
		    String location = request.getParameter("location");
		    String artcatgr = request.getParameter("artworkCategories");
		    String email = request.getParameter("email");
		    String pwd = request.getParameter("pwd");
		    String phone = request.getParameter("phoneNumber");
		    
		    byte[] bytes = file.getBytes();
			Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes);
		    
		    Artist a=new Artist();
		    a.setName(name);
		    a.setGender(gender);
		    a.setBio(bio);
		    a.setArtisticMedium(am);
		    a.setLocation(location);
		    a.setArtworkCategories(artcatgr);
		    a.setEmail(email);
		    a.setPassword(pwd);
		    a.setPhoneNumber(phone);
		    a.setArtistimage(blob);
		    
		    msg= artistService.addArtist(a);
		    
		    mv.setViewName("pregister");
		    mv.addObject("message", "Registered Successfully");
		    
		}

		catch(Exception e) {
			msg = e.getMessage();
			
		}
		
		return mv;
	}
	
	
	@GetMapping("phome")
	public ModelAndView phome() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("phome");
		return mv;
	}
	
	@GetMapping("profile")
	public ModelAndView profile(HttpServletRequest request) {
		ModelAndView mv=new ModelAndView();
		HttpSession session= request.getSession();
		int aid = (int) session.getAttribute("aid");
		
		Artist artist = artistService.viewArtistbyid(aid);
		mv.addObject("artist", artist);
		mv.setViewName("profile");
		return mv;
	}
	
	@GetMapping("displayartistimg")
	public ResponseEntity<byte[]> displayartistimage(@RequestParam("id") int id) throws IOException, SQLException
	{
	 Artist artist =artistService.viewArtistbyid(id);
	  byte [] imageBytes = null;
	  imageBytes = artist.getArtistimage().getBytes(1,(int)artist.getArtistimage().length());

	  return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
	}
	
	
	
	@PostMapping("insertart")
	public ModelAndView insertart(HttpServletRequest request) {
        String msg=null;
		ModelAndView mv=new ModelAndView();
		try {
			String name=request.getParameter("name");
			String type=request.getParameter("type");
			String price=request.getParameter("price");
			String url=request.getParameter("url");
			String desc=request.getParameter("desc");
			
			Art art=new Art();
			art.setName(name);
			art.setType(type);
			art.setPrice(price);
			
			art.setDesc(desc);
			
			msg = artService.addart(art);
			 mv.setViewName("publish");
			    mv.addObject("message", "Uploaded Successfully");
	
		}
		catch(Exception e) {
			msg = e.getMessage();
			
		}
		
		return mv;
	}

	
	
	@GetMapping("plogout")
	public ModelAndView plogout() {
		ModelAndView mv= new ModelAndView();
		mv.setViewName("business");
		return mv;
	}
	
	@GetMapping("adminlogin")    
	public ModelAndView adminlogin() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}
	
	
	
	@GetMapping("adminhome")
	  public ModelAndView adminhome()
	  {
		
	    ModelAndView mv = new ModelAndView();  
	    int artists = artistService.artistscount();
	     mv.addObject("artists", artists);
	     int arts = artService.artscount();
	     mv.addObject("arts", arts);
	     int customers = customerService.customerscount();
	     mv.addObject("customers", customers);
	    mv.setViewName("adminhome");
	    return mv;
	  }
	
	
	@PostMapping("checkadminlogin")
	  public ModelAndView checkadminlogin(HttpServletRequest request)
	  {
	    ModelAndView mv = new ModelAndView(); 
	    int artists = artistService.artistscount();
	     mv.addObject("artists", artists);
	     int arts = artService.artscount();
	     mv.addObject("arts", arts);
	     int customers = customerService.customerscount();
	     mv.addObject("customers", customers);
	    
	    String uname = request.getParameter("uname");
	     String pwd = request.getParameter("pwd");
	     
	    Admin admin = adminService.checkadminlogin(uname, pwd);
	    
	    if(admin!=null)
	    {
	      mv.setViewName("adminhome");
	       
	    }
	    else
	    {
	      mv.setViewName("adminlogin");
	      mv.addObject("message", "Login Failed");
	    }
	    
	    return mv;
	  }
	@GetMapping("viewallartists")
	public ModelAndView viewallartists(){
		List<Artist> adminlist = adminService.viewallartists();
		ModelAndView mv = new ModelAndView("viewallartists");
		mv.addObject("empdata",adminlist);
		
		return mv;
	}
	
	@GetMapping("logout")
	  public ModelAndView logout() {
	    ModelAndView mv= new ModelAndView();
	    mv.setViewName("adminlogin");
	    return mv;
	  }
	
	@GetMapping("deleteartist")
    public ModelAndView deleteartist()
    {
      ModelAndView mv = new ModelAndView();
      mv.setViewName("deleteartist"); //deleteemp is jsp file name
      List<Artist> emplist =  adminService.viewallartists();
      mv.addObject("empdata", emplist);
      return mv;
    }
	
	@GetMapping("delete/{id}")
	  public String deleteaction(@PathVariable("id") int aid)
	  {
	    adminService.deleteartist(aid);
	    return "redirect:/deleteartist";
	  }

	@GetMapping("view")
	  public ModelAndView viewartistdemo(@RequestParam("id") int eid)
	  {
	    Artist artist = adminService.viewartistbyid(eid);
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("viewempbyid");
	    mv.addObject("artist", artist);
	    return mv;
	  }
	
	 @GetMapping("updatestatus")
	  public ModelAndView updatestatus()
	  {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("updatestatus");
	    List<Artist> artists =  adminService.viewallartists();
	    mv.addObject("artistdata", artists);
	    return mv;
	  }
	 
	 @GetMapping("setstatus")
	  public ModelAndView setstatusaction(@RequestParam("id") int aid,@RequestParam("status") boolean status)
	  {
	    int n = adminService.updatestatus(status, aid);
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("viewallartists");
	    List<Artist> artists =  adminService.viewallartists();
	    mv.addObject("empdata", artists);
	      
	   
	    if(n>0)
	    {
	      mv.addObject("message", "Status Updated Successfully");
	    }
	    else
	    {
	      mv.addObject("message", "Failed to Update Status");
	    }
	    
	    return mv;
	  }
	 
	 @PostMapping("addart")
	 public ModelAndView addart(HttpServletRequest request,@RequestParam("image") MultipartFile file)  throws IOException, SerialException,SQLException
	 {
		 ModelAndView mv=new ModelAndView();
			String msg="";
			
			try {
				HttpSession session=request.getSession();
				String artname=request.getParameter("name");
				String arttype=request.getParameter("type");
				String artprice=request.getParameter("price");
				String artdescription= request.getParameter("desc");
				String email =(String)session.getAttribute("email");
				
				byte[] bytes = file.getBytes();
				Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes);
				
				Art a = new Art();
				a.setEmail(email);
				a.setName(artname);
				a.setType(arttype);
				a.setPrice(artprice);
				a.setImage(blob);
				a.setStock(true);
				a.setDesc(artdescription);
				
				msg = artService.addart(a);
				mv.setViewName("viewarts");
				mv.addObject("message", "Uploaded Successfully");				
	       }
			catch(Exception e)
			{
				mv.setViewName("exhibit");
				msg = e.getMessage();
				mv.addObject("msg", msg);
			}
			return mv;
	 }

	 @GetMapping("displayartimage")
		public ResponseEntity<byte[]> displayprodimagedemo(@RequestParam("id") int id) throws IOException, SQLException
		{
		  Art art=artService.viewartbyid(id);
		  byte [] imageBytes = null;
		  imageBytes = art.getImage().getBytes(1,(int)art.getImage().length());

		  return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
		}
		
		@GetMapping("viewart")
		public ModelAndView viewevents(HttpServletRequest request)
		{
			HttpSession session=request.getSession();
			
			String email =(String)session.getAttribute("email");
			
			ModelAndView mv=new ModelAndView();
			List<Art> artlist=artService.ViewAllArts(email);
			
			mv.addObject("artdata", artlist);
			mv.setViewName("viewarts");
			return mv;
		}
		
		
		@GetMapping("viewsingleart")
		public ModelAndView viewsingleart(@RequestParam("id") int id)
		{
			
			Art art=artService.viewartbyid(id);
			ModelAndView mv=new ModelAndView();
			mv.addObject("art",art);
			mv.setViewName("viewartbyid");
			return mv;
		}
		
		
		@GetMapping("viewartsinadmin")
		public ModelAndView viewartsinadmin(){
			List<Artist> adminlist = adminService.viewallartists();
			ModelAndView mv = new ModelAndView("viewartsinadmin");
			mv.addObject("empdata",adminlist);
			
			return mv;
		}
	
		@PostMapping("viewsingleartbyadmin")
		public ModelAndView viewsingleart(@RequestParam("email") String email)
		{
			
			
			List<Art> art = artService.ViewAllArts(email);
			ModelAndView mv=new ModelAndView();
			mv.addObject("art",art);
			mv.setViewName("viewspecificart");
			return mv;
		}
		
		
		
		
		@GetMapping("displayartimg")
		public ResponseEntity<byte[]> displayprodimage(@RequestParam("id") int id) throws IOException, SQLException
		{
		 Art art =customerService.viewartbyid(id);
		  byte [] imageBytes = null;
		  imageBytes = art.getImage().getBytes(1,(int)art.getImage().length());

		  return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
		}
		
		
		@GetMapping("updateart")
		public ModelAndView updateart(@RequestParam("id") int id)
		{
			
		   	 Art a=artService.viewartbyid(id);
		   	 ModelAndView mv = new ModelAndView();
		      mv.setViewName("updateart");
		      mv.addObject("a", a);
		      return mv;
		}
		
		@PostMapping("updatephoto")
		public ModelAndView updatephoto(HttpServletRequest request,@RequestParam("image") MultipartFile file)  throws IOException, SerialException, SQLException
		{
			String msg=null;
			HttpSession session=request.getSession();
			
		   	 int id=(int)session.getAttribute("id");
		   	 ModelAndView mv=new ModelAndView();
		   	 
			byte[] bytes = file.getBytes();
			Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes);
			Art a = artService.viewartbyid(id);
		   	Art at = new Art();
		   	at.setId(id);
		   	at.setImage(blob);
		   	
		   	a.setName(at.getName());
			a.setType(at.getType());
			a.setPrice(at.getPrice());
			a.setDesc(at.getDesc());
			a.setEmail(at.getEmail());
			a.setStock(at.isStock());
			
			msg = artService.updateart(at);
			
			mv.addObject("a", at);
			mv.setViewName("updateart");
			mv.addObject("msg", msg);
	   		 
		   	 return mv;
			
		}
		
		
		@PostMapping("update")
		public ModelAndView update(HttpServletRequest request)
		{
			String msg=null;
			HttpSession session=request.getSession();
			
		   	 int id=(int)session.getAttribute("aid");
		   	 ModelAndView mv=new ModelAndView();
		     try {
		    	  String name = request.getParameter("name");
		    	  String type = request.getParameter("type");
		    	  String price = request.getParameter("price");
		    	  
		    	  String desc = request.getParameter("desc");
			   	  String email=request.getParameter("email");
			   	String stockp = request.getParameter("stock");
			   	boolean stock = Boolean.parseBoolean(stockp); 

			   	Art a = artService.viewartbyid(id);
			   	Art at = new Art();
			   	at.setId(id);
			   	at.setName(name);
			   	at.setType(type);
			   	at.setPrice(price);
			   	at.setDesc(desc);
			   	at.setEmail(email);
			   	at.setStock(stock);
		    	  at.setImage(a.getImage());
		    	  msg = artService.updateart(at);
		    	  
		    	  mv.addObject("a", a);
		    	  mv.setViewName("updateart");
		    	  
		    	  mv.addObject("message", "Update Success.");
		     }catch (Exception e) {
		    	 msg=e.getMessage();
		   		 mv.setViewName("updateart");
		   		 mv.addObject("message",msg);
		   	 }
		   	 return mv;
		}
		
}
