/**
 * 
 */
package com.neuedu.shop.service;

import java.util.List;

import com.neuedu.shop.entity.Admin;

/**
 * @author ��ϰ��
 * @date 2020��5��8������11:53:41
 */
public interface AdminService {
	List<Admin> findAdminAll();
	/**
	 * ��¼�߼�
	 */
	
	Admin login(String name,String pwd);
	Admin findById(Integer id);
	void insert(Admin admin);
	void update(Admin admin);
	void delete(Integer id);
}
