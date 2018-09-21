package com.sadeepa.em.model;

import javax.validation.constraints.Size;

public class Event {

	@Size(min=3,max=12)
	private String eventName;

	public String getEventName() {
		return eventName;
	}

	public void setEventName(String eventName) {
		this.eventName = eventName;
	}
	
}
