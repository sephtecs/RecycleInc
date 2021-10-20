package com.codingdojo.recyclinc.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import com.codingdojo.recyclinc.models.Interaction;
import com.codingdojo.recyclinc.repositories.InteractionRepo;

public class InteractionService {
	
	@Autowired
	private InteractionRepo interactRepo;
	
	public List<Interaction> allInteractions(){
		return interactRepo.findAll();
	}
	
	//Create
	public Interaction createInteraction(Interaction i) {
		return interactRepo.save(i);
	}
	
	//Read (Find One)
	public Interaction findInteractionById(Long id) {
		Optional<Interaction> optionalInteraction = interactRepo.findById(id);
		if(optionalInteraction.isPresent()) {
			return optionalInteraction.get();
		} else {
			return null;
		}
	}
	
	//UPDATE
	public Interaction updateInteraction(Interaction b) {
		return interactRepo.save(b);
	}
	
	//DELETE
    public void deleteBook(Long id) {
    	System.out.println();
    	interactRepo.deleteById(id);
    }
	
}
