---
layout: post
title: (Java) JSP 페이지_1
description: >
  JSP 페이지의 구성요소 중 Directive에 대하여
sitemap: false
hide_last_modified: true
excerpt:   JSP 페이지의 구성요소 중 Directive에 대하여

categories: Java
tags: [Java, jsp, Directive]

toc: true
toc_sticky: true
date: 2022-03-21
---
- Table of Contents
{:toc .large-only}

## 목표
&nbsp;&nbsp;JSP 페이지의 구성요소인 Directive를 이해한다.

## Directive
&nbsp;&nbsp;디렉티브(Directive)는 클라이언트가 요청한 JSP페이지가 실행될 때 필요한 정보를 지정하는 역할을 한다.**(필요한 정보를 JSP 컨테이너에 알려 요청을 어떻게 처리하는지을 지시하는 지시자이다.)** <br>
&nbsp;&nbsp;디렉티브는 태그 안에서 @로 시작하는데, page, include, taglib 등이 있다. 이 내용에 대해서 알아보고자 한다.<br>
#### page_<%@page%>
  &nbsp;&nbsp;JSP 페이지에 대한 속성은 page 디렉티브의 속성을 사용해서 정의한다. 즉, 서버에 요청한 결과를 응답받을 때 생성되는 페이지의 타입, 스크립트 언어, import할 클래스 등 JSP페이지에서 필요한 설정 정보를 지정한다.<br>
  &nbsp;&nbsp;page 디렉티브의 속성에 대한 요약은 다음과 같다.<br>
  
| attribute    | default                                                           | How to use                            | Explanation      |
|:-------------|:------------------------------------------------------------------|:-------------------------------------|:-----------------|
| info         | &nbsp;                                                            | info="text"                          | 문자열 지정&nbsp; |
| language     |"java"                                                             | language="java"                      | 사용할 언어 지정  |
|**contentType**  |"text/html:charset=ISO-8859-1|contentType=<br>"text/html:charset=utf-8"| 문서 타입 지정|
| extends      | &nbsp;                                                            | extends="system.MasterClass"         | 자신이 상속 받을 클래스 지정|
| **import**       | &nbsp;                                                            | import="java.util.*"                 | 다른 패키지의 속성을 import|
| session      | "true"                                                            | session="true"                       | HttpSession의 사용 여부를 지정|
| buffer       | "8kb"                                                             | Buffer="10kb"                        | 출력 버퍼의 크기 지정            |
| autoFlush    | "true"                                                            | autoFlush="false"                    | 출력 버퍼가 다 찰 경우 저장된 내용의 처리 설정|
| isTthreadSafe| "true"                                                            | isTthreadSafe="true"|현재 페이지의 멀티 쓰레드 허용 여부 지정            |
| errorPage    | &nbsp;                                                            | errorPage="error/fail.jsp"|에러 발생 시 에러를 처리할 페이지 지정|
| isErrorPage  | "false"                                                            | isErrorPage="false"|해당 페이지를 에러 페이지로 지정            |
| pageEncoding | "ISO-8859-1"                                                       | pageEncoding="utf-8"|해당 페이지의 문자 인코딩 지정             |
| isELIgnored  | JSP 버전 및 설정에 따라 상이                                        | isELIgnored="true"                   | 표현 언어(EL)에 대한 지원 여부 설정|
{:.scroll-table}
<br>

- ###### info 
  &nbsp;&nbsp;JSP 페이지를 설명하는 문자열이다. 내용이나 길이 제한이 없고, 굳이 설정하지 않아도 페이지의 처리에는 영향이 없다. 단순히 페이지의 제목을 붙이는 기능이다<br>
  ```
  <%@page info="Page Title" %>
  ```
- ###### language
  &nbsp;&nbsp;JSP 페이지에서 사용할 프로그래밍 언어를 지정한다. 생략 가능하고 default값으로 java가 저장된다.<br>
  ```
  <%page language="java" %>
  ```
