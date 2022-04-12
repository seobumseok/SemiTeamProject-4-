package com.campus.myapp.service;

import com.campus.myapp.vo.FoodVO;

public interface FoodService {
	
	//파일 이름 있는지 체크
	public int checkFilename(String filename);
	
	//이미 해당 이름의 음식이 저장되어 있는지 확인
	public int checkFoodName(String fname);
	
	//폼의 음식 데이터 추가
	public int foodInsert(FoodVO vo);

	public String getfname();

}
