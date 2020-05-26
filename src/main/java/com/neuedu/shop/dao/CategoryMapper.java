/**
 * 
 */
package com.neuedu.shop.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.neuedu.shop.entity.Category;

/**
 * @author ��ϰ��
 * @date 2020��5��11������10:15:45
 */
@Repository
public interface CategoryMapper {
	/**
	 * ��Ӹ����
	 * @param category_name
	 * @param category_description
	 */
	void addRootCategory(String name ,String descr);
	
	/**
	 * ��Ӻ��ӽڵ�
	 */
	int findByParentId(Integer pid);
	void addChildCategory(Category category);
	void updateParentId(Integer pid);
	/**
	 * ɾ��
	 * @param id
	 * @param category_parentId
	 */
//	int findByChildId(Integer id);
//	void delete(Integer id,int category_parentId);
	// ��ѯ��𼶱�Ϊ3��������𣬹�����Ʒʹ��
	List<Category> findThree();
	Category findById(Integer id);
	List<Category> findAll();
	List<Category> findToTree();
	List<Category> fingByKeywords(String keyword);
	void update(Category category);
	void delete(Integer id);
	void insert(Category category);
}
