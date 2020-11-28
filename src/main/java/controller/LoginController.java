package controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dao.LoginDao;
import model.User;

@Controller
public class LoginController {
	@Autowired
	private LoginDao loginDao;
	@RequestMapping(value="/login/adminpage.html",
			method=RequestMethod.GET)//관리자 로그인
	public ModelAndView adminPage(User user,BindingResult br,
			HttpSession session) {
		ModelAndView mav = new ModelAndView(
				"home/template");
		String id = (String)session.getAttribute("loginUser");
		 
		if(id == null) {//로그인 실패 
			mav.addObject("BODY","loginResult.jsp");
			mav.addObject("ITEM","nobody");
			mav.addObject(new User());			
			return mav;
		}else {//로그인 성공
			String grade = loginDao.getGrade(id);			
			System.out.println(grade);
			if(grade.equals("A")) {		//관리자일때		
				session.setAttribute("loginUser", user.getUser_id());
				System.out.println(user.getUser_id()+"1");
				mav.addObject("BODY","admin.jsp");				
			}else {			
				mav.addObject("BODY","adminfalse.jsp");
			}			
		}
		return mav;
	}

	@RequestMapping(value="/login/login.html")
	public ModelAndView tepLogin() {
		ModelAndView mav = new ModelAndView("home/login");
		mav.addObject("user",new User());
		return mav;
	}
	
	
	@RequestMapping(value="/login/template.html", method=RequestMethod.POST)
	   public ModelAndView login(User user, BindingResult br, HttpSession session) {		
	      ModelAndView mav = new ModelAndView("home/template");	      
	      if(br.hasErrors()) {
	         mav.addObject("HEADER","login.jsp");
	         mav.getModel().putAll(br.getModel());
	         return mav;
	      }
	      String grade = loginDao.getGrade(user.getUser_id());
	      String password = loginDao.getPassword(user.getUser_id());
	      if(password == null || !user.getUser_pw().equals(password)) {
	    	 mav.addObject("BODY", "loginResult.jsp");
	      }else {//로그인 성공         	    	 
	    	  if(grade.equals("A")) {  //관리자 로그인
	    		  session.setAttribute("loginUser", user.getUser_id());
	    		  mav.addObject("BODY","admin.jsp");	    	
	    	  }else {//일반 로그인 
	    		  session.setAttribute("loginUser", user.getUser_id());
	    		  mav.addObject("BODY","intro.jsp");
	    	  }
			/*
			 * System.out.println(user.getUser_grade());
			 * System.out.println(loginDao.getGrade(user.getUser_id()));
			 */
	    	  
	      }
	      return mav;
	   }
	
}
