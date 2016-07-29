	
	1. Spring Start Project 생성
		
		-Name : MosaicWeb
		-Type : Gradle
		-Packaging: War
		-Group : com.hybrid
		-Artifact : MosaicWeb
		-Package : com.hybrid
		
		-Dependencies 선택 : Web
		
		
	2. 형상관리
		
		- Remote Repository 생성 (github.com)
		- Local Repository 생성
			- >> git status
			- >> git log
			- >> dir /A > .gitignore
			- >> notepad .gitignore 편집
			- >> git init
			- >> git add *
			- >> git commit -m "first commit"
		
		- Local ==> Remote push (최초 동기화)
			- >> git remote -v
			- >> git remote remove origin (삭제)
			- >> git remote add origin https://github.com/anyun00/MosaicWeb.git
			- >> git push -u origin master (최초 한번만)
		
		- 개발자 2가 clone 수행
			- >> git clone https://github.com/anyun00/MosaicWeb.git
			- >> git clone https://github.com/anyun00/MosaicWeb.git MosaicWebDev
			- >> Eclipse Gradle Import
			
	3. HTML 설정
		
		- 설정 불필요 (Dependencies 선택 : Web 했다면 불필요)
		- mkdir sec/main/webapp 폴더설정
		- notepad src/main/webapp/Hello.html
		- gradle bootRun
		- FireFox ==> http://localhost:8080/Hello.html
		
	4. JSP 설정
		
		- mvnrepository.com >> search : tomcat jasper
		providedRuntime group: 'org.apache.tomcat.embed', name: 'tomcat-embed-jasper', version: '8.5.4'
		
		- build.gradle dependencies : 
			compile group: 'org.apache.tomcat.embed', name: 'tomcat-embed-jasper', version: '8.5.4' 
		- Eclipse -> Gradle Refresh
		- notepad src/main/webapp/Hello.jsp
		- gradle bootRun
		- FireFox ==> http://localhost:8080/Hello.jsp
		
	5. Servlet 설정
		
		- Project facets 추가
			- >> Dynamic Web module 3.1
			- >> Java 1.8
			- >> JavaScript 1.0
			
		- MosaicWebApplication.java << @ServletComponentScan 추가
		- com.hybrid.servlet.HelloServlet.java 생성
		- gradle bootRun
		- FireFox ==> http://localhost:8080/HelloServlet
		
	6. SpringLoaded 설정 (리로드 기능)
		
		- mvnrepository.com >> search : springloaded
		- build.gradle 에 설정 (두곳)
			dependencies {
				classpath("org.springframework:springloaded:1.2.6.RELEASE")
			}
			dependencies {
			
			compile group: 'org.springframework', name: 'springloaded', version: '1.2.6.RELEASE'
			}
		
		-Eclipse Output Directory 변경
			bin ==> build/classes/main
	
	7. Mybatis 설정
	
		- mvnrepository.com >> search : Mybatis Spring Boot Starter
		- build.gradle 에 Dependency 설정
		
		-application.properies
			- >> spring.datasource.driver-class-name=oracle.jdbc.OracleDriver
			- >> spring.datasource.url=jdbc:oracle:thin:@52.78.56.3:1521:orcl
			- >> spring.datasource.username=scott
			- >> spring.datasource.password=tiger
		- <dependency>
			    compile group: 'org.mybatis.spring.boot', name:'mybatis-spring-boot-starter', version: '1.1.1'
			    compile files('src/main/webapp/WEB-INF/lib/ojdbc7.jar')
		  </dependency>
		- Eclipse Gradle -> Refresh 수행
		- gradle bootRun
		- notepad src/main/java/com/hybrid/mapper/DeptMapper.java (interface 생성)
		- notepad src/main/java/com/hybrid/dao/DeptDao.java (class 생성)
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	 