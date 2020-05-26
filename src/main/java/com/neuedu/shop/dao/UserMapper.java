/**
 * 
 */
package com.neuedu.shop.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.neuedu.shop.entity.User;

/**
 * @author ��ϰ��
 * @date 2020��5��8������9:41:33
 * @Repository���ڱ�ע���ݷ����������DAO���
 */
@Repository
public interface UserMapper {
	List<User> findAll();
	User findById(Integer id);
	User findByName(String name);
	void delete(Integer id);
	void insert(User user);
	void update(User user);
	/*��������*/
	void resetPassword(Integer id);
}
