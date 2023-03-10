package com.bi.billage.board.model.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class SerialRequest {
	
	private Integer requestNo; // REQUEST_NO	NUMBER
	private Integer userNo; // USER_NO	NUMBER
	private Date requestDate; // REQUEST_DATE	DATE
	private String requestTitle; // REQUEST_TITLE	VARCHAR2(1000 BYTE)
	private String requestContent; // REQUEST_CONTENT	VARCHAR2(4000 BYTE)
	private String acceptance; // ACCEPTANCE	VARCHAR2(1 BYTE)
	private String originName;
	private String changeName;
	private String nickname;
}