- ###### contentType
  &nbsp;&nbsp;JSP 페이지의 내용이 어떤 타입의 문서로 생성되는지를 지정한다.사용자 요청에 대한 응답 결과가 어떤 형태로 출력되는지를 MIME Type (Multi-Purpose Internet Mail Extensions Type)으로 지정한다.*(text/html, text/plain, text/xml 등)*<br>
  &nbsp;&nbsp;예를 들면, text/html은 응답 결과를 html 문서 형식으로 생성해서 출력하겠다는 뜻이다.<br>
    ```
    <%@page contentType="text/html"%>
    ```

  &nbsp;&nbsp;또, contentType속성의 charset을 이용해 응답 결과를 보여줄 문자의 인코딩을 지정할 수 있다.<br>
  &nbsp;&nbsp;charset의 기본값은 ISO-8859-1(서유럽 언어)인데, 한글 문서를 생성할 때는 euc-kr을 사용할 수도 있지만 보편적으로 utf-8을 사용한다.<br>
  `<%page contentType="text/html;charset=UTF-8"%>`<br>
<img width="738" alt="java_pages1" src="https://user-images.githubusercontent.com/100886309/159213114-e14cec54-fbfc-4f09-a110-719d8a9f414d.PNG">

info, language, contentType를 사용한 Directive 예제
{:.figcaption}
<br>
<img width="1265" alt="java_pages2" src="https://user-images.githubusercontent.com/100886309/159213306-ae3c8f3c-9595-46f9-a805-b797121e442c.PNG">

출력 결과
{:.figcaption}
- ###### extends
  &nbsp;&nbsp;JSP 페이지가 상속받을 클래스를 지정한다. JSP 페이지가 서블릿으로 변환(파싱)되는 시점에서 상속받을 클래스를 지정할 때 사용한다.
  &nbsp;&nbsp;그런데 이러한 과정은 컨테이너가 알아서 진행하기 때문에 실제로는 거의 사용할 일이 없다.
  ```
  <% page extends="클래스 이름">
  ```
- ###### import
  &nbsp;&nbsp;JSP 페이지 내에서 다른 위치에 있는 클래스를 풀네임(패키지명을 포함하는 클래스명)으로 사용하지 않고 가져올 때 사용한다.<br>
  &nbsp;&nbsp;또, import는 page directive 중 **유일하게 중복 사용 가능하다.**
  ```
  <%@page import="java.util.*, java.sql.*"%>

  <%@ page import="java.io.*" %>
  ``` 
- ###### session
  &nbsp;&nbsp;JSP 페이지가 HttpSession을 사용할지 여부를 지정한다.<br>
  &nbsp;&nbsp;"true"일 경우 현재 JSP 페이지가 세션을 사용하는 것으로 유지하고, 존재하지 않을 경우는 새로운 세션을 생성하여 연결한다.<br>
  &nbsp;&nbsp;"false"일 경우는 사용하지 않는다.<br>
  &nbsp;&nbsp;default값은 "true"이다.<br.>
  ```
  <%@ page session="true"%>
  ```
- ###### buffer
  &nbsp;&nbsp;일단 buffer가 무엇인지 알아야 한다.<br>
  &nbsp;&nbsp;buffer란 데이터를 한 곳에서 다른 한 곳으로 전송하는 동안 일시적으로 그 데이터를 보관하는 메모리의 영역이다. 한 장치에서 다른 장치로 데이터를 보낼 때 발생하는 시간의 차이를 보완하기 위해 사용한다.<u>(buffer의 순화어인 '완충기'라는 뜻을 통해 기능을 유추해 볼 수 있다)</u><br>
  &nbsp;&nbsp;JSP 페이지에서의 buffer는 출력 버퍼의 크기를 지정한다.<br>
  &nbsp;&nbsp;default값은 "8kb"이고 "none"으로 지정하면 출력 버퍼를 사용하지 않는다.(~~버퍼가 없으면 좋은 거 아닌가? 왜 default값이 none이 아닌 8kb인지는 잘 모르겠다)~~<br>
  ```
  <%@ page buffer="8kb"%>
  <%@ page buffer="none"%>
  ```
