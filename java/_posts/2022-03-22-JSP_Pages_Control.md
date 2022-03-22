---
layout: post
title: (Java) JSP 페이지_3
description: >
  JSP 페이지의 구성요소 중 제어문에 대하여
sitemap: false
hide_last_modified: true
excerpt:   JSP 페이지의 구성요소 중 제어문에 대하여

categories: Java
tags: [Java, jsp, Control]

toc: true
toc_sticky: true
date: 2022-03-22
---
- Table of Contents
{:toc .large-only}

## 목표
&nbsp;&nbsp;JSP에서 제어문(if,for,while,switch)이 어떻게 사용되는지 방법을 익히고 간단하게 예제를 만들어 사용법을 익힌다.

## 조건 비교 분기문
 - #### if문
  &nbsp;&nbsp;if 문에 대해서는 이미 알고 있지만 간단하게 말하면 if문의 조건에는 리턴 타입or 결과값이 boolean값일 때만 가능하고 if, if-else, 블록 if (else if가 사용되는)문으로 구성되어 있다.
  ``` 
  자바에서는 보통 이렇게 사용된다. 
  if (조건) {
      
  } else if(조건){

  } else {

  }
  ```  
  &nbsp;&nbsp;이 내용을 어떻게 jsp에 적용시키느냐가 더 중요한 문제인 것 같으니 빠르게 넘어가야겠다.
 - ###### if 사용 예제 + 시행착오
  <img width="718" alt="control1" src="https://user-images.githubusercontent.com/100886309/159403627-7352679a-b834-4c68-9759-f8691a276346.PNG">
     
 폼 생성
 {:.figcaption}
     
  &nbsp;&nbsp;일단 if 결과값을 보여줄 폼을 생성하고, 출력을 해보았다.<br>
  &nbsp;&nbsp;jsp파일명 첫 글자가 대문자인 게 많이 거슬리는데 굳이 바꿀 필요는 없을 것 같아서 일단은 놔뒀다. ~~(사실은 귀찮았다)~~ <br>
  &nbsp;&nbsp;camelCase를 준수합시다!<br>
  &nbsp;&nbsp;차치하고, 실행한 결과는<br>

  <img width="247" alt="control2" src="https://user-images.githubusercontent.com/100886309/159403892-4898e6b4-4eec-4c14-9d2a-e836c63233b6.PNG">

  출력 결과
  {:.figcaption}

  &nbsp;&nbsp;? <br>뭔가 이상하다. 뭐가 잘못된 건가 싶어서 폼을 다시 살펴본 결과
  
  <img width="718" alt="control3" src="https://user-images.githubusercontent.com/100886309/159404036-4dfcb9be-4d62-4177-a8b4-02f2f0305e60.PNG">

  오류 원인
  {:.figcaption}
  
  &nbsp;&nbsp;자동생성이 됐었던 건지 어쨌는지 `</select>`가 저 자리에 있었다. 그래서 아래의 코드들이 작동을 안 했던 것이었다.<br>
  &nbsp;&nbsp;(아래 코드들이 노란색으로 밑줄이 쳐져있는 것을 보고 원인을 확인했다.)

  <img width="724" alt="control4" src="https://user-images.githubusercontent.com/100886309/159404334-75e90bc7-8f13-40ad-9015-1a53ffd381f4.PNG">
  <img width="249" alt="control5" src="https://user-images.githubusercontent.com/100886309/159404342-82e720df-54d4-462c-92a5-bd1c6b26385b.PNG">
  
  수정 후 출력
  {:.figcaption}

  &nbsp;&nbsp;그래서 `</select>`를 제거하고 다시 출력해본 결과 원하는 대로 폼이 생성되었다.<br>
    
  &nbsp;&nbsp; 이제 확인 버튼을 눌렀을 때 정보들이 전송될 페이지를 만들려고 한다.<br>

  <img width="746" alt="control6" src="https://user-images.githubusercontent.com/100886309/159404673-d1178adf-9dc8-465b-ae2e-9e38c3bdbc36.PNG">

  정보를 전송할 페이지 생성
  {:.figcaption}

  &nbsp;&nbsp;정보를 전송할 페이지를 생성했다. 그리고 이제 이것을 실행해본 결과 <br>

  <img width="588" alt="control7" src="https://user-images.githubusercontent.com/100886309/159404808-ff462faa-63cf-453e-8b91-7cace2c179a5.PNG">
  
  난리가 났다
  {:.figcaption}

  &nbsp;&nbsp;아찔하다. 한글들만 모조리 깨진 것으로 보아 인코딩 문자에 문제가 있는 것으로 판단하여 확인해본 결과 <br>

  <img width="547" alt="control8" src="https://user-images.githubusercontent.com/100886309/159405058-fc105fa6-c5f3-47d2-a6be-15006d4ff4b2.PNG">

  오류의 원인
  {:.figcaption}

  &nbsp;&nbsp;아니나다를까 인코딩이 문제였다. 서둘러서 utf-8로 변경한 뒤에 다시 실행해본 결과 <br>

  <img width="516" alt="control9" src="https://user-images.githubusercontent.com/100886309/159405230-5ac696c3-69fc-48c6-b69f-5f5c2c94a9a8.PNG">

  &nbsp;&nbsp;글자가 깨지는 문제는 해결했지만 또 다른 오류가 발생했다.<br>
  &nbsp;&nbsp;高... 행 17? 저기서 뭐가 문제라는 거지? NullPointerException? 이건 갑자기 왜 여기서 나와? 등등 원인을 찾기 위해 곰곰히 생각을 해본 결과 원인을 도출했다.
  >**애초에 실행이 안되는 파일이었다.**

  &nbsp;&nbsp;이 jsp 파일은 폼을 통해 정보를 전달하기 위한 파일이기 때문에 독자적으로 실행이 되지 않는 것이었다.<br>
  &nbsp;&nbsp;참... 갈 길이 멀다.<br><br>
  &nbsp;&nbsp;아무튼 모든 문제가 다 해결이 되었으니 실행해서 결과를 얻어보자 싶어서 값을 입력하고 확인을 눌러보았는데<br>

  <img width="252" alt="control10" src="https://user-images.githubusercontent.com/100886309/159405796-1d768091-d77c-436a-b6f8-e5ffc5cf960d.PNG">

  &nbsp;&nbsp;확인을 아무리 눌러도 페이지가 변경이 되지 않았다!<br>
  &nbsp;&nbsp;ㅋㅋ <br>
  &nbsp;&nbsp;다시 원인을 찾기 위해 꼼꼼하게 살펴봤는데 놀랍게도 수십분동안 찾아내지 못했다.<br>
  &nbsp;&nbsp;그러던 중 마침내 원인을 찾게 되는데<br>
  <img width="724" alt="control11" src="https://user-images.githubusercontent.com/100886309/159405977-586cac13-3d3c-4d3b-a873-f26f18a93d57.PNG">

  &nbsp;&nbsp;그렇다. 같은 실수를 반복한 것이었다. 이번에도 마찬가지로 위의 `</form>`을 제거하고 다시 폼을 실행해본 결과<br>

  <img width="246" alt="control12" src="https://user-images.githubusercontent.com/100886309/159406164-16a26f5a-a0ec-47e0-bfc5-9c4f821b815b.PNG">
  
  &nbsp;&nbsp;마침내 결과를 도출해내는데 성공했다. 정말 우당탕탕 그 자체였다.<br>

