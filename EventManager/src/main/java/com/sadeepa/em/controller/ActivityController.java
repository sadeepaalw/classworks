package com.sadeepa.em.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sadeepa.em.model.Activity;

@Controller
public class ActivityController {

	@RequestMapping(value="/greeting")
	public String getWelcomeMessage(Model model){
		
		String abc = "<h1> Welcome to spring MVC </h1><br>Okay working";
		model.addAttribute("greetingMsg",abc);
		model.addAttribute("r8works","from the other attribute");
		return "welcome";
	} 
	@RequestMapping(value="/addactivity1")
	public String addActivity(@ModelAttribute("activities")Activity activity){
		
		System.out.println("Activity is ="+activity.getActivityName());
		//System.out.println("Activity Code is ="+activity.getActivityCode());
		// if we put redirect:addSubActivity.html session object is gone when coming back to the container
		// if we put forward:addSubActivity.html session object stays the same when coming back to the container
		if(activity.getActivityName()!= null)
			return "redirect:addSubActivity.html";
		else
			return "addActivity";
	}
	
	@RequestMapping(value ="/addSubActivity")
	public String addSubActivity(@ModelAttribute ("activities")Activity activity){
		System.out.println("Sub Activity is : "+activity.getActivityName());
		return "addActivity";
	}
}
