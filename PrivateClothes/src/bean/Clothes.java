package bean;

import java.util.Date;

public class Clothes {
	private String id;
	private String clothesTypeId;
	private String gender;
	private String name;
	private String info;
	private String materialId;
	private double size;
	private String color;
	private double price;
	private double num;
	private String img;
	private Date date;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getClothesTypeId() {
		return clothesTypeId;
	}
	public void setClothesTypeId(String clothesTypeId) {
		this.clothesTypeId = clothesTypeId;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public String getMaterialId() {
		return materialId;
	}
	public void setMaterialId(String materialId) {
		this.materialId = materialId;
	}
	public double getSize() {
		return size;
	}
	public void setSize(double size) {
		this.size = size;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public double getNum() {
		return num;
	}
	public void setNum(double num) {
		this.num = num;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "Clothes [id=" + id + ", clothesTypeId=" + clothesTypeId + ", gender=" + gender + ", name=" + name
				+ ", info=" + info + ", materialId=" + materialId + ", size=" + size + ", color=" + color + ", price="
				+ price + ", num=" + num + ", img=" + img + ", date=" + date + "]";
	}
	public Clothes(String id, String clothesTypeId, String gender, String name, String info, String materialId,
			double size, String color, double price, double num, String img, Date date) {
		super();
		this.id = id;
		this.clothesTypeId = clothesTypeId;
		this.gender = gender;
		this.name = name;
		this.info = info;
		this.materialId = materialId;
		this.size = size;
		this.color = color;
		this.price = price;
		this.num = num;
		this.img = img;
		this.date = date;
	}
	
	public Clothes() {
	}
	
}
