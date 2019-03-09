package bean;

public class ClothesSize {
	private String id;
	private String name;
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "ClothesSize [id=" + id + ", name=" + name + "]";
	}
	public ClothesSize(String id, String name) {
		super();
		this.id = id;
		this.name = name;
	}
	public ClothesSize() {
		// TODO Auto-generated constructor stub
	}
}
