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
public class RakutenController {
	@Autowired
	private ProductDao productDao;
	
	@RequestMapping(value="/rakuten/figure.html",method=RequestMethod.GET)
	public ModelAndView Rfigure() {
		ModelAndView mav=new ModelAndView(
				"home/template");
				
		List<Product_Info> itemList =productDao.getItemsBySC("R", "figure");	

		for(int i=0;i<itemList.size();i++)
			itemList.get(i).setNumber(i+1);
		
		mav.addObject("ITEM_LIST",itemList);		
		mav.addObject("BODY","rakuten.jsp");
		return mav;
	}
	
	@RequestMapping(value="/rakuten/gundam.html",method=RequestMethod.GET)
	public ModelAndView RGundam() {
		ModelAndView mav=new ModelAndView(
				"home/template");
				
		List<Product_Info> itemList =productDao.getItemsBySC("R", "gundam");	

		for(int i=0;i<itemList.size();i++)
			itemList.get(i).setNumber(i+1);
		
		mav.addObject("ITEM_LIST",itemList);		
		mav.addObject("BODY","rakuten.jsp");
		return mav;
	}
	
	@RequestMapping(value="/rakuten/lego.html",method=RequestMethod.GET)
	public ModelAndView RLego() {
		ModelAndView mav=new ModelAndView(
				"home/template");
				
		List<Product_Info> itemList =productDao.getItemsBySC("R", "rego");	

		for(int i=0;i<itemList.size();i++)
			itemList.get(i).setNumber(i+1);
		
		mav.addObject("ITEM_LIST",itemList);		
		mav.addObject("BODY","rakuten.jsp");
		return mav;
	}
	
	@RequestMapping(value="/rakuten/fishing.html",method=RequestMethod.GET)
	public ModelAndView RFishing() {
		ModelAndView mav=new ModelAndView(
				"home/template");
				
		List<Product_Info> itemList =productDao.getItemsBySC("R", "fishing");	

		for(int i=0;i<itemList.size();i++)
			itemList.get(i).setNumber(i+1);
		
		mav.addObject("ITEM_LIST",itemList);		
		mav.addObject("BODY","rakuten.jsp");
		return mav;
	}
	
	@RequestMapping(value="/rakuten/game.html",method=RequestMethod.GET)
	public ModelAndView Rgame() {
		ModelAndView mav=new ModelAndView(
				"home/template");
				
		List<Product_Info> itemList =productDao.getItemsBySC("R", "game");	

		for(int i=0;i<itemList.size();i++)
			itemList.get(i).setNumber(i+1);
		
		mav.addObject("ITEM_LIST",itemList);		
		mav.addObject("BODY","rakuten.jsp");
		return mav;
	}
	
	@RequestMapping(value="/rakuten/golf.html",method=RequestMethod.GET)
	public ModelAndView RGolf() {
		ModelAndView mav=new ModelAndView(
				"home/template");
				
		List<Product_Info> itemList =productDao.getItemsBySC("R", "golf");	

		for(int i=0;i<itemList.size();i++)
			itemList.get(i).setNumber(i+1);
		
		mav.addObject("ITEM_LIST",itemList);		
		mav.addObject("BODY","rakuten.jsp");
		return mav;
	}
	
	@RequestMapping(value="/rakuten/bike.html",method=RequestMethod.GET)
	public ModelAndView RBike() {
		ModelAndView mav=new ModelAndView(
				"home/template");
				
		List<Product_Info> itemList =productDao.getItemsBySC("R", "bike");	

		for(int i=0;i<itemList.size();i++)
			itemList.get(i).setNumber(i+1);
		
		mav.addObject("ITEM_LIST",itemList);		
		mav.addObject("BODY","rakuten.jsp");
		return mav;
	}
	@RequestMapping(value="/rakuten/music.html",method=RequestMethod.GET)
	public ModelAndView RMusic() {
		ModelAndView mav=new ModelAndView(
				"home/template");
				
		List<Product_Info> itemList =productDao.getItemsBySC("R", "music_etc");	

		for(int i=0;i<itemList.size();i++)
			itemList.get(i).setNumber(i+1);
		
		mav.addObject("ITEM_LIST",itemList);		
		mav.addObject("BODY","rakuten.jsp");
		return mav;
	}
	@RequestMapping(value="/rakuten/car.html",method=RequestMethod.GET)
	public ModelAndView RCar() {
		ModelAndView mav=new ModelAndView(
				"home/template");
				
		List<Product_Info> itemList =productDao.getItemsBySC("R", "car");	

		for(int i=0;i<itemList.size();i++)
			itemList.get(i).setNumber(i+1);
		
		mav.addObject("ITEM_LIST",itemList);		
		mav.addObject("BODY","rakuten.jsp");
		return mav;
	}
	@RequestMapping(value="/rakuten/salon.html",method=RequestMethod.GET)
	public ModelAndView RSalon() {
		ModelAndView mav=new ModelAndView(
				"home/template");
				
		List<Product_Info> itemList =productDao.getItemsBySC("R", "salon");	

		for(int i=0;i<itemList.size();i++)
			itemList.get(i).setNumber(i+1);
		
		mav.addObject("ITEM_LIST",itemList);		
		mav.addObject("BODY","rakuten.jsp");
		return mav;
	}
}

