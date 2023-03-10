package com.bi.billage.user.model.service;

import java.util.ArrayList;

import com.bi.billage.board.model.vo.FAQ;
import com.bi.billage.board.model.vo.Inquiry;
import com.bi.billage.board.model.vo.Novel;
import com.bi.billage.board.model.vo.SerialRequest;
import com.bi.billage.club.model.vo.Club;
import com.bi.billage.common.entity.CertVo;
import com.bi.billage.common.model.vo.PageInfo;
import com.bi.billage.user.model.vo.User;


public interface UserService {
	
	// 회원가입 서비스
	int insertUser(User u);
	
	// 로그인
	User loginUser(User u);

	// 연재 신청 총 개수 조회
	int selectSerialRequestListCount();

	// 연재 신청 리스트 조회
	ArrayList<SerialRequest> selectSerialRequestList(PageInfo pi);

	// 연재 신청 디테일 조회
	SerialRequest selectSerialRequest(int requestNo);

	// 연재 요청 승락후 회원등급변경/연재요청상태변경
	int updateUserGrade(Integer userNo);
	int updateSerialRequest(Integer requestNo);
	
	// 회원 총 몇명인지 조회
	int selectUserListCount();
	
	// 회원 리스트 조회
	ArrayList<User> selectUserList(PageInfo pi);
	
	// 모임 총 몇개인지 조회
	int selectGroupListCount();
	
	// 모임 리스트 조회
	ArrayList<Club> selectGroupList(PageInfo pi);
	
	// 작품 총 몇개인지 조회
	int selectNovelListCount();
	
	// 작품 리스트 조회
	ArrayList<Novel> selectNovelList(PageInfo pi);
	
	// 작품 디테일 조희
	Novel selectNovel(Integer novelNo);
	
	// 작품 수정
	int updateNovel(Novel n);
	
	// 문의 총 개수 조회
	int selectInqListCount();
	
	// 문의 리스트 조희
	ArrayList<Inquiry> selectInqList(PageInfo pi);
	
	// 문의 디테일 조회
	Inquiry selectInquiry(int inqNo);
	
	// 문의 요청
	int insertInquiry(Inquiry iq);
	
	// 문의 답변
	int updateInquiry(Inquiry iq);
	
	// 관리자 FAQ 세기
	int selectFaqListCount();
	
	// 관리자 FAQ 조회
	ArrayList<FAQ> selectFaqList(PageInfo pi);
	
	// 관리자 FAQ 등록
	int insertFaq(FAQ faq);
	
	// 관리자 FAQ 삭제
	int deleteFaq(FAQ faq);
	
	// 관리자 FAQ 수정
	int updateFaq(FAQ faq);
	
	// id중복체크
	int idCheck(String checkId);
	
	// 닉네임 중복체크
	int nicknameCheck(String checkNickname);
	
	// 회원정보수정
	int updateUser(User u);
	
	// 회원 탈퇴
	int deleteUser(int userNo);

	// 게시글 갯수 조회
	User countWriteBoard(int userNo);
	
	// 등급 올려주는 그거
	int updateGrade(int userNo);
	
	// 인증 메일 보내기
	void sendMail(CertVo certVo);
	
	// 인증 확인
	boolean validate(CertVo certVo);
	
	
	
	
	


}
