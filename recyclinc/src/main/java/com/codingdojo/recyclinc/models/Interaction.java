package com.codingdojo.recyclinc.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="notes")
public class Interaction {
	
    @NotNull
    @Size(min = 2, max = 200, message="Title must be at least 2 characters.")
    private String comment;
    
    @NotNull
    @Size(min = 2, max = 200, message="Title must be at least 2 characters.")
    private String testimonial;
    
    @NotNull
    @Size(min = 0, max = 100000)
    private Double numberOfLikes;
    
    @Column(updatable=false)
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date createdAt;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date updatedAt;
    
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="user_id")
    private User owner;
    
    
    
    // ---------- empty constructor ----------
	public Interaction() {
	}
	
	
	
	// ---------- getters & setters ----------

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public String getTestimonial() {
		return testimonial;
	}

	public void setTestimonial(String testimonial) {
		this.testimonial = testimonial;
	}

	public User getOwner() {
		return owner;
	}

	public void setOwner(User owner) {
		this.owner = owner;
	}

	public void setNumberOfLikes(Double numberOfLikes) {
		this.numberOfLikes = numberOfLikes;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Date getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}
    
}
