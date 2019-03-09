package bean;

public class Material {
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
	public Material() {
	}
	@Override
	public String toString() {
		return "Material [id=" + id + ", name=" + name + "]";
	}
	public Material(String id, String name) {
		super();
		this.id = id;
		this.name = name;
	}
	
}
