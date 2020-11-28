package model;

import org.springframework.web.multipart.MultipartFile;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

public class Product_Info {
	private Integer product_number;
	private Integer order_num;
	private String product_name;
	private String product_from;
	private Integer product_price;
	private Integer product_kindof;
	private String product_photo;
	private String content;	
	private String site;
	private String cateName;
	private Integer group_id;
	private Integer order_no;
	private Integer parent_id;
	private MultipartFile image_file;
	private Integer number;
	
	
	
	
	public Integer getNumber() {
		return number;
	}
	public void setNumber(Integer number) {
		this.number = number;
	}
	
	
	public MultipartFile getImage_file() {
		return image_file;
	}
	public void setImage_file(MultipartFile image_file) {
		this.image_file = image_file;
	}
	
	public Integer getGroup_id() {
		return group_id;
	}
	public void setGroup_id(Integer group_id) {
		this.group_id = group_id;
	}
	public Integer getOrder_no() {
		return order_no;
	}
	public void setOrder_no(Integer order_no) {
		this.order_no = order_no;
	}
	public Integer getParent_id() {
		return parent_id;
	}
	public void setParent_id(Integer parent_id) {
		this.parent_id = parent_id;
	}
	private MultipartFile image;
	
	
	
	public MultipartFile getImage() {
		return image;
	}
	public void setImage(MultipartFile image) {
		this.image = image;
	}
	public Integer getProduct_number() {
		return product_number;
	}
	public void setProduct_number(Integer product_number) {
		this.product_number = product_number;
	}
	public Integer getOrder_num() {
		return order_num;
	}
	public void setOrder_num(Integer order_num) {
		this.order_num = order_num;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getProduct_from() {
		return product_from;
	}
	public void setProduct_from(String product_from) {
		this.product_from = product_from;
	}
	public Integer getProduct_price() {
		return product_price;
	}
	public void setProduct_price(Integer product_price) {
		this.product_price = product_price;
	}
	public Integer getProduct_kindof() {
		return product_kindof;
	}
	public void setProduct_kindof(Integer product_kindof) {
		this.product_kindof = product_kindof;
	}
	public String getProduct_photo() {
		return product_photo;
	}
	public void setProduct_photo(String product_photo) {
		this.product_photo = product_photo;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	public String getCateName() {
		return cateName;
	}
	public void setCateName(String cateName) {
		this.cateName = cateName;
	}
	public String getSite() {
		return site;
	}
	public void setSite(String site) {
		this.site = site;
	}
	
	
}
