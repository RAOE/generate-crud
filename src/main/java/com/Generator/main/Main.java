package com.Generator.main;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;
import com.Generator.utils.DataUtils;

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;

public class Main {

	public static List<Map<String, String>> list = new ArrayList<>();

	// 代码生成位置
	public static String targetProject = Main.class.getResource("/").getPath().replace("/target/classes/", "")
			+ "/src/main/java/";

	public static String modelPath = "com//model";// model包的生产路径
	public static String servicePath = "com//service";// service包的生产路径
	public static String controllerPath = "com//controller";// controller包的生产路径

	public static void main(String[] args) {
		Main.init();
		Main.generate();

	}

	/**
	 * 初始化扫描启动类 主要是从generatorCRUD获取相关的配置信息到map中
	 */
	public static void init() {
		URL url = Main.class.getClassLoader().getResource("generatorCRUD.xml");
		if (url == null) {
			throw new RuntimeException("当前路径没有generatorCRUD.xml这个文件");
		}
		File file = new File(url.getFile());
		if (file == null || !file.exists()) {
			throw new RuntimeException("当前路径没有generatorCRUD.xml这个文件");
		}
		// 拿到xml文件开始解析
		SAXReader reader = new SAXReader();
		Document document;
		try {
			document = reader.read(new FileInputStream(file));
			Element root = document.getRootElement();
			List<Element> elements = root.elements();
			// 遍历xml文件 将根目录下 每一个子目录置入map中
			for (Element e : elements) {
				// 如果当前节点不是尾节点 则继续遍历
				List<Element> elementsl = e.elements();
				for (Element el : elementsl) {
					Map<String, String> m = new HashMap<String, String>();
					m.put(el.getName(), el.getStringValue());
					list.add(m);
				}
			}
		} catch (FileNotFoundException | DocumentException e1) {
			throw new RuntimeException("当前路径没有generatorCRUD.xml这个文件");
		}
		System.out.println(list);

	}

	public static void generate() {
		List<String> tableList = DataUtils.getValue(list, "tableName");// 拿到数据库表名
		List<String> modelList = DataUtils.getValue(list, "modelName");// 拿到类名 与数据库名 一 一对应
		File dir = new File(targetProject);// 这里将路径定义为统一模板资源路径
		if (tableList.size() != modelList.size()) {
			throw new RuntimeException("检查你的配置文件 tableName 是否与modelName 一一对应");
		}
		Configuration cfg = new Configuration();
		try {
			cfg.setDefaultEncoding("utf-8");
			cfg.setDirectoryForTemplateLoading(new File("C://tmp"));
		} catch (IOException e) {
			e.printStackTrace();
		}
		Writer docout = null;
		generateModel(cfg, tableList, modelList, dir);// 创建model包与model类的代码
		generateService(cfg, modelList, dir);// 创建service包和service类的代码
		generateController(cfg, modelList, dir);// 创建controller包和controller类的代码
		System.out.println("-----code生成完成....-------");

	}

	private static void generateController(Configuration cfg, List<String> modelList, File dir) {
		Map<String, Object> rootMap = new HashMap<String, Object>();
		List<String> controllerNameList = DataUtils.dealClassNameByParam(modelList, "Controller");// 每一个model类增加后缀名
		Writer docout = null;
		try {
			for (int i = 0; i < modelList.size(); i++) {
				Template temp = cfg.getTemplate("ControllerTemplate.java");
				File documentFile = new File(dir + "//" + controllerPath);
				if (!documentFile.exists()) {
					documentFile.mkdir();
				}
				
				File docFile = new File(documentFile + "//" + controllerNameList.get(i));
				docout = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(docFile)));
				
				temp.process(rootMap, docout);
			}

		} catch (IOException e) {
			e.printStackTrace();
		} catch (TemplateException e) {
			e.printStackTrace();
		} finally {
			try {
				if (docout != null) {
					docout.flush();
					docout.close();
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	private static void generateService(Configuration cfg, List<String> modelList, File dir) {
		List<String> serviceNameList = DataUtils.dealClassNameByParam(modelList,"Service");// 每一个model类增加后缀名
		List<String> serviceListSuffix = DataUtils.dealClassName(serviceNameList);
		Map<String, Object> rootMap = new HashMap<String, Object>();
		Writer docout = null;
		try {
			for (int i = 0; i < modelList.size(); i++) {
				Template temp = cfg.getTemplate("ServiceTemplate.java");
				File documentFile = new File(dir + "//" + servicePath);
				if (!documentFile.exists()) {
					documentFile.mkdir();
				}
				File docFile = new File(documentFile + "//" + serviceListSuffix.get(i));
				rootMap.put("package", servicePath.replace("//", "."));
				rootMap.put("className", serviceNameList.get(i));
				rootMap.put("modelName", modelList.get(i));
				rootMap.put("modelPath", modelPath.replace("//", "."));
				docout = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(docFile)));
				temp.process(rootMap, docout);
			}

		} catch (IOException e) {
			e.printStackTrace();
		} catch (TemplateException e) {
			e.printStackTrace();
		} finally {
			try {
				if (docout != null) {
					docout.flush();
					docout.close();
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

	private static void generateModel(Configuration cfg, List<String> tableList, List<String> modelList, File dir) {
		List<String> modelListSuffix = DataUtils.dealClassName(modelList);// 每一个model类增加后缀名
		Map<String, Object> rootMap = new HashMap<String, Object>();
		Map<String, String> columnMap = new HashMap<String, String>();
		Writer docout = null;
		try {
			if (!dir.exists()) {
				dir.mkdirs();
			}
			for (int i = 0; i < modelList.size(); i++) {
				Template temp = cfg.getTemplate("ModelTemplate.java");
				File documentFile = new File(dir + "//" + modelPath);
				if (!documentFile.exists()) {
					documentFile.mkdir();
				}
				File docFile = new File(documentFile + "//" + modelListSuffix.get(i));
				columnMap = DataUtils.getColumnMap(tableList.get(i));
				rootMap.put("columnMap", columnMap);
				rootMap.put("className", modelList.get(i));
				rootMap.put("package", modelPath.replace("//", "."));
				docout = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(docFile)));
				temp.process(rootMap, docout);

			}
		} catch (IOException e) {
			e.printStackTrace();
			throw new RuntimeException("IO 异常");
		} catch (TemplateException e) {
			e.printStackTrace();
			throw new RuntimeException("模板 异常");
		} finally {
			try {
				if (docout != null) {
					docout.flush();
					docout.close();
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

}
