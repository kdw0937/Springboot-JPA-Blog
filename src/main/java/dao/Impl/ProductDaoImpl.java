package dao.Impl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.ProductDao;
import model.Product_Info;
@Repository
public class ProductDaoImpl implements ProductDao {
@Autowired
	private SqlSession session;

	public Integer getMaXNo() {
	return session.selectOne("mapper.Productmapper.getMaXNo");
}

	public Product_Info getWritingByNum(Integer number) {
		return session.selectOne("mapper.Productmapper.getWritingByNum",number);
}

	public void putItem(Product_Info item) {	
		session.insert("mapper.Productmapper.putItem",item);

	}

	public List<Product_Info> getItems() {
		return session.selectList("mapper.Productmapper.getItemList");
	}

	public Integer getItemCount() {
		return session.selectOne("mapper.Productmapper.getItemCount");
	}

	public Product_Info getItem(String id) {//??모름
		return session.selectOne("mapper.Productmapper.getItem",id);
	}

	public List<Product_Info> getItemsBySite(String site) {
//		HashMap<String, String> hs=new HashMap<String, String>();
//		hs.put("site", site);	
		return session.selectList("mapper.Productmapper.getItemListBySite", site);
	}
	public List<Product_Info> getItemsByCate(String cateName) {
//		HashMap<String,String> hs= new HashMap<String,String>();
//		hs.put("cate",cateName);
		return session.selectList("mapper.Productmapper.getItemsByCate", cateName);
	}
	public List<Product_Info> getItemsBySC(String site, String cate){
		HashMap<String, String> hs=new HashMap<String, String>();
		hs.put("site", site);	
		hs.put("cate", cate);
		return session.selectList("mapper.Productmapper.getItemsBySC",hs);
		
	}
}
