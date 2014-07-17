package alex.service;

import java.util.List;

import alex.pojo.User;

/**
 * @author liuzhilong<alexmaven@icloud.com>
 */
public interface AccountService {
	//用户登录
	public boolean login(User user);
	//通过用户对象获取用户
	public User SelUserByUser(User user);
	//通过用户ID查找用户
	public User SelUserById(int id);
	//通过用户名查找用户集合
	public List<User> SelUserByName(String name);
	//插入用户
	public void InsUserByUser(User user);
}
