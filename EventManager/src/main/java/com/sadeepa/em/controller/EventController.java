package com.sadeepa.em.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.sadeepa.em.model.Event;

@Controller
@SessionAttributes("event")
public class EventController {

	@RequestMapping(value="/addEvent", method=RequestMethod.GET)
	public String getEvent(Model model){
		
		Event event = new Event();
		event.setEventName("Birthday");
		model.addAttribute("event", event);
		return "addEvent";
	}
	
	@RequestMapping(value="/addEvent", method=RequestMethod.POST)
	public String updateEvent(@Valid @ModelAttribute("event")Event event, BindingResult bindingResults){
		
		if(bindingResults.hasErrors())
		{
			System.out.println("this has errors");
			return "addEvent";
		}
		else{
			System.out.println("Event updated as "+event.getEventName());
			return "redirect:addactivity1.html";
		}
	}
}
