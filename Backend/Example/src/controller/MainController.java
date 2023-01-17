package controller;

import service.MainService;

public class MainController {

	private MainService mainService;
	
	public MainController() {
		this.mainService = new MainService();
	}
	
	public void hello() {
		mainService.hello();
	}
	
}
