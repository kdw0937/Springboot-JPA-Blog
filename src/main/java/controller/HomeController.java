package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dao.LoginDao;
import dao.ProductDao;
import model.Product_Info;
import model.Qna;
import model.User;

@Controller
public class HomeController {
	@Autowired
	private LoginDao loginDao;
	@Autowired
	private ProductDao productDao;
	
	@RequestMapping(value="/home/write.html",
			method=RequestMethod.POST)
	public ModelAndView put(Qna qna, 
			BindingResult br, HttpSession session) {
		ModelAndView mav = new ModelAndView(
				"home/template");
		mav.addObject("BODY","qnaWrite.jsp");
		mav.getModel().putAll(br.getModel());
		return mav;
	}	
	
	@RequestMapping(value="/home/qnaWrite.html",
			method=RequestMethod.GET)
	public ModelAndView qndSecond() {
		ModelAndView mav = new ModelAndView(
				"home/template");
		mav.addObject(new Qna());
		mav.addObject("BODY","qnaWrite.jsp");
		return mav;
	}
	@RequestMapping(value="/home/notice.html")
	public ModelAndView notice() {
		ModelAndView mav = new ModelAndView(
				"home/template");
		mav.addObject("BODY","notice.jsp");
		return mav;
	}
	
	@RequestMapping(value="/home/qna.html",
			method=RequestMethod.GET)
	public ModelAndView qna() {
		ModelAndView mav = new ModelAndView(
				"home/template");		
		mav.addObject("BODY","qna.jsp");
		
		return mav;
	}
	@RequestMapping(value="/home/mypage.html",
			method=RequestMethod.GET)
	public ModelAndView mypage(User user, HttpSession session) {
		ModelAndView mav = new ModelAndView(
				"home/template");		
		String id = (String)session.getAttribute("loginUser");
		if(id == null) {//로그인이 안되어있을때
			mav.addObject("BODY","myPageLogin.jsp");
			mav.addObject(new User());
			return mav;
		}else {//로그인 완료			
			mav.addObject("BODY","mypage.jsp");
		}		
		return mav;
	}
	
	@RequestMapping(value="/home/amazon.html",
			method=RequestMethod.GET)
	public ModelAndView amazon() {
		ModelAndView mav = new ModelAndView(
				"home/template");	
		List<Product_Info> itemList = productDao.getItemsBySite("A");
		
		for(int i =0;i<itemList.size();i++) {
			itemList.get(i).setNumber(i+1);
		}
		mav.addObject("ITEM_LIST",itemList);
		mav.addObject("BODY","amazon.jsp");
		
		return mav;
	}
	
	@RequestMapping(value="/home/rakuten.html",
			method=RequestMethod.GET)
	public ModelAndView rakuten() {
		ModelAndView mav = new ModelAndView(
				"home/template");	
		List<Product_Info> itemList = productDao.getItemsBySite("R");
		
		for(int i =0;i<itemList.size();i++) {
			itemList.get(i).setNumber(i+1);
		}
		mav.addObject("ITEM_LIST",itemList);
		mav.addObject("BODY","rakuten.jsp");
		
		return mav;
	}
	
	@RequestMapping(value="/home/yahoo.html",
			method=RequestMethod.GET)
	public ModelAndView yahoo() {
		ModelAndView mav = new ModelAndView(
				"home/template");	
		List<Product_Info> itemList = productDao.getItemsBySite("Y");
		
		for(int i =0;i<itemList.size();i++) {
			itemList.get(i).setNumber(i+1);
		}
		mav.addObject("ITEM_LIST",itemList);
		mav.addObject("BODY","yahoo.jsp");
		
		return mav;
	}
	
	@RequestMapping(value="/home/userentry.html",
			method=RequestMethod.GET)
	public ModelAndView entryForm() {
		ModelAndView mav = new ModelAndView(
				"home/userentry");
		mav.addObject("user",new User());//객체 주입
		mav.addObject("BODY","userentry.jsp");
		return mav;
	}
	
	@RequestMapping(value="home/intro.html",
			method=RequestMethod.GET)
	public ModelAndView intro(String BODY) {
		ModelAndView mav = new ModelAndView(
				"home/template");
		mav.addObject("BODY",BODY);
		return mav;
		
	}
	@RequestMapping(value="/home/template.html",
			method=RequestMethod.GET)
	public ModelAndView template() {
		ModelAndView mav = new ModelAndView(
				"home/template");
		mav.addObject("user",new User());
		return mav;
	}
}
