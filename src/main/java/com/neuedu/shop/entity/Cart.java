/**
 * 
 */
package com.neuedu.shop.entity;

import java.util.ArrayList;
import java.util.List;

import lombok.Data;

/**
 * @author ��ϰ��
 * @date 2020��5��15������2:18:57
 */
@Data
public class Cart {
	// ����ʽ
	private static Cart cart = new Cart();
	private List<CartItem> items;
	/**
	 * 
	 */
	private Cart() {
		items = new ArrayList<CartItem>();
	}
	
	public static Cart getInstance() {
		return cart;
	}
}
