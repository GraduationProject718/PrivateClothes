package bean;

public class Cart {
	private String id;
	private String uid;
	private String cid;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	
	public Cart() {
	}
	public Cart(String id, String uid, String cid) {
		super();
		this.id = id;
		this.uid = uid;
		this.cid = cid;
	}
	@Override
	public String toString() {
		return "Cart [id=" + id + ", uid=" + uid + ", cid=" + cid + "]";
	}
	
}
