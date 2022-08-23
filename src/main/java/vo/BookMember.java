package vo;


	//vo 클래스 모든 프로퍼티를 select 하지 않는다면 필요.
public class BookMember {
	private String name;
	private String email;
	private String tel;
	private String password;
	
	
	
	public BookMember(String name, String email, String tel, String password) {
	
		this.name=name;
		this.email=email;
		this.tel=tel;
		this.password=password;
		
	}
	
	public BookMember() {
		// TODO Auto-generated constructor stub
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

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "BookMember [name=" + name + ", email=" + email + ", tel=" + tel + ", password=" + password + "]";
	}
	
	
	
	
}

