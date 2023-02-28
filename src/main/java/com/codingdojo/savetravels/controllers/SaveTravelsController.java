package com.codingdojo.savetravels.controllers;



import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.codingdojo.savetravels.models.Expence;
import com.codingdojo.savetravels.services.ExpenceService;

@Controller
public class SaveTravelsController {
	@Autowired
	private ExpenceService ExpenceService;
		
	@GetMapping("/")
	public String index(@ModelAttribute("expence") Expence expence,Model model ) {
		List<Expence>expenses = ExpenceService.allexpenses();
		model.addAttribute("expenses",expenses);
		return "Dashboard.jsp";
	}

	@GetMapping("/show")
	public String show(@ModelAttribute("expence") Expence expence,Model model ) {
		List<Expence>expenses = ExpenceService.allexpenses();
		model.addAttribute("expenses",expenses);
		return "Show.jsp";
	}


	@GetMapping("/edit/{id}")
	    public String edit(@PathVariable("id") Long id, Model model) {
	        Expence expence = ExpenceService.findExpence(id);
	        model.addAttribute("expence", expence);
	        return "Edit.jsp";
	        
	}
	@PutMapping("/expence/{id}")
	public String update(@Valid @ModelAttribute("expence") Expence expence, BindingResult result,@PathVariable("id") Long id) {
		if (result.hasErrors()) {
			return "Edit.jsp";
		} else {
			ExpenceService.updateExpence(expence);
			return "redirect:/";
		}
	}
	@PostMapping("/create")
	public String create(@Valid @ModelAttribute("expence") Expence expence, BindingResult result ,Model model) {
		if (result.hasErrors()) {
			return "Dashboard.jsp";
		}
		else {
			ExpenceService.createExpence(expence);
			return "redirect:/";
		}
		
	}

	@DeleteMapping(value="/delete/{id}")
    public String destroy(@PathVariable("id") Long id) {
    	ExpenceService.deleteExpence(id);
        return "redirect:/";
    }
}
