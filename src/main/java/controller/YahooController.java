package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dao.ProductDao;
import model.Product_Info;

@Controller
public class YahooController {
	@Autowired
	private ProductDao productDao;
	//피규어 목록 출력 
	@RequestMapping(value="/yahoo/figure.html",method=RequestMethod.GET)
	public ModelAndView figure() {
		ModelAndView mav=new ModelAndView(
				"home/template");
				
		List<Product_Info> itemList =productDao.getItemsBySC("Y", "figure");	

		for(int i=0;i<itemList.size();i++)
			itemList.get(i).setNumber(i+1);
		
		mav.addObject("ITEM_LIST",itemList);		
		mav.addObject("BODY","yahoo.jsp");
		return mav;
	}
	
	@RequestMapping(value="/yahoo/gundam.html",method=RequestMethod.GET)
	public ModelAndView gundam() {
		ModelAndView mav=new ModelAndView(
				"home/template");
				
		List<Product_Info> itemList =productDao.getItemsBySC("Y", "gundam");	

		for(int i=0;i<itemList.size();i++)
			itemList.get(i).setNumber(i+1);
		
		mav.addObject("ITEM_LIST",itemList);		
		mav.addObject("BODY","yahoo.jsp");
		return mav;
	}
	
	@RequestMapping(value="/yahoo/lego.html",method=RequestMethod.GET)
	public ModelAndView YLego() {
		ModelAndView mav=new ModelAndView(
				"home/template");
				
		List<Product_Info> itemList =productDao.getItemsBySC("Y", "rego");	

		for(int i=0;i<itemList.size();i++)
			itemList.get(i).setNumber(i+1);
		
		mav.addObject("ITEM_LIST",itemList);		
		mav.addObject("BODY","yahoo.jsp");
		return mav;
	}
	
	@RequestMapping(value="/yahoo/fishing.html",method=RequestMethod.GET)
	public ModelAndView YFishing() {
		ModelAndView mav=new ModelAndView(
				"home/template");
				
		List<Product_Info> itemList =productDao.getItemsBySC("Y", "fishing");	

		for(int i=0;i<itemList.size();i++)
			itemList.get(i).setNumber(i+1);
		
		mav.addObject("ITEM_LIST",itemList);		
		mav.addObject("BODY","yahoo.jsp");
		return mav;
	}
	
	@RequestMapping(value="/yahoo/game.html",method=RequestMethod.GET)
	public ModelAndView Ygame() {
		ModelAndView mav=new ModelAndView(
				"home/template");
				
		List<Product_Info> itemList =productDao.getItemsBySC("Y", "game");	

		for(int i=0;i<itemList.size();i++)
			itemList.get(i).setNumber(i+1);
		
		mav.addObject("ITEM_LIST",itemList);		
		mav.addObject("BODY","yahoo.jsp");
		return mav;
	}
	
	@RequestMapping(value="/yahoo/golf.html",method=RequestMethod.GET)
	public ModelAndView YGolf() {
		ModelAndView mav=new ModelAndView(
				"home/template");
				
		List<Product_Info> itemList =productDao.getItemsBySC("Y", "golf");	

		for(int i=0;i<itemList.size();i++)
			itemList.get(i).setNumber(i+1);
		
		mav.addObject("ITEM_LIST",itemList);		
		mav.addObject("BODY","yahoo.jsp");
		return mav;
	}
	
	@RequestMapping(value="/yahoo/bike.html",method=RequestMethod.GET)
	public ModelAndView YBike() {
		ModelAndView mav=new ModelAndView(
				"home/template");
				
		List<Product_Info> itemList =productDao.getItemsBySC("Y", "bike");	

		for(int i=0;i<itemList.size();i++)
			itemList.get(i).setNumber(i+1);
		
		mav.addObject("ITEM_LIST",itemList);		
		mav.addObject("BODY","yahoo.jsp");
		return mav;
	}
	@RequestMapping(value="/yahoo/music.html",method=RequestMethod.GET)
	public ModelAndView YMusic() {
		ModelAndView mav=new ModelAndView(
				"home/template");
				
		List<Product_Info> itemList =productDao.getItemsBySC("Y", "music_etc");	

		for(int i=0;i<itemList.size();i++)
			itemList.get(i).setNumber(i+1);
		
		mav.addObject("ITEM_LIST",itemList);		
		mav.addObject("BODY","yahoo.jsp");
		return mav;
	}
	@RequestMapping(value="/yahoo/car.html",method=RequestMethod.GET)
	public ModelAndView YCar() {
		ModelAndView mav=new ModelAndView(
				"home/template");
				
		List<Product_Info> itemList =productDao.getItemsBySC("Y", "car");	

		for(int i=0;i<itemList.size();i++)
			itemList.get(i).setNumber(i+1);
		
		mav.addObject("ITEM_LIST",itemList);		
		mav.addObject("BODY","yahoo.jsp");
		return mav;
	}
	@RequestMapping(value="/yahoo/salon.html",method=RequestMethod.GET)
	public ModelAndView YSalon() {
		ModelAndView mav=new ModelAndView(
				"home/template");
				
		List<Product_Info> itemList =productDao.getItemsBySC("Y", "salon");	

		for(int i=0;i<itemList.size();i++)
			itemList.get(i).setNumber(i+1);
		
		mav.addObject("ITEM_LIST",itemList);		
		mav.addObject("BODY","yahoo.jsp");
		return mav;
	}
}

