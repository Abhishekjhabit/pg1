/*
 *  Copyright © 2015 Wipro Technologies, All Rights Reserved. 
 *  
 *  File Name				:AdminController
 *  
 *  Short Description		:Used to Get/Set Candidate Details and to Create Tables
 *  
 *  Version 				:1.0
 *  
 *  Created  Date			:June 3,2015
 *  
 */

package com.wipro.rank.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * This Class is Used to perform ADMIN operations
 *
 * @author Yash Golwara
 * @author Sravani
 * @version 1.0,Jun 9, 2015
 * @since 1.0
 */
@Controller
public class AdminController {
	@RequestMapping(value = "/Home.htm", method = RequestMethod.GET)
	public String viewHome(){
		return "Home";
	}
	@RequestMapping(value = "/social.htm", method = RequestMethod.GET)
	public String viewindex1(){
		return "social1";
	}
	@RequestMapping(value = "/Photography.htm", method = RequestMethod.GET)
	public String viewPhotography1(){
		return "Photography";
	}
	@RequestMapping(value = "/social2.htm", method = RequestMethod.GET)
	public String viewindex2(){
		return "social2";
	}
	@RequestMapping(value = "/social3.htm", method = RequestMethod.GET)
	public String viewindex3(){
		return "social3";
	}
	@RequestMapping(value = "/index-4.htm", method = RequestMethod.GET)
	public String viewindex4(){
		return "social4";
	}
	@RequestMapping(value = "/index-5.htm", method = RequestMethod.GET)
	public String viewindex5(){
		return "social5";
	}
	
	@RequestMapping(value = "/Developers.htm", method = RequestMethod.GET)
	public String viewDevelopers(){
		return "Developers";
	}
	@RequestMapping(value = "/Aboutus.htm", method = RequestMethod.GET)
	public String viewAbout(){
		return "Aboutus";
	}
	@RequestMapping(value = "/Gallery.htm", method = RequestMethod.GET)
	public String viewGallery(){
		return "Gallery";
	}
	@RequestMapping(value = "/search.htm", method = RequestMethod.GET)
	public String viewSearch(){
		return "search";
	}
	@RequestMapping(value = "/Android.htm", method = RequestMethod.GET)
	public String AndoridGet(){
		return "Android";
	}
	@RequestMapping(value = "/IOS.htm", method = RequestMethod.GET)
	public String IOSGet(){
		return "Ios";
	}
	@RequestMapping(value = "/BlackBerry.htm", method = RequestMethod.GET)
	public String BlackBerryGet(){
		return "BlackBerry";
	}
	@RequestMapping(value = "/Windows.htm", method = RequestMethod.GET)
	public String WindowsGet(){
		return "Windows";
	}
	@RequestMapping(value = "/TenKSmartPhone.htm", method = RequestMethod.GET)
	public String SmartPhoneTenKGet(){
		return "TenKSmartPhone";
	}
	@RequestMapping(value = "/TwentyKSmartPhone.htm", method = RequestMethod.GET)
	public String TwentyKSmartPhoneGet(){
		return "TwentyKSmartPhone";
	}
	@RequestMapping(value = "/UnderThirtySP.htm", method = RequestMethod.GET)
	public String UnderThirtySPGet(){
		return "UnderThirtySP";
	}
	@RequestMapping(value = "/AboveThirtySP.htm", method = RequestMethod.GET)
	public String AboveThirtySPGet(){
		return "AboveThirtySP";
	}
	@RequestMapping(value = "/Engineer.htm", method = RequestMethod.GET)
	public String EngineerGet(){
		return "Engineer";
	}
	@RequestMapping(value = "/Management.htm", method = RequestMethod.GET)
	public String ManagementGet(){
		return "Management";
	}
	@RequestMapping(value = "/Medical.htm", method = RequestMethod.GET)
	public String MedicalGet(){
		return "Medical";
	}
	@RequestMapping(value = "/Bikes.htm", method = RequestMethod.GET)
	public String BikesGet(){
		System.out.println("m in Bikes");
		return "Bikes";
	}
	@RequestMapping(value = "/Car.htm", method = RequestMethod.GET)
	public String CarGet(){
		return "Car";
	}
	@RequestMapping(value = "/Bicycle.htm", method = RequestMethod.GET)
	public String BicycleGet(){
		return "Bicycle";
	}
	@RequestMapping(value = "/Movies.htm", method = RequestMethod.GET)
	public String MoviesGet(){
		return "Movies";
	}
	@RequestMapping(value = "/Songs.htm", method = RequestMethod.GET)
	public String SongsGet(){
		return "Songs";
	}
	@RequestMapping(value = "/NewsChannel.htm", method = RequestMethod.GET)
	public String NewsChannelGet(){
		return "NewsChannel";
	}
}