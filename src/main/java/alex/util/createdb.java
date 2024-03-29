package alex.util;

import javax.sql.DataSource;

import org.nutz.dao.Dao;
import org.nutz.dao.impl.NutDao;
import org.nutz.ioc.Ioc;
import org.nutz.ioc.impl.NutIoc;
import org.nutz.ioc.loader.json.JsonLoader;

import alex.pojo.Cwhyh;
import alex.pojo.Ptyh;

/**
 * @author Liuzhilong<alexmaven@icloud.com>
 * @version 2014年7月14日
 * 生成数据库的时候要修改普通用户的留言部分字段为text！
 */
public class createdb {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Ioc ioc = new NutIoc(new JsonLoader("nutz.js"));
		DataSource ds = ioc.get(DataSource.class);
		Dao dao = new NutDao(ds);
		dao.create(Ptyh.class, false);
		dao.create(Cwhyh.class, false);
	}
}