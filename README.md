
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
		
3. jsp

4. servlet

5. SpringLoaded