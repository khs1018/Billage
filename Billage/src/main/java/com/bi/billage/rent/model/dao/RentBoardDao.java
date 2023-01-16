package com.bi.billage.rent.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.bi.billage.common.model.vo.PageInfo;
import com.bi.billage.rent.model.vo.RentBoard;

@Repository
public class RentBoardDao {
	
	// 게시글 총 개수 조회
	public int selectRentBoardListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("rentMapper.selectRentBoardListCount");
	}
	
	// 게시글 리스트 조회
	public ArrayList<RentBoard> selectRentBoardList(SqlSessionTemplate sqlSession, PageInfo pi){
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("rentMapper.selectRentBoardList", null, rowBounds);
	}
}