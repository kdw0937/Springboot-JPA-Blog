package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dao.LoginDao;

@Controller
public class IdCheckedController {
	@Autowired
	private LoginDao loginDao;
	@RequestMapping(value="/idcheck/idcheck.html",method=RequestMethod.GET)
	public ModelAndView idCheck(String ID) {
		ModelAndView mav = new ModelAndView(
				"home/idCheck");
		Integer cnt = loginDao.getIdCount(ID);
		if(cnt > 0) {//중북된 ID가 있는경우
			mav.addObject("DUP","YES");
		}else {//중복된 ID가 없는경우
			mav.addObject("DUP","NO");
		}
		mav.addObject("ID",ID);
		return mav;
	}
}
