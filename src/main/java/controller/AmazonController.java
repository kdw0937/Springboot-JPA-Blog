package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dao.ProductDao;
import model.Product_Info;
import dao.ProductDao;

@Controller
public class AmazonController {
	@Autowired
	private ProductDao productDao;
	

	@RequestMapping(value="/amazon/figure.html",method=RequestMethod.GET)
	public ModelAndView Afigure() {
		ModelAndView mav=new ModelAndView(
				"home/template");
				
		List<Product_Info> itemList =productDao.getItemsBySC("A", "figure");	

		for(int i=0;i<itemList.size();i++)
			itemList.get(i).setNumber(i+1);
		
		mav.addObject("ITEM_LIST",itemList);		
		mav.addObject("BODY","amazon.jsp");
		return mav;
	}
	
	@RequestMapping(value="/amazon/gundam.html",method=RequestMethod.GET)
	public ModelAndView AGundam() {
		ModelAndView mav=new ModelAndView(
				"home/template");
				
		List<Product_Info> itemList =productDao.getItemsBySC("A", "gundam");	

		for(int i=0;i<itemList.size();i++)
			itemList.get(i).setNumber(i+1);
		
		mav.addObject("ITEM_LIST",itemList);		
		mav.addObject("BODY","amazon.jsp");
		return mav;
	}
	
	@RequestMapping(value="/amazon/lego.html",method=RequestMethod.GET)
	public ModelAndView ALego() {
		ModelAndView mav=new ModelAndView(
				"home/template");
				
		List<Product_Info> itemList =productDao.getItemsBySC("A", "rego");	

		for(int i=0;i<itemList.size();i++)
			itemList.get(i).setNumber(i+1);
		
		mav.addObject("ITEM_LIST",itemList);		
		mav.addObject("BODY","amazon.jsp");
		return mav;
	}
	
	@RequestMapping(value="/amazon/fishing.html",method=RequestMethod.GET)
	public ModelAndView AFishing() {
		ModelAndView mav=new ModelAndView(
				"home/template");
				
		List<Product_Info> itemList =productDao.getItemsBySC("A", "fishing");	

		for(int i=0;i<itemList.size();i++)
			itemList.get(i).setNumber(i+1);
		
		mav.addObject("ITEM_LIST",itemList);		
		mav.addObject("BODY","amazon.jsp");
		return mav;
	}
	
	@RequestMapping(value="/amazon/game.html",method=RequestMethod.GET)
	public ModelAndView Agame() {
		ModelAndView mav=new ModelAndView(
				"home/template");
				
		List<Product_Info> itemList =productDao.getItemsBySC("A", "game");	

		for(int i=0;i<itemList.size();i++)
			itemList.get(i).setNumber(i+1);
		
		mav.addObject("ITEM_LIST",itemList);		
		mav.addObject("BODY","amazon.jsp");
		return mav;
	}
	
	@RequestMapping(value="/amazon/golf.html",method=RequestMethod.GET)
	public ModelAndView AGolf() {
		ModelAndView mav=new ModelAndView(
				"home/template");
				
		List<Product_Info> itemList =productDao.getItemsBySC("A", "golf");	

		for(int i=0;i<itemList.size();i++)
			itemList.get(i).setNumber(i+1);
		
		mav.addObject("ITEM_LIST",itemList);		
		mav.addObject("BODY","amazon.jsp");
		return mav;
	}
	
	@RequestMapping(value="/amazon/bike.html",method=RequestMethod.GET)
	public ModelAndView ABike() {
		ModelAndView mav=new ModelAndView(
				"home/template");
				
		List<Product_Info> itemList =productDao.getItemsBySC("A", "bike");	

		for(int i=0;i<itemList.size();i++)
			itemList.get(i).setNumber(i+1);
		
		mav.addObject("ITEM_LIST",itemList);		
		mav.addObject("BODY","amazon.jsp");
		return mav;
	}
	@RequestMapping(value="/amazon/music.html",method=RequestMethod.GET)
	public ModelAndView AMusic() {
		ModelAndView mav=new ModelAndView(
				"home/template");
				
		List<Product_Info> itemList =productDao.getItemsBySC("A", "music_etc");	

		for(int i=0;i<itemList.size();i++)
			itemList.get(i).setNumber(i+1);
		
		mav.addObject("ITEM_LIST",itemList);		
		mav.addObject("BODY","amazon.jsp");
		return mav;
	}
	@RequestMapping(value="/amazon/car.html",method=RequestMethod.GET)
	public ModelAndView ACar() {
		ModelAndView mav=new ModelAndView(
				"home/template");
				
		List<Product_Info> itemList =productDao.getItemsBySC("A", "car");	

		for(int i=0;i<itemList.size();i++)
			itemList.get(i).setNumber(i+1);
		
		mav.addObject("ITEM_LIST",itemList);		
		mav.addObject("BODY","amazon.jsp");
		return mav;
	}
	@RequestMapping(value="/amazon/salon.html",method=RequestMethod.GET)
	public ModelAndView ASalon() {
		ModelAndView mav=new ModelAndView(
				"home/template");
				
		List<Product_Info> itemList =productDao.getItemsBySC("A", "salon");	

		for(int i=0;i<itemList.size();i++)
			itemList.get(i).setNumber(i+1);
		
		mav.addObject("ITEM_LIST",itemList);		
		mav.addObject("BODY","amazon.jsp");
		return mav;
	}
}
