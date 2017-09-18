package com.pete.domain.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;

import com.pete.domain.base.BaseEntity;
/**
 * 注册用户实体类
 * @author peter
 * @time 2017年9月9日 下午7:59:04
 */
@Entity(name = "acct_user")
public class AcctUser extends BaseEntity {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4173840626915621588L;

	/**
	 * 用户名
	 */
	@Column(name = "account", nullable = false) 
	private String account;
	
	/**
	 * 明文密码
	 */
	@Column(name = "passwd", nullable = false) 
	private String passwd;
	
	/**
	 * 注册时间
	 */
	@Column(name = "create_time", nullable = false) 
	private Date createTime;

	/**
	 * 密码 MD5 加密值
	 */
	@Column(name = "passwd_md5", nullable = false) 
	private String passwdMd5;
	
	
	/**
	 * 邮件
	 */
	@Column(name = "email", nullable = true)
	private String email;
	
	/**
	 * 手机号
	 */
	@Column(name = "telephone", nullable = false)
	private String telephone;
	
	/**
	 * 是否有效 1.有效 0.不可用 无效
	 */
	@Column(name = "is_available", nullable = false)
	private int isAvailable;

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public String getPasswdMd5() {
		return passwdMd5;
	}

	public void setPasswdMd5(String passwdMd5) {
		this.passwdMd5 = passwdMd5;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public int getIsAvailable() {
		return isAvailable;
	}

	public void setIsAvailable(int isAvailable) {
		this.isAvailable = isAvailable;
	}

	public boolean equals(AcctUser obj) {
		return super.equals(obj) || (obj.getId() == this.id);
	}
	
	
	
}
