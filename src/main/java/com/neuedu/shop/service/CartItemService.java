/**
 * 
 */
package com.neuedu.shop.service;

import java.util.List;

import com.neuedu.shop.entity.CartItem;


/**
 * 
 * @author ��ϰ��
 * @date 2020��5��15������8:04:06
 */
public interface CartItemService {
	List<CartItem> findByUserId(Integer userid);
	void insert(CartItem cartItem);
}
