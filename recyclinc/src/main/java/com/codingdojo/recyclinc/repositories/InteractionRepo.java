package com.codingdojo.recyclinc.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.recyclinc.models.Interaction;

@Repository
public interface InteractionRepo extends CrudRepository<Interaction, Long> {
	
	List<Interaction> findAll();

}
