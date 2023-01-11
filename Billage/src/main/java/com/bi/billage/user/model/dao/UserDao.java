package com.bi.billage.user.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.bi.billage.board.model.vo.Inquiry;
import com.bi.billage.board.model.vo.SerialRequest;
import com.bi.billage.common.model.vo.PageInfo;
import com.bi.billage.group.model.vo.Group;
import com.bi.billage.user.model.vo.User;

@Repository
public class UserDao {
	
	// 회원가입
	public int insertUser(SqlSessionTemplate sqlSession, User u) {
		return sqlSession.insert("userMapper.insertUser", u);
	}
	
	// 로그인
	public User loginUser(SqlSessionTemplate sqlSession, User u) {
		return sqlSession.selectOne("userMapper.loginUser", u);
	}

	public int selectSerialRequestListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("serialMapper.selectSerialRequestListCount");
	}

	public ArrayList<SerialRequest> selectSerialRequestList(SqlSessionTemplate sqlSession, PageInfo pi) {
		int offset = (pi.getCurrentPage()- 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("serialMapper.selectSerialRequestList", null, rowBounds);
	}

	public SerialRequest selectSerialRequest(SqlSessionTemplate sqlSession, int requestNo) {
		return sqlSession.selectOne("serialMapper.selectSerialRequest", requestNo);
	}

	public int updateUserGrade(SqlSessionTemplate sqlSession, int userNo) {
		return sqlSession.update("userMapper.updateUserGrade", userNo);
	}

	public int updateSerialRequest(SqlSessionTemplate sqlSession, int requestNo) {
		return sqlSession.update("serialMapper.updateSerialRequest", requestNo);
	}

	public int selectUserListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("userMapper.selectUserListCount");
	}

	public ArrayList<User> selectUserList(SqlSessionTemplate sqlSession, PageInfo pi) {
		int offset = (pi.getCurrentPage()- 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("userMapper.selectUserList", null, rowBounds);
	}
	
	public int selecGroupListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("userMapper.selectGroupListCount");
	}
	
	public ArrayList<Group> selectGroupList(SqlSessionTemplate sqlSession, PageInfo pi) {
		int offset = (pi.getCurrentPage()- 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("userMapper.selectGroupList", null, rowBounds);
	}
	
	public int selectInqListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("userMapper.selectInqListCount");
	}
	
	public ArrayList<Inquiry> selectInqList(SqlSessionTemplate sqlSession, PageInfo pi) {
		int offset = (pi.getCurrentPage()- 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("userMapper.selectInqList", null, rowBounds);
	}
	
	public int insertInquiry(SqlSessionTemplate sqlSession, Inquiry iq) {
		return sqlSession.insert("userMapper.insertInq", iq);
	}
	
	// id 중복체크
	public int idCheck(SqlSessionTemplate sqlSession, String checkId) {
		return sqlSession.selectOne("userMapper.idCheck", checkId);
	}


	
	// 닉네임 중복체크
	public int nicknameCheck(SqlSessionTemplate sqlSession, String checkNickname) {
		return sqlSession.selectOne("userMapper.nicknameCheck", checkNickname);
	}
	
	// 회원정보수정
	public int updateUser(SqlSessionTemplate sqlSession, User u) {
		System.out.println(u);
		return sqlSession.update("userMapper.updateUser", u);
	}
	
}
