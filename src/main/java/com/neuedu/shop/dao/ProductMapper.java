/**
 * 
 */
package com.neuedu.shop.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.neuedu.shop.entity.Product;
import com.neuedu.shop.entity.ProductConditionVO;

/**
 * @author ��ϰ��
 * @date 2020��5��12������10:37:01
 */
@Repository
public interface ProductMapper {
	List<Product> findAll();
	List<Product> findEight();
	void insert(Product product);
	void update(Product product);
	void delete(Integer id);
	Product findById(Integer id);
	List<Product> fingByKeywords(String keywords);
	List<Product> lastedProduct();
//	��������
	List<Product> findByCategoryId(Integer categoryid);
	/**
	 * ���Ӳ�ѯ��ʵ��
	 * @param vo
	 * @return
	 */
	List<Product> ProductCondition(ProductConditionVO vo);
}
