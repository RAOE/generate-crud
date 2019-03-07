package test;

import java.sql.SQLException;

import org.junit.Test;

import com.Generator.main.Main;
import com.Generator.utils.JDBCUtils;

/**
 * 用于测试jdbc连接mysql
 * 
 * @author 徐塬峰
 * @date: 2019年2月28日 下午4:50:28
 * @version V1.0
 */
public class JDBCTEST {
	static {
		Main.init();// 初始化启动项目
	}

	/**
	 * 执行插入代码
	 */
	@Test
	public void insert() {
		try {
			JDBCUtils.executeInsert("insert into t_users (name,number) values(?,?)", "test", 123);
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

}
