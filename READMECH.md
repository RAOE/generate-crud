 <p>生成CRUD代码-插件
     
generate-Crud是一个插件，可以自动生成实体层、服务层和控制器层，映射层，以避免重复开发。它可以通过数据库表和个性化配置生成项目部署（基于SpringBoot开发）。</p>
<H1>怎么去使用 ?</H1>
<a href="README.md"<H2>英文文档</H2></a>
<H2>步骤 1</H2>
<H3>必备环境</H3>
<p>lib/generate.jar</p>
<p>lib/mysql-connector-java-5.0.8-bin.jar</p>
<p>lib/generatorCRUD.xml</p>
<p>从这里可以获得 <a href="/lib">点击这里</a></p>
<H2>步骤1</H2>
<p> 
 首先按照往常那样创建springboot项目，并且整合mybatis springmvc ,整合完毕后
 导入相关的jar包 generate.jar  mysql-connector-java-5.0.8-bin.jar 到项目中，将generateCRUD.xml
 拷贝到src/java/resource 目录下，将template模板引擎拷贝到src/java/resource目录下。最后
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

