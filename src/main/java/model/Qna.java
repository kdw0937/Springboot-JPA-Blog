package model;

public class Qna {
	private Integer write_num; //글번호
	private String id;
	private String pw;
	private Integer group_no;
	private Integer parent_no;
	private Integer order_no;
	private String write_name;
	private String write_context;//글내용 
	private String write_photo;
	public Integer getWrite_num() {
		return write_num;
	}
	public void setWrite_num(Integer write_num) {
		this.write_num = write_num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public Integer getGroup_no() {
		return group_no;
	}
	public void setGroup_no(Integer group_no) {
		this.group_no = group_no;
	}
	public Integer getParent_no() {
		return parent_no;
	}
	public void setParent_no(Integer parent_no) {
		this.parent_no = parent_no;
	}
	public Integer getOrder_no() {
		return order_no;
	}
	public void setOrder_no(Integer order_no) {
		this.order_no = order_no;
	}
	public String getWrite_name() {
		return write_name;
	}
	public void setWrite_name(String write_name) {
		this.write_name = write_name;
	}
	public String getWrite_context() {
		return write_context;
	}
	public void setWrite_context(String write_context) {
		this.write_context = write_context;
	}
	public String getWrite_photo() {
		return write_photo;
	}
	public void setWrite_photo(String write_photo) {
		this.write_photo = write_photo;
	}
	
	
}
