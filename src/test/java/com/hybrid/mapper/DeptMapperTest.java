package com.hybrid.mapper;

import java.util.List;

import org.springframework.boot.SpringApplication;
import org.springframework.context.ConfigurableApplicationContext;

import com.hybrid.MosaicWebApplication;
import com.hybrid.domain.Dept;
import com.hybrid.mapper.DeptMapper;

public class DeptMapperTest {

	public static void main(String[] args) {
		ConfigurableApplicationContext ctx = SpringApplication.run(MosaicWebApplication.class, args);
		
		try {
			
			DeptMapper mapper = ctx.getBean(DeptMapper.class);
			
			mapper.delete(55);
			/*
			 * insert
			 */
			mapper.insert(new Dept(55, "총무부", "서울"));
			
			Dept d = mapper.selectByDeptno(55);
			System.out.println("=====insert ==> " + d);
			
			
			List<Dept> depts = mapper.selectAll();
			depts.forEach(dept-> {
				System.out.println(dept);
				
			});
			/*
			 * Update
			 */
			
			mapper.update(new Dept(55, "총무부2", "부산"));
			
			d = mapper.selectByDeptno(55);
			
			System.out.println("=====Update ==> " + d);
			
			depts = mapper.selectAll();
			depts.forEach(dept -> {
				System.out.println(dept);
				
			});
			
			/*
			 * delete
			 */
			mapper.delete(55);
			
			d = mapper.selectByDeptno(55);
			System.out.println("=====delete ==> " + d);
			
			depts = mapper.selectAll();
			depts.forEach(dept -> {
				System.out.println(dept);
				
			});
		
		
		
		}finally{
			ctx.close();
			
		}
	}
}
