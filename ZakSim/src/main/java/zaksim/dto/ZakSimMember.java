package zaksim.dto;

import java.util.Date;

public class ZakSimMember {
	
	private String id;
	private String password;
	private String nick;
	private String name;
	private String email;
	private String phone;
	private Date joinDate;
	private int status;				// 계정 정지 / 정상
	private Date suspensionDate;	// 계정 정지 처분 날짜
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Date getJoinDate() {
		return joinDate;
	}
	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public Date getSuspensionDate() {
		return suspensionDate;
	}
	public void setSuspensionDate(Date suspensionDate) {
		this.suspensionDate = suspensionDate;
	}
	@Override
	public String toString() {
		return "ZakSimMember [id=" + id + ", password=" + password + ", nick=" + nick + ", name=" + name + ", email="
				+ email + ", phone=" + phone + ", joinDate=" + joinDate + ", status=" + status + ", suspensionDate="
				+ suspensionDate + "]";
	}
	
	

}
