package com.ustore.products.dao;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.ustore.products.dto.OrderDto;

@Mapper
public interface OrderDao {

	ArrayList<OrderDto> list();

	void orderCartInsert(OrderDto dto);

	ArrayList<OrderDto> orderList();

	ArrayList<OrderDto> driveList();

	

}
