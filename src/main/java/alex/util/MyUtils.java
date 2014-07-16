package alex.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;

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
	
	public void copyFile(String oldPath, String newPath) {
		try {
			int byteread = 0;
			File oldfile = new File(oldPath);
			if (oldfile.exists()) { // 文件存在时
				InputStream inStream = new FileInputStream(oldPath); // 读入原文件
				FileOutputStream fs = new FileOutputStream(newPath);
				byte[] buffer = new byte[10000];
				while ((byteread = inStream.read(buffer)) != -1) {
					fs.write(buffer, 0, byteread);
				}
				inStream.close();
				fs.close();
			}
		} catch (Exception e) {
			System.out.println("复制单个文件操作出错");
			e.printStackTrace();
		}
	}
}
