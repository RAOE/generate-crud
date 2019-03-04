package com.Generator.utils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.Generator.main.Main;

/**
 * 对数据进行统一处理工具类
 * 
 * @author 徐塬峰
 * @date: 2019年3月1日 上午11:13:57
 * @version V1.0
 */
public class DataUtils {
	/**
	 * 返回数据库中所有表名
	 * 
	 * @param list
	 * @param key
	 * @return
	 */
	public static List<String> getValue(List<Map<String, String>> list, String key) {
		// 从该数据集中返回tableName表名
		List<String> tableList = new ArrayList<String>();
		for (Map<String, String> map : list) {
			String tableName = map.get(key);
			if (!CommonUtils.isEmpty(tableName)) {
				tableList.add(tableName);
			}
		}
		return tableList;
	}

	/**
	 * 将类名添加.JAVA后缀
	 * 
	 * @param modelList
	 * @return
	 */
	public static List<String> dealClassName(List<String> modelList) {
		List<String> list = new ArrayList<String>();
		for (String str : modelList) {
			list.add(new StringBuffer(str).append(".java").toString());
		}
		return list;
	}

	/**
	 * 
	 * @param modelList
	 * @return
	 */
	public static List<String> dealServiceClassName(List<String> modelList) {
		List<String> list = new ArrayList<String>();
		for (String str : modelList) {
			list.add(new StringBuffer(str).append("Service").toString());
		}
		return list;
	}

	/**
	 * 返回数据库中获取的所有列名 map集合
	 * 
	 * @param string
	 * @return
	 */
	public static Map<String, String> getColumnMap(String string) {
		// 查詢数据库中的所有列明并且添加到Map集合中
		Map<String, String> columnMap = new HashMap<String, String>();
		ResultSet rs = null;
		try {
			rs = JDBCUtils.executeQuery("select * from " + string);
			ResultSetMetaData metaData = rs.getMetaData();
			int numberOfColumns = metaData.getColumnCount();// 获取有多少列
			for (int i = 0; i < numberOfColumns; i++) {
				String columnName = dealColumnName(metaData, i);
				columnMap.put(columnName, columnName);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("数据库查询异常");
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return columnMap;
	}

	/**
	 * 处理sql返回结果的列名
	 * 
	 * @param rsmd
	 * @param i
	 * @return
	 */
	private static String dealColumnName(ResultSetMetaData rsmd, int i) {
		String columnName = null;
		try {
			columnName = rsmd.getColumnName(i + 1).toLowerCase();
			String charAfterLine = String.valueOf(columnName.charAt((columnName.indexOf("_") + 1)));
			String convertedChar = charAfterLine.toUpperCase();
			columnName = columnName.replace("_" + charAfterLine, convertedChar);
			return columnName;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return columnName;
	}

	/**
	 * 从集合中取出map里的key
	 * 
	 * @param key
	 * @return
	 */
	public static String getValue(String key) {
		String value = null;
		for (Map<String, String> map : Main.list) {
			value = map.get(key);
			if (value != null) {
				return value;
			}
		}
		return null;
	}
}
