 generate-crud
Generate-crud is a plug-in that automatically generates pojo, service, and controller layers to avoid repetitive development. It can be used to generate project deployments (based on springboot development) through database tables and personalized configuration.
<p>Idea:Dao begets One, One begets Two, Two begets Three, Three begets all things</p>
<H1>How to use it ?</H1>
<H2>STEP 1</H2>
<H3>Environment</H3>
<p>lib/generate-crud.jar</p>
<p>lib/mysql-connector-java-5.0.8-bin.jar</p>
<p>lib/generatorCRUD.xml</p>
<p>you can get it by <a href="/lib">click here</a></p>
<H2>STEP 1</H2>
<p> Create a springboot project to import web packages ,then Import the required jar package and place the generate-crud.xml file in the java/resources/template/directory</p>
<H2>STEP 2</H2>
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

<H2>STEP 3</H2>
<P>   maven install  </P>
<H2>STEP 4</H2>
<p> Write startup code  and run it ~!</p>

	public static void main(String[] args) {
		Main.init();
		Main.generate();
	}

