package com.codingdojo.savetravels.services;


import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.savetravels.models.Expence;
import com.codingdojo.savetravels.repositories.ExpenceRepo;

@Service
public class ExpenceService {
	  private ExpenceRepo ExpenceRepo;
	public ExpenceService(ExpenceRepo ExpenceRepo) {
		  this.ExpenceRepo = ExpenceRepo;
    }
    // returns all the books
    public List<Expence> allexpenses() {
        return ExpenceRepo.findAll();
    }
    // creates a book
    public Expence createExpence(Expence e) {
        return ExpenceRepo.save(e);
    }
    public Expence updateExpence(Expence e) {
    	return ExpenceRepo.save(e);
    }
    public void deleteExpence(long id) {
    	 ExpenceRepo.deleteById(id);
    		
    	
    }
    // retrieves a book
    public Expence findExpence(Long id) {
        Optional<Expence> optionalBook = ExpenceRepo.findById(id);
        if(optionalBook.isPresent()) {
            return optionalBook.get();
        } else {
            return null;
        }
    }
}
