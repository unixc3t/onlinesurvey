package alex.util;

import javax.servlet.ServletContext;

/**
 * @author Liuzhilong<alexmaven@icloud.com>
 * @version 2014年7月15日
 */
public class MyUtils {
	private ServletContext sc;

	public String getPath(String path) {
		return sc.getRealPath(path);
	}
}
