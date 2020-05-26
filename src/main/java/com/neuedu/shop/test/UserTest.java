/**
 * 
 */
package com.neuedu.shop.test;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.neuedu.shop.dao.UserMapper;
import com.neuedu.shop.entity.User;

/**
 * @author ��ϰ��
 * @date 2020��5��8������12:30:04
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:beans.xml")
public class UserTest {
	@Autowired
	private UserMapper mapper;
	
//	@Test
//	public void findAll() {
//		List<User> users = mapper.findAll();
//		for (User user : users) {
//			System.out.println(user);
//		}
		// lambda���ʽjava8+����ʹ�ã�������ǿforѭ��
//		users.forEach(user->{
//			System.out.println(user);
//		});
//	}
	@Test
	public void findByName() {
		User user = mapper.findByName("����");
		System.out.println(user);
	}
	@Test
	public void findById() {
		User user = mapper.findById(2);
		System.out.println(user);
	}
	
	@Test
	public void deleteUser() {
		mapper.delete(3);
	}
	
	@Test
	public void update() {
		User user = mapper.findById(6);
		user.setName("����");
		mapper.update(user);
		
	}
	
	@Test
	public void addUser() {
		mapper.insert(new User("С����", "520520", "18298765432", "��ɽ"));
	}
	
	@Test
	public void resetPassword() {
		mapper.resetPassword(6);
	}
	
	@Test
	public void insert() {
		mapper.insert(new User("����", "123456", "13965627185", "����ʡ��ɽ��"));
	}
}
