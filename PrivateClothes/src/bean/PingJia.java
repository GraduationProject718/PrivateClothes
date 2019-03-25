package bean;

import java.util.Date;

public class PingJia {
	private String id;
	private String content;
	private String uId;
	private String cId;
	private Date date;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getuId() {
		return uId;
	}
	public void setuId(String uId) {
		this.uId = uId;
	}
	public String getcId() {
		return cId;
	}
	public void setcId(String cId) {
		this.cId = cId;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public PingJia(String id, String content, String uId, String cId, Date date) {
		super();
		this.id = id;
		this.content = content;
		this.uId = uId;
		this.cId = cId;
		this.date = date;
	}
	@Override
	public String toString() {
		return "PingJia [id=" + id + ", content=" + content + ", uId=" + uId + ", cId=" + cId + ", date=" + date + "]";
	}
	
	public PingJia() {
	}
}
