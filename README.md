 <p>生成CRUD代码-插件
     
generate-Crud是一个插件，可以自动生成实体层、服务层和控制器层，映射层，以避免重复开发。它可以通过数据库表和个性化配置生成项目部署（基于SpringBoot开发）。</p>
<H1>如何使用它 ?</H1>
<a href="./READMECH.md"<H2>英文文档</H2></a>
<H2>步骤 1</H2>
<H3>必备环境</H3>
<p>lib/generate.jar</p>
<p>lib/mysql-connector-java-5.0.8-bin.jar</p>
<p>lib/generatorCRUD.xml</p>
<p>从这里可以获得 <a href="/lib">点击这里</a></p>
<H2>步骤1</H2>
<p> 
 首先按照往常那样创建springboot项目，并且整合mybatis springmvc ,整合完毕后
 导入相关的jar包 generate.jar(必备)  mysql-connector-java-5.0.8-bin.jar（数据库驱动包）到项目中， </p>
<p>将generateCRUD.xml
 拷贝到src/java/resource 目录下，
 将template模板引擎拷贝到src/java/resource目录下。最后
 根据generateCRUD 介绍配置为自己所需要的配置!</p>
<H2>步骤 2</H2>
导入相关的maven依赖
pom.xml

         <dependency>
    			<groupId>org.freemarker</groupId>
    			<artifactId>freemarker</artifactId>
    			<version>2.3.20</version>
    		</dependency>
    		<dependency>
    			<groupId>commons-dbcp</groupId>
    			<artifactId>commons-dbcp</artifactId>
    			<version>1.4</version>
    		</dependency>
    		<dependency>
    			<groupId>dom4j</groupId>
    			<artifactId>dom4j</artifactId>
    			<version>1.6.1</version>
    		</dependency>
    		<dependency>
    			<groupId>junit</groupId>
    			<artifactId>junit</artifactId>
    			<version>4.11</version>
    		</dependency>
    		<dependency>
    			<groupId>jaxen</groupId>
    			<artifactId>jaxen</artifactId>
    			<version>1.1.6</version>
    		</dependency>

<H2>步骤 3</H2>
<P>   maven install 安装相应的依赖环境 </P>
<H2>步骤 4</H2>
<p> 编写启动代码，开始创建crud 代码以及相关的service层、serviceImp层、controller层、model层
mapper层!</p>

	public static void main(String[] args) {
		Main.init();
		Main.generate();
	}
<H2>关于generateCRUD.xml文件介绍</H2>
<?xml version="1.0" encoding="UTF-8"?>

    <!-- 自动生成crud代码 -->
    <generatorConfiguration>
    	<!--指定数据库的链接的账号密码 同时需要JDBC包 -->
    	<classPath>
    		<classPathEntry>G:/mysqlconnector/mysql-connector-java-5.0.8-bin.jar
    		</classPathEntry>
    	</classPath>
    	<jdbcConfiguration>
    		<!-- 需要指定驱动类型、链接地址、账号、密码 -->
    		<driverClassName>com.mysql.jdbc.Driver</driverClassName>
    		<url>jdbc:mysql://localhost/zhangshangzudb</url>
    		<username>root</username>
    		<password>root</password>
    	</jdbcConfiguration>
    	<!--定义各个层的包名  修改为你自己的包路径，如果是springboot项目则置入main方法的子包下 -->
    	<generatePath>
    		<model>com.Generator.model</model>
    		<service>com.Generator.service</service>
    		<serviceImp>com.Generator.serviceImp</serviceImp>
    	    <controller>com.Generator.controller</controller>
    		<mapper>com.Generator.mapper</mapper>
    	</generatePath>
    	<!-- 写做测试 -->
    	<table>
    		<!-- 指定table数据库的名称，根据table表来生产实体类 -->
    		<tableName>t_roles</tableName>
    		<!-- 实体类的名称 -->
    		<modelName>Roles</modelName>
    	</table>
    	<table>
    		<!-- 指定table数据库的名称，根据table表来生产实体类 -->
    		<tableName>t_users</tableName>
    		<!-- 实体类的名称 -->
    		<modelName>Users</modelName>
    	</table>
    	<table>
    		<!-- 指定table数据库的名称，根据table表来生产实体类 -->
    		<tableName>t_adminlogs</tableName>
    		<!-- 实体类的名称 -->
    		<modelName>AdminLogs</modelName>
    	</table>
    	<table>
    		<!-- 指定table数据库的名称，根据table表来生产实体类 -->
    		<tableName>t_cities</tableName>
    		<!-- 实体类的名称 -->
    		<modelName>Cities</modelName>
    	</table>
    	<table>
    		<!-- 指定table数据库的名称，根据table表来生产实体类 -->
    		<tableName>t_houses</tableName>
    		<!-- 实体类的名称 -->
    		<modelName>Houses</modelName>
    	</table>
    	<table>
    		<!-- 指定table数据库的名称，根据table表来生产实体类 -->
    		<tableName>t_permissions</tableName>
    		<!-- 实体类的名称 -->
    		<modelName>Permissions</modelName>
    	</table>
    </generatorConfiguration>
    
   <br/>
   <p> 您的支持就是我们选择继续开源下去的动力,如果觉得还不错的话 请为他star 谢谢~~!
    </p>

