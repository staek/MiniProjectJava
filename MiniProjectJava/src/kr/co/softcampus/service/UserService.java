package kr.co.softcampus.service;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.softcampus.beans.UserBean;
import kr.co.softcampus.dao.UserDao;

@Service
public class UserService {

	@Autowired
	private UserDao userDao;
	
	public boolean checkuserIdExist(String user_id) {
		
		String user_name = userDao.checkUserIdExist(user_id);
		
		System.out.println("user_name:"+user_name);
		
		if(user_name == null) {
			System.out.println("user_name null");
			return true;
 		} else {
 			System.out.println("user_name not null");
 			return false;
 		}
	}
	
	public void addUserInfo(UserBean joinUserBean) {
		System.out.println("UserService addUserInfo");
		userDao.addUserInfo(joinUserBean);
	}
}