- ###### autoFlush
  &nbsp;&nbsp;JSP페이지의 내용들이 웹 페이지에 출력되기 전 버퍼가 가득 찰 경우 저장된 내용을 어떻게 처리할 지 지정한다.
  &nbsp;&nbsp;autoFlush를 "true"로 지정하면 버퍼가 다 찼을 경우 자동적으로 버퍼의 내용이 웹 페이지에 출력된다.<br>
  ```
  <%@ page autoFlush="true"%>
  ```
- ###### isThreadSafe
  &nbsp;&nbsp;JSP 페이지에서 멀티 쓰레드를 사용할 수 있도록 지정한다.**(해당 JSP 페이지가 다수의 웹 브라우저의 접근을 허용할지 여부를 결정한다)** default값은 "true"이다.
  &nbsp;&nbsp;"false"를 지정하면 다수의 웹 브라우저의 접근을 거부하므로 순차적으로 처리하기 때문에 많은 시간이 걸린다. 그래서 거의 사용되지 않는다.~~(JSP의 장점이 멀티 쓰레드인데 이것을 false로 지정하는 것은 도대체 무슨 이유로 만든 것인지 잘 모르겠다)~~
  ```
  <%@ page isThreadSafe="false"%>
  ```
<img width="737" alt="java_pages3" src="https://user-images.githubusercontent.com/100886309/159218548-73b1ce46-bd89-4f31-9a1f-717067b05018.PNG">

session, buffer, autoFlush, isThreadSafe을 사용한 Directive 예제
{:.figcaption}

<img width="1270" alt="java_pages4" src="https://user-images.githubusercontent.com/100886309/159218777-34fc367d-f9ac-4786-99f5-40a38b4e3ed6.PNG">

출력 결과
{:.figcaption}
- ###### errorPage
&nbsp;&nbsp;JSP 페이지 처리 중 해당 페이지에서 예외가 발생할 경우 예외를 처리할 페이지를 지정한다.<br>
```
<%@ page errorPage="errorPro.jsp"%>
```
- ###### isErrorPage
&nbsp;&nbsp;JSP 페이지가 일반 페이지인지, 아니면 에러를 처리하기 위한 페이지인지를 지정한다. 현재 페이지가 발생한 예외를 처리하는 페이지이면 "true"로 지정한다. <br><br>
&nbsp;&nbsp;그런데 중요한 점은<br>
**errorPage와 isErrorPage는 JSP 2.0부터는 사용되지 않는다**<br>
이다. ~~(그래도 공부할 겸 그냥 적어봤다)~~
- ###### pageEncoding
&nbsp;&nbsp;JSP 페이지에서 사용할 문자의 인코딩을 지정한다.<br>
default값은 상기한 대로 ISO-8859-1를 사용하는데 한글을 처리하기 위해서 UTF-8을 사용한다.
```
<%@ page pageEncoding="UTF-8"%>
```
#### include_<%@include%>
&nbsp;&nbsp;JSP 페이지에서는 여러 페이지에서 공통적으로 사용되는 내용이 있을 때, 이러한 내용을 별도의 파일로 저장해두었다가 필요한 JSP 페이지 내에 삽입할 수 있는 기능을 제공하는데, 이 때 사용하는 기능이 include이다.
```
<%@ include file="포함될 파일 url%>
```
![jsp_include](https://user-images.githubusercontent.com/100886309/159219957-394010ec-abe8-46d8-b19b-735859a5a0c1.png)

include Directive 처리 과정
{:.figcaption}
<br>
include Directive는 주로 조각 코드 삽입에 사용되는데 일일이 적는 것보다 그림으로 남기는 것이 더 좋을 것 같다.<br>

<img width="762" alt="color_jspf" src="https://user-images.githubusercontent.com/100886309/159228671-8e7a89db-e82a-48cb-9049-3fd223b46e8d.PNG">

color.jspf라는 이름의 조각 코드를 가지는 페이지 생성
{:.figcaption}
<br>
&nbsp;&nbsp; 왜? jspf라고 이름을 지었냐? 라고 하면 jsp + fragment(조각)을 붙여서 확장자를 만들었다. 팀 단위로 프로젝트를 진행한다고 할 때 구분하기 쉽게 이렇게 이렇게 붙인다고 하는데 나는 취준생이라 정확히는 모르지만 일단 따라해봤다.<br>

<img width="763" alt="include_jspf" src="https://user-images.githubusercontent.com/100886309/159228861-30d81a6f-376d-4c8a-8f51-abf23a77f1d9.PNG">

조각 코드를 사용하는 JSP 페이지 생성
{:.figcaption}
```
placeholder
: 입력 도우미 역할
required
: 해당 폼 태그에 값을 입력하지 않으면 페이지가 이동되지 않고, 값을 입력하지 않았다는 메시지를 표시
```

<img width="690" alt="include_example" src="https://user-images.githubusercontent.com/100886309/159229628-90cea832-b17a-40cd-8547-4c436f30446b.PNG">

출력 결과
{:.figcaption}

이렇게 조각 코드를 사용하여 웹 페이지를 생성해보았다.<br>
#### taglib_<%@taglib%>
&nbsp;&nbsp;taglib 디렉티브는 표현 언어(EL:Expression Language), JSTL(JSP Standard Tag Library), 커스텀 태그(Custom Tag)를 JSP 페이지 내에서 사용할 때 사용한다.<br>
&nbsp;&nbsp;딱 느낌이 왔다. 이건 지금의 내가 감히 건들 수 있는 부분이 아니다. 지금은 깔끔하게 포기하고 JSP에 대해 더 익숙해진 다음에 공부해야겠다.<BR>

## 배운 것
&nbsp;&nbsp;JSP 페이지의 구성요소 중 디렉티브에 대해서 공부하고 그 내용을 토대로 간단하게 웹 페이지 생성하는 방법을 익혔다.<br>
&nbsp;&nbsp;또, 마크다운에서 표를 만드는 방법을 새롭게 터득했다.

## 느낀 점
&nbsp;&nbsp;확실히 게시물을 작성하면서 공부를 하는 것이 큰 도움이 되고 있다. 그냥 텍스트만 읽을 때는 '아, 이렇게 하면 되는구나 알겠다.' 하고 넘기기 일쑤였는데 한 글자 한 글자 직접 입력을 하면서 내용을 익히니까 같은 내용이 2번 3번 머리에 박히고 있다. ~~(아직도 마크다운을 활용한 게시물 작성에 익숙치 않기 때문에 같은 내용을 2번 3번씩 보고 있기 때문이다.)~~
&nbsp;&nbsp;또, 새삼스럽게 느끼는 건데 마크다운 정말 손 많이 간다. 중간에 표가 하나 있는데 만드는 도중 실수를 하나 해서 그걸 해결하느라고 쓸데없는 시간을 낭비했다. ~~(표 만들 때 |가 사용되는데 이걸 실수로 마지막에 하나 더 찍어서 표가 만들어지지 않는 현상이었다. 이게 얇아서... 찾기가 힘들었다.)~~
&nbsp;&nbsp;그래도 어쩌겠나... 이럴 거 다 감수하고 블로그 시작한 건데 열심히 해야지...

## 참고
[위키백과](https://ko.wikipedia.org/wiki/%EB%B2%84%ED%8D%BC_(%EC%BB%B4%ED%93%A8%ED%84%B0_%EA%B3%BC%ED%95%99))<br>
[더블에스님 블로그](https://doublesprogramming.tistory.com/64)<br>
김은옥, 『JSP 2.3 웹 프로그래밍』, (주)삼양 미디어, 83-105p 