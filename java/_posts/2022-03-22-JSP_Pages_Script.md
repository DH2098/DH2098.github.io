---
layout: post
title: (Java) JSP 페이지_2
description: >
  JSP 페이지의 구성요소 중 Script에 대하여
sitemap: false
hide_last_modified: true
excerpt:   JSP 페이지의 구성요소 중 Script에 대하여

categories: Java
tags: [Java, jsp, Script]

toc: true
toc_sticky: true
date: 2022-03-22
---
- Table of Contents
{:toc .large-only}

## 목표
&nbsp;&nbsp;JSP 페이지의 구성요소인 Script를 이해한다.

## Script
&nbsp;&nbsp;Script의 구성 요소를 간단하게 표현하면 다음과 같다<br>
    
|요소|형식|목적|
|:--:|:--:|:--:|
|선언문(Declaration)|<%! %>|전역 변수 선언 및 메소드 선언|
|스크립트릿(Scriptlet)|<% %>|프로그래밍 코드 기술|
|표현식(Expression)|<%=%>|화면에 출력할 내용 기술|
  

#### 선언문
  &nbsp;&nbsp;선언문은 JSP 페이지 내에서 멤버 변수나 메소드가 필요할 때 선언해서 쓰기 위한 요소이다.
  &nbsp;&nbsp;스크립트릿과 기능이 유사하나 선언의 위치가 다르다는 점이 차이점이다.
 > 선언 변수  : 전역 변수<br>
  스크립트릿 : 지역 변수

  **선언문의 문법**
  ```
  <%! 문장%>
  ```
  - ###### 선언문의 변수 선언
      &nbsp;&nbsp;선언문에서 선언된 변수는 JSP 페이지가 서블릿으로 변환될 때 서블릿의 멤버 변수가 된다.
      ```
      <%! 
        private String name="BDH";
        private int year=2014;
      %>
      ```
     &nbsp;&nbsp;위에서 선언한 변수인 name과 year는 모두 멤버 변수이고, 이 변수를 참조하는 스크립트릿 요소보다 서언문에서 선언한 변수가 뒤에 있다고 해도 이 두 변수를 참조할 수 있다.<br>
     <img width="761" alt="Script1" src="https://user-images.githubusercontent.com/100886309/159276590-c65ba950-0111-4ba3-b6c3-4dbce04b0495.PNG">

     script 예제
     {:.figcaption}

     <img width="963" alt="Script2" src="https://user-images.githubusercontent.com/100886309/159276717-2abdbf02-57d4-42e7-b8a6-61415bd1ecfd.PNG">

     출력 화면
     {:.figcaption}
  - ###### 선언문의 메소드 선언
     &nbsp;&nbsp; 선언문에서 선언된 메소드는 JSP 페이지 내에서 별도로 정의된 메소드로 사용된다. **(_jspService()메소드와 동등하게 사용된다.)**<br>
     
     <img width="757" alt="Script3" src="https://user-images.githubusercontent.com/100886309/159385150-0458b333-8e3b-4b8b-af5a-67afc24ef1e3.PNG">

     선언문 메소드 예제
     {:.figcaption}
     
     <img width="1262" alt="Script4" src="https://user-images.githubusercontent.com/100886309/159385176-2a5c148f-ce30-404e-bc29-a2a0fbc426c6.PNG">
     
     출력 결과
     {:.figcaption}

     &nbsp;&nbsp;getId() 메소드는 멤버 변수 id 값을 반환하는 메소드인데 이때 id 변수는 선언문에서 선언된 멤버 변수로 getId() 메소드에서 접근 가능하다. <br>


#### 스크립트릿
  &nbsp;&nbsp;JSP 페이지에서 가장 많이 쓰이는 스크립트 요소이다. 스크립트릿은 JSP 페이지가 서블릿으로 변환되고 이 페이지가 호출될 때 기본 메소드인 _jspService() 메소드에 선언되고 여기서 선언된 변수는 지역변수로 선언된다.<br>
  &nbsp;&nbsp;**JSP 페이지에서는 지역변수를 많이 사용하고, 멤버 변수는 거의 사용되지 않는다.**
  ```
  <% 문장 %>
  ```
  - ###### 스크립트릿 예제
      <img width="725" alt="Script5" src="https://user-images.githubusercontent.com/100886309/159387567-be01b7e2-9ce6-4ae7-b40d-5070bd5a7f88.PNG">
     
     스크립트릿 로직 사용 예제
     {:.figcaption}

     <img width="1271" alt="Script6" src="https://user-images.githubusercontent.com/100886309/159387615-cfda782c-b45a-479b-80c0-37bfcf87080c.PNG">
     
     출력 결과
     {:.figcaption}

     ```
     <% 
        if(){
     %>
     <%
        }else{
     %>
     <%
        }
     %>
     ```
     &nbsp;&nbsp;제어문 식이 약간 복잡해보여서 직관적으로 이해하기 쉽게 바꿔놨다.

#### 표현식
  &nbsp;&nbsp; 웹 브라우저로 출력하기 위해 사용한다. **(화면에 내용을 출력하기 위해 사용한다)**<br>
  &nbsp;&nbsp; 변수의 값이나 메소드의 결과값도 출력할 수 있는데 스크립트릿 안에는 사용할 수 없다. **(스크립트릿 내에서 출력할 부분은 `out` 내장 객체의 `print()` or `printout()` 사용)** <br>
  &nbsp;&nbsp; + HTML 태그도 스크립트릿 안에 사용 불가<BR>
  ```
  <%=문장%>
  ```
  - ###### 표현식 예제
  <img width="717" alt="Script7" src="https://user-images.githubusercontent.com/100886309/159390129-f6aa9b12-164b-42af-a90d-991bde701cf7.PNG">
  
  표현식 예제
  {:.figcaption}

  <img width="1267" alt="Script8" src="https://user-images.githubusercontent.com/100886309/159390235-8f280095-b7e5-48f4-b227-d43b3e0abe5e.PNG">

  출력 결과
  {:.figcaption}  
    
	<tr> : table row, 테이블의 행을 설정한다.
	<th> : table head, 열의 제목을 설정한다.
	<td> : table data, 테이블 내의 셀에 값을 입력한다. 

## 배운 것
&nbsp;&nbsp; JSP 페이지의 구성요소 중 하나인 Script의 선언문, 스트립트릿, 표현식에 대해서 공부했다. 원래는 주석도 같이 하려고 했으나 워낙 쉽기도 하고 이미 알고 있기도 하고 ~~귀찮기도 하고~~ 해서 주석은 생략했다.

## 느낀 점
&nbsp;&nbsp; 마무리할 때 느낀 건데 출력문의 상태가 좋지 않다. 나름 웹페이지 전체적으로 이렇게 나타난다,라는 것을 기록하고자 화면 전체를 캡처했는데 가독성이 매우 떨어진다. 다음부터는 그냥 출력된 페이지의 내용만 캡처해야겠다.

## 참고
[지구별에님 블로그](https://aboooks.tistory.com/59)
김은옥, 『JSP 2.3 웹 프로그래밍』, (주)삼양 미디어, 106-123p 