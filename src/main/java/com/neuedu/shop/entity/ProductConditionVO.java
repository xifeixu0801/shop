/**
 * 
 */
package com.neuedu.shop.entity;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author ��ϰ��
 * @date 2020��5��14������6:09:28
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProductConditionVO implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -4172979786111554624L;
	private Integer categoryid;
	private String keywords;
	private Double lownormalprice;
	private Double highnormalprice;
	private Double lowmemberprice;
	private Double highmemberprice;
	private String startdate;
	private String enddate;
	
}
