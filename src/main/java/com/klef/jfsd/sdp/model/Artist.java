package com.klef.jfsd.sdp.model;

import java.sql.Blob;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "artist_table")
public class Artist {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "artist_id", nullable = false)
    private int id;

    @Column(name = "artist_name", nullable = false, length = 50)
    private String name;

    @Column(name = "artist_gender", nullable = false, length = 10)
    private String gender;

    @Column(name = "artist_bio", length = 500, nullable = false)
    private String bio;

    @Column(name = "artist_medium", length = 50, nullable = false)
    private String artisticMedium;

    @Column(name = "artist_location", length = 50, nullable = false)
    private String location;

    @Column(name = "artist_categories", length = 100, nullable = false)
    private String artworkCategories;
    
    @Column(name = "artist_email", nullable = false, unique = true, length = 30)
    private String email;

    @Column(name = "artist_password", nullable = false, length = 30)
    private String password;


    @Column(name = "artist_phone", length = 15, nullable = false)
    private String phoneNumber;

    @Column(name = "artist_status", nullable = false)
    private boolean artiststatus;
    
    private Blob artistimage;

	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public boolean isArtiststatus() {
		return artiststatus;
	}


	public void setArtiststatus(boolean artiststatus) {
		this.artiststatus = artiststatus;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	

	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getBio() {
		return bio;
	}


	public void setBio(String bio) {
		this.bio = bio;
	}


	public String getArtisticMedium() {
		return artisticMedium;
	}


	public void setArtisticMedium(String artisticMedium) {
		this.artisticMedium = artisticMedium;
	}


	public String getLocation() {
		return location;
	}


	public void setLocation(String location) {
		this.location = location;
	}


	public String getArtworkCategories() {
		return artworkCategories;
	}


	public void setArtworkCategories(String artworkCategories) {
		this.artworkCategories = artworkCategories;
	}


	public String getPhoneNumber() {
		return phoneNumber;
	}


	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}


	@Override
	public String toString() {
		return "Artist [id=" + id + ", name=" + name + ", gender=" + gender 
				+ ", email=" + email + ", password=" + password + ", bio=" + bio + ", artisticMedium=" + artisticMedium
				+ ", location=" + location + ", artworkCategories=" + artworkCategories + ", phoneNumber=" + phoneNumber
				+ "]";
	}


	public Blob getArtistimage() {
		return artistimage;
	}


	public void setArtistimage(Blob artistimage) {
		this.artistimage = artistimage;
	}

	

}
