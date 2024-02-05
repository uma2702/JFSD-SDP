package com.klef.jfsd.sdp.model;

import java.sql.Blob;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "art_table")
public class Art {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "art_id", nullable = false)
    private int id;

    @Column(name = "art_name", nullable = false, length = 50)
    private String name;
    @Column(name = "art_type", nullable = false, length = 50)
    private String type;
    @Column(name = "art_price", nullable = false, length = 50)
    private String price;
    @Column(name = "art_image", nullable = false)
    private Blob image;
    @Column(name = "art_desc", nullable = false)
    private String desc;
    @Column(name = "art_stock", nullable = false)
    private boolean stock;
    @Column(name = "art_email", nullable = false)
    private String email;
    
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public Blob getImage() {
		return image;
	}
	public void setImage(Blob image) {
		this.image = image;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public boolean isStock() {
		return stock;
	}
	public void setStock(boolean stock) {
		this.stock = stock;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "Art [id=" + id + ", name=" + name + ", type=" + type + ", price=" + price + ", image=" + image
				+ ", desc=" + desc + ", stock=" + stock + "]";
	}

}
