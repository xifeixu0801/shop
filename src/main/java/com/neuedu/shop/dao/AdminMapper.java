/**
 * 
 */
package com.neuedu.shop.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.neuedu.shop.entity.Admin;

/**
 * @author ��ϰ��
 * @date 2020��5��8������11:52:53
 */
@Repository
public interface AdminMapper {
	List<Admin> findAdminAll();
	/**
	 * ���¼�йصģ��������Ʋ鿴�Ƿ���ڸù���Ա
	 */
	Admin findByName(String name);
	Admin findById(Integer id);
	void insert(Admin admin);
	void update(Admin admin);
	void delete(Integer id);
}
