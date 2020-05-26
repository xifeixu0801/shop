/**
 * 
 */
package com.neuedu.shop.dao;

import java.util.List;

import com.neuedu.shop.entity.CartItem;

/**
 * @author ��ϰ��
 * @date 2020��5��15������2:53:33
 */
public interface CartItemMapper {
	// ҵ���У��ں�̨�����У�����Ҫ�鿴�û����ﳵ����
//	List<CartItem> findAll();
	/**
	 * �����û�id��userid�����ҹ�����
	 * @param userid
	 * @return
	 */
	List<CartItem> findByUserId(Integer userid);
	// �����ݱ����������
	void insert(CartItem cartItem);
	void update(CartItem cartItem);
}
