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
import model.Condition;
import model.Product_Info;
import model.User;

@Controller
public class AdminController {
	@Autowired
	private ProductDao productDao;
	
	
	@RequestMapping(value="/read/product.html",
			method=RequestMethod.GET)
	public ModelAndView writeList() {
		ModelAndView mav=new ModelAndView(
				"home/template");
		
		List<Product_Info> itemList = productDao.getItems();
//		List<Product_Info> itemList =productDao.getItemsBySite("R");
		

		for(int i=0;i<itemList.size();i++)
			itemList.get(i).setNumber(i+1);
		
		mav.addObject("ITEM_LIST",itemList);		
		mav.addObject("BODY","itemList.jsp");
		return mav;
	}
	
	
	
		//상품 등록
	  @RequestMapping(value = "/product/entry.html", method = RequestMethod.POST)	 
	  public ModelAndView entry(Product_Info item,
			BindingResult br, HttpSession session) {
		  	ModelAndView mav=new ModelAndView(
					"home/template");
		  	
		  	System.out.println(item.getProduct_name());
		  	System.out.println(item.getProduct_kindof());
		  	System.out.println(item.getImage_file());
//		  	System.out.println("오류2");
		  	
		  	if(br.hasErrors()) {
		  		System.out.println("오류3");
		  		mav.getModel().putAll(br.getModel());
				mav.addObject("BODY","ProductInput.jsp");
				return mav;
		  	}
		  	
		  	String id=(String)session.getAttribute(
					"loginUser");
			if(id == null) {
				System.out.println("오류1");
				mav.addObject("BODY","template.jsp");				
				mav.addObject(new User());
				return mav;
			}else {
				MultipartFile multiFile = item.getImage_file();
				String fileName = null; String path = null;
				OutputStream os = null;
				if(multiFile != null) {//업로드 파일이 있는 경우
					fileName=multiFile.getOriginalFilename();
					ServletContext ctx = 
							session.getServletContext();
					path = ctx.getRealPath("/upload/"+fileName);
					System.out.println("업로드 위치:"+path);
					try {
						os=new FileOutputStream(path);
						BufferedInputStream bis = 
							new BufferedInputStream(
								multiFile.getInputStream());
						byte[] buffer = new byte[8196];//6K
						int read = 0;
						while((read = bis.read(buffer))>0) {
							os.write(buffer,0,read);
						}
						if(os != null) os.close();
					}catch(Exception e) {
						e.printStackTrace();
					}
					System.out.println(fileName);
					item.setProduct_photo(fileName);//파일이름설정
				}//end of if				
				int maxNum;
				if(productDao.getMaXNo()==null) {
					maxNum=1;
					item.setProduct_number(maxNum);
				}else {
					item.setProduct_number(productDao.getMaXNo()+1);
				}
				productDao.putItem(item);//DB에 삽입
				return new ModelAndView(
						"redirect:/read/product.html");
			}			
		 }
	
	@RequestMapping(value = "/product/open.html", method = RequestMethod.GET)
	public ModelAndView open() {// 상품등록페이지 open
		ModelAndView mav = new ModelAndView("home/template");
		mav.addObject(new Product_Info());
		mav.addObject("BODY", "ProductInput.jsp");
		return mav;
	}

}
