package com.bi.billage.follow.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FollowController {
	
	@RequestMapping("selectFollowing.fo")
	public String selectFollowingList() {
		
		return "follow/followingListView";
	}
	
	@RequestMapping("selectFollower.fo")
	public String selectFollowerList() {
		
		return "follow/followerListview";
	}
	
	@RequestMapping("selectLoginUser.fo")
	public String selectLoginUser() {
		return "follow/loginUserFollowView";
	}
	
	@RequestMapping("followingDetail.fo")
	public String selectFollowing() {
		return "follow/followingUserView";
	}

}
