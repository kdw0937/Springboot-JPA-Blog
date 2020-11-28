package dao;

import java.util.List;

import model.Condition;
import model.Product_Info;

public interface ProductDao {
	void putItem(Product_Info item);//상품등록
	List<Product_Info> getItems();
	List<Product_Info> getItemsByCate(String cateName);//카테고리 이름
	List<Product_Info> getItemsBySite(String site);//"Y" "R"	
	Integer getItemCount();
	Product_Info getItem(String id);
	///이미지/// -- 관리자 페이지 (상품조회)
	Product_Info getWritingByNum(Integer number);//상품번호로 검색
	Integer getMaXNo();
	List<Product_Info> getItemsBySC(String site,String cate);
}
