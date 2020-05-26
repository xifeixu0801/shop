/**
 * 
 */
package com.neuedu.shop.entity;

import java.io.Serializable;
import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author ��ϰ��
 * @date 2020��5��8������11:28:33
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class User implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 6823915666074242151L;
	private Integer id;
	private String name;
	private String password;
	private String phone;
	private String addr;
	private Timestamp rdate;
	private Integer status;
	/**
	 * @param name
	 * @param password
	 * @param phone
	 * @param addr
	 */
	public User(String name, String password, String phone, String addr) {
		this.name = name;
		this.password = password;
		this.phone = phone;
		this.addr = addr;
	}
	
}
