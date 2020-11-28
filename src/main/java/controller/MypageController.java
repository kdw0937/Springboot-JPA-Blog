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
public class MypageController {
	@Autowired
	private LoginDao loginDao;
	
	@RequestMapping(value="/mypage/modifyuser.html",
			method=RequestMethod.POST)
	public ModelAndView ModifyUser(User user, BindingResult br,
			HttpSession session) {		
		ModelAndView mav = new ModelAndView(
				"/home/template");
		
		session.setAttribute("loginUser", user.getUser_id());
		mav.addObject("BODY","mypage.jsp");
		return mav;
}
		
}
