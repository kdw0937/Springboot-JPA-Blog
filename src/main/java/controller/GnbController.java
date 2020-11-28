package controller;


import java.io.BufferedInputStream;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import dao.ProductDao;
import model.Product_Info;
import model.User;

@Controller
public class GnbController {//전체 카테고리 검색
	@Autowired
	private ProductDao productDao;

	@RequestMapping(value="/gnb/total.html",
			method=RequestMethod.GET)
	public ModelAndView gnbtotal() {//전체 카테고리 출력
		ModelAndView mav=new ModelAndView(
				"home/template");
		
		List<Product_Info> itemList = productDao.getItems();				

		for(int i=0;i<itemList.size();i++)
			itemList.get(i).setNumber(i+1);
		
		mav.addObject("ITEM_LIST",itemList);		
		mav.addObject("BODY","totalCate.jsp");
		return mav;
	}
	
	@RequestMapping(value="/gnb/figure.html",
			method=RequestMethod.GET)
	public ModelAndView gnbfigure() {//전체 피규어
		ModelAndView mav=new ModelAndView(
				"home/template");
		
		List<Product_Info> itemList = productDao.getItemsByCate("figure");			

		for(int i=0;i<itemList.size();i++)
			itemList.get(i).setNumber(i+1);
		
		mav.addObject("ITEM_LIST",itemList);		
		mav.addObject("BODY","totalCate.jsp");
		return mav;
	}
	@RequestMapping(value="/gnb/gundam.html",
			method=RequestMethod.GET)
	public ModelAndView gnbGundam() {//전체 건담프라모델
		ModelAndView mav=new ModelAndView(
				"home/template");
		
		List<Product_Info> itemList = productDao.getItemsByCate("gundam");			

		for(int i=0;i<itemList.size();i++)
			itemList.get(i).setNumber(i+1);
		
		mav.addObject("ITEM_LIST",itemList);		
		mav.addObject("BODY","totalCate.jsp");
		return mav;
	}
	
	@RequestMapping(value="/gnb/lego.html",
			method=RequestMethod.GET)
	public ModelAndView gnbLego() {//전체 레고용품
		ModelAndView mav=new ModelAndView(
				"home/template");
		
		List<Product_Info> itemList = productDao.getItemsByCate("rego");			

		for(int i=0;i<itemList.size();i++)
			itemList.get(i).setNumber(i+1);
		
		mav.addObject("ITEM_LIST",itemList);		
		mav.addObject("BODY","totalCate.jsp");
		return mav;
	}
	@RequestMapping(value="/gnb/fishing.html",
			method=RequestMethod.GET)
	public ModelAndView gnbFishing() {//전체 낚시용품
		ModelAndView mav=new ModelAndView(
				"home/template");
		
		List<Product_Info> itemList = productDao.getItemsByCate("fishing");			

		for(int i=0;i<itemList.size();i++)
			itemList.get(i).setNumber(i+1);
		
		mav.addObject("ITEM_LIST",itemList);		
		mav.addObject("BODY","totalCate.jsp");
		return mav;
	}
	@RequestMapping(value="/gnb/game.html",
			method=RequestMethod.GET)
	public ModelAndView gnbGame() {//전체  게임용품
		ModelAndView mav=new ModelAndView(
				"home/template");
		
		List<Product_Info> itemList = productDao.getItemsByCate("game");			

		for(int i=0;i<itemList.size();i++)
			itemList.get(i).setNumber(i+1);
		
		mav.addObject("ITEM_LIST",itemList);		
		mav.addObject("BODY","totalCate.jsp");
		return mav;
	}
	@RequestMapping(value="/gnb/golf.html",
			method=RequestMethod.GET)
	public ModelAndView gnbGolf() {//전체 골프용품
		ModelAndView mav=new ModelAndView(
				"home/template");
		
		List<Product_Info> itemList = productDao.getItemsByCate("golf");			

		for(int i=0;i<itemList.size();i++)
			itemList.get(i).setNumber(i+1);
		
		mav.addObject("ITEM_LIST",itemList);		
		mav.addObject("BODY","totalCate.jsp");
		return mav;
	}
	@RequestMapping(value="/gnb/bike.html",
			method=RequestMethod.GET)
	public ModelAndView gnbBike() {//전체 오토바이용품
		ModelAndView mav=new ModelAndView(
				"home/template");
		
		List<Product_Info> itemList = productDao.getItemsByCate("bike");			

		for(int i=0;i<itemList.size();i++)
			itemList.get(i).setNumber(i+1);
		
		mav.addObject("ITEM_LIST",itemList);		
		mav.addObject("BODY","totalCate.jsp");
		return mav;
	}
	@RequestMapping(value="/gnb/music.html",
			method=RequestMethod.GET)
	public ModelAndView gnbMusic() {//전체 음악CD
		ModelAndView mav=new ModelAndView(
				"home/template");
		
		List<Product_Info> itemList = productDao.getItemsByCate("music_etc");			

		for(int i=0;i<itemList.size();i++)
			itemList.get(i).setNumber(i+1);
		
		mav.addObject("ITEM_LIST",itemList);		
		mav.addObject("BODY","totalCate.jsp");
		return mav;
	}
	@RequestMapping(value="/gnb/car.html",
			method=RequestMethod.GET)
	public ModelAndView gnbcar() {//전체 자동차
		ModelAndView mav=new ModelAndView(
				"home/template");
		
		List<Product_Info> itemList = productDao.getItemsByCate("car");			

		for(int i=0;i<itemList.size();i++)
			itemList.get(i).setNumber(i+1);
		
		mav.addObject("ITEM_LIST",itemList);		
		mav.addObject("BODY","totalCate.jsp");
		return mav;
	}
	@RequestMapping(value="/gnb/salon.html",
			method=RequestMethod.GET)
	public ModelAndView gnbSalon() {//전체 미용기기
		ModelAndView mav=new ModelAndView(
				"home/template");
		
		List<Product_Info> itemList = productDao.getItemsByCate("salon");			

		for(int i=0;i<itemList.size();i++)
			itemList.get(i).setNumber(i+1);
		
		mav.addObject("ITEM_LIST",itemList);		
		mav.addObject("BODY","totalCate.jsp");
		return mav;
	}
}
