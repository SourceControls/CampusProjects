package ptit.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "TAIKHOAN")
public class TaiKhoan {
	@Id
	@GeneratedValue
	@Column(name = "IDTK")
	private Integer id;
	
	@Column(name = "USERNAME")
	private String username;
	
	@Column(name = "PASSWORD")
	private String password;
	
	@ManyToOne
	@JoinColumn(name = "USER_ROLE")
	private Role role;
	
	@Column(name = "ENABLED")
	private Boolean enabled;
	
	@OneToOne
	@JoinColumn(name = "IDKH")
	private KhachHang khachHang;

	public TaiKhoan() {
		super();
	}
	
	public TaiKhoan(String username, String password, Role role, Boolean enabled,
			KhachHang khachHang) {
		super();
		this.username = username;
		this.password = password;
		this.role = role;
		this.enabled = enabled;
		this.khachHang = khachHang;
	}

	public TaiKhoan(Integer id, String username, String password, Role role, Boolean enabled,
			KhachHang khachHang) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.role = role;
		this.enabled = enabled;
		this.khachHang = khachHang;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public Boolean getEnabled() {
		return enabled;
	}

	public void setEnabled(Boolean enabled) {
		this.enabled = enabled;
	}

	public KhachHang getKhachHang() {
		return khachHang;
	}

	public void setKhachHang(KhachHang khachHang) {
		this.khachHang = khachHang;
	}

	@Override
	public String toString() {
		return "TaiKhoan [id=" + id + ", username=" + username + ", password=" + password + ", role=" + role
				+ ", enabled=" + enabled + ", khachHang=" + khachHang + "]";
	}
}