## 조건 비교 반복문
 - #### for문
     &nbsp;&nbsp;for문도 if문과 마찬가지로 개념을 배우는 것이 아니라 이것을 어떻게 jsp파일에서 실행시키는지를 알고 싶기 때문에 빠르게 정리를 하고 넘어가야겠다.
     ```
     for(초기값;조건문;증감값){
        수행할 문장
     }
     ```
     &nbsp;&nbsp;이런 식으로 구성된다. 보편적으로는<br>
     ```
     for(i=0;i<list.size();i++){
         수행할 문장
     } 
     ```
     &nbsp;&nbsp;이런 식으로 자주 사용된다. 사용할 방법이야 무궁무진하겠지만 아직까지는 이런 형식으로만 사용해왔기 때문에 다른 방법들에 대해서는 잘 모르겠다.<br>
 - #### while문
     &nbsp;&nbsp;어쩌다보니 개념들에 대한 정리를 하고 있다. 간단하게 말해서 같은 반복문이지만 for 대신 while을 사용하는 경우는 몇 번을 반복해야할 지 알 수 없을 때 주로 while을 사용한다고 알고 있으면 될 것 같다. (물론 다른 이유도 많지만 지금은 다루지 않으려고 한다.~~(글이 점점 길어지기 때문이다)~~)
     ```
     while(count<=10){
         k+=count;
         count++;
     }
     ```
     이런 식으로 사용된다.
     - ###### while 사용 예제
      &nbsp;&nbsp;while문도 if문과 마찬가지로 예제를 만들어본다면

      <img width="724" alt="while1" src="https://user-images.githubusercontent.com/100886309/159414448-6dc8552b-538e-4f54-8873-8049b7c0bac3.PNG">  
        

      <img width="413" alt="while2" src="https://user-images.githubusercontent.com/100886309/159414453-e609b11c-514f-4018-a5ad-88b2270ac611.PNG">
       
      <img width="727" alt="while3" src="https://user-images.githubusercontent.com/100886309/159415902-ca0ac831-caa6-4555-ae00-5b991bcca96d.PNG">  
        
      <img width="410" alt="while4" src="https://user-images.githubusercontent.com/100886309/159415904-6d145f01-6c62-415b-94a0-376456cd405d.PNG">  

      <img width="55" alt="while5" src="https://user-images.githubusercontent.com/100886309/159415905-f81f9eea-e39d-4fb6-94f8-7410574f500c.PNG">
        
      &nbsp;&nbsp;문제없이 잘 생성이 된다. (한 번 시행착오를 거쳤다고 이제 동일한 형태의 오류는 금방 처리가 된다.)
    
    ## 배운 것
    &nbsp;&nbsp;JSP에서 제어문을 사용하는 방법과  특정한 기능을 하는 폼을 생성하고 버튼을 클릭하면 결과값을 출력함과 동시에 다른 페이지로 이동을 하도록 하는 방법을 익혔다.

    ## 느낀 점
    &nbsp;&nbsp;이번에는 중간에 한 번 실수를 해서 조금 오래 걸렸다. 그런데 그게 참 사소한 실수였기 때문에 오히려 더 찾기가 힘들었다. 앞으로는 급하게 하지 않고 다소 느리더라도 차근차근 진행하는 게 오히려 장기적으로 좋을 것 같다.
    &nbsp;&nbsp;또, 단어 하나의 실수로 코드 전체가 제 기능을 못하게 되는 현상을 직접 겪어보니 지금에야 괜찮지만 나중에 가서 수십, 수백줄 코드를 작성했을 때 이런 일이 또 발생할 거라고 생각하면 생각만해도 아찔하다...
    &nbsp;&nbsp;역시 꾸준한 연습만이 답이다.