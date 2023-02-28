package com.codingdojo.savetravels.repositories;

import java.util.List;
import org.springframework.data.repository.CrudRepository;
import com.codingdojo.savetravels.models.Expence;

public interface ExpenceRepo extends CrudRepository<Expence, Long>{
    List<Expence> findAll();
    // this method finds o with descriptions containing the search string
    List<Expence> findByDescriptionContaining(String search);
    // this method counts how many titles contain a certain string

}
