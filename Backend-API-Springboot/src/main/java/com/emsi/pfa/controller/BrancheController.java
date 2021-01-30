package com.emsi.pfa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.emsi.pfa.exception.ResourceNotFoundException;
import com.emsi.pfa.model.Branche;
import com.emsi.pfa.repository.BrancheRepository;

@RestController
@RequestMapping("/api/v1/")
public class BrancheController {

	@Autowired
	private BrancheRepository brancherepository;
	
	//get branche
	@GetMapping("branches")
	public List<Branche> getAllBranche(){
		return this.brancherepository.findAll();
		}
	//get branche by id
	
    @GetMapping("/branches/{id}")
    public ResponseEntity<Branche> getBrancheById(@PathVariable(value = "id") Long BrancheId)
        throws ResourceNotFoundException {
        Branche branche = brancherepository.findById(BrancheId)
        .orElseThrow(() -> new ResourceNotFoundException("Branche not found for this id :: " + BrancheId));
        return ResponseEntity.ok().body(branche);
    }
	
	
	//save branche
    
    @PostMapping("/branches")
    public Branche createBranche( @RequestBody Branche branche) {
        return brancherepository.save(branche);
    }
    
	//update branche
    @PutMapping("/branches/{id}")
    public ResponseEntity<Branche> updateBranche(@PathVariable(value = "id") Long BrancheId,
          @RequestBody Branche BrancheDetails) throws ResourceNotFoundException {
        Branche Branche = brancherepository.findById(BrancheId)
        .orElseThrow(() -> new ResourceNotFoundException("Branche not found for this id :: " + BrancheId));

        Branche.setBranche(BrancheDetails.getBranche());
        
        final Branche updatedBranche = brancherepository.save(Branche);
        return ResponseEntity.ok(updatedBranche);
    }
    
	//delete branche
	

    @DeleteMapping("/branches/{id}")
    public Map<String, Boolean> deletebranche(@PathVariable(value = "id") Long BrancheId)
         throws ResourceNotFoundException {
        Branche branche = brancherepository.findById(BrancheId)
       .orElseThrow(() -> new ResourceNotFoundException("branche not found for this id :: " + BrancheId));

        brancherepository.delete(branche);
        Map<String, Boolean> response = new HashMap<>();
        response.put("deleted", Boolean.TRUE);
        return response;
    }
	
	
}
