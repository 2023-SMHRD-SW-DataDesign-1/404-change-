# 🧶 수수한 사람들(팀명: 404)
![image](https://github.com/2023-SMHRD-SW-DataDesign-1/404-change-/assets/105475267/2072f8e2-2fe5-4b9c-a09e-df230e3d7bb4)


## 📋 서비스 소개
* 서비스명: SNS형 뜨개질 전문 쇼핑 플랫폼
* 서비스설명:
  - SNS 기능으로 인해 상품 홍보가 용이하고, 접근성이 높은 서비스를 구현하고자 함
  - 까다로운 심사절차 없이, 쉽고 빠르게 상품을 등록할 수 있음
  - 댓글과 좋아요, 실시간 채팅 등의 서비스를 제공하여 판매자와 구매자의 원활한 소통을 돕고자 함
<br>

## 🗓️ 프로젝트 기간
2023.06.09 ~ 2023.08.01 (7주)
<br>
<br>

## ✨ 주요 기능
<br>
<P>- 팔로우: 다른 사용자의 게시물을 볼 수 있습니다.</P>                           
<P>- 좋아요: 게시물에 대한 호감을 표시할 수 있습니다. </P>                            
<P>- 댓글: 게시물에 대한 의견을 남길 수 있습니다. </P>     
<P>- 피드 생성 및 출력: 사용자가 자신의 생각이나 사진 등을 게시할 수 있습니다. </P>    
<P>- 상품등록 및 출력: 사용자가 자신이 판매하고자 하는 상품을 등록할 수 있습니다.  </P>  
<P>- 실시간 채팅: 사용자간의 실시간 대화가 가능합니다.        </P>
<P>- 회원관리기능: 회원가입, 로그인, 회원정보수정, 회원탈퇴가 가능합니다. </P>
<P>- sns로그인 기능: 소셜 미디어 계정으로 로그인이 가능합니다. </P>
<P>- 결제API: 결제 처리가 가능합니다.    </P>
<P>- 장바구니 기능: 상품을 담아두었다가 일괄 결제가 가능합니다.   </P>

## ⛏️ 기술스택
<br>

## ⚙️ 시스템 아키텍처
<br>

## ✏️ 유스케이스
![image](https://github.com/2023-SMHRD-SW-DataDesign-1/404-change-/assets/134522874/95226750-63e2-44ac-9193-0dd155e1ad58)


## ✏️ 서비스 흐름도
<br>

## ✏️ ER 다이어그램
![er다이어그램](https://github.com/2023-SMHRD-SW-DataDesign-1/404-change-/assets/105475267/5d6c8d7f-e6d7-490c-8c81-499411820801)

<br>

## 🖥️ 화면구성
<br>

## 👑 팀원역할

<table>
  <tr>
    <td>이름</td>
    <td>김지홍</td>
    <td>김드보라</td>
    <td>이윤호</td>
    <td>진찬호</td>
  </tr>
    <tr>
    <td>계정링크</td>
    <td><a href="https://github.com/philosokey-M" target='_blank>github</a></td>
    <td><a href="https://github.com/DeboraKim1016" target='_blank>github</a></td>
    <td><a href="https://github.com/dldbsgh00005" target='_blank>github</a></td>
    <td><a href="https://github.com/???" target='_blank>github</a></td>
  </tr>
    <tr>
    <td>담당</td>
    <td> PM / Back-End </td>
    <td> Front-End </td>
    <td> Back-End </td>
    <td> DB / Front-End </td>
  </tr>
  <tr>
    <td>역할</td>
    <td> 팔로우 기능 구현 </td>
    <td> 전체화면설계 및 구현</td>
    <td> 회원관리기능 </td>
    <td> 크롤링 </td>
  </tr>
  <tr>
    <td>  </td>
    <td> 좋아요, 댓글 기능 구현</td>
    <td>   </td>
    <td> SNS로그인 기능 구현 </td>
    <td>  DB설계 및 구축 </td>
  </tr>
  <tr>
    <td>  </td>
    <td> 피드생성 및 출력</td>
    <td>   </td>
    <td> 결제 API </td>
    <td>  프론트 JS담당  </td>
  </tr>
  <tr>
    <td>  </td>
    <td> 상품등록 및 출력</td>
    <td>   </td>
    <td> 장바구니 </td>
    <td>  DTO 구축  </td>
  </tr>
  <tr>
    <td>  </td>
    <td> 실시간 채팅 기능 구현</td>
    <td>   </td>
    <td>   </td>
    <td>   </td>
  </tr> 
</table>




## 🔑 트러블슈팅
<br>
<h3>실시간 채팅 </h3>
<p>실시간 채팅의 데이터 전송 방식을 서버를 항상 열어두는 long polling방식으로 개발을 했으나 서버를 열어둔 채로 유지하는 과정이 불안정해서 잦은 에러가 발생했습니다.</p>
<p>long polling 방식이 아닌 web socket방식으로 변경하자 전보다 서버가 안정적으로 운영되었고 단체 채팅도 가능하게 되었습니다. </p>
<br>
<br>
<h3>mybatis error </h3>
<p>'sqlSession is null' 이라는 에러가 반복적으로 발생했습니다. mybatis 환경이나 mapper의 namespace 등 틀린 부분이 없었는데도 에러가 반복되었습니다.</p>
<p>DAO의 메소드 안에 mapper로 보낼 때 쓰는 ID값 앞에 'com.smhrd.FeedMapper.showFeed'라고 주소값을 직접 적어주니 정상적으로 실행됐습니다. </p>
<br>
<br>
<h3>카카오 SNS로그인 API error </h3>
<p>카카오 로그인API를 실행시키자 404에러가 발생했습니다.</p>
<p>원인을 몰라 카카오 관리자에게 문의하자 사용중인 API가 구버전인 것을 알게 되었고</p>
<p>신버전으로 바꾸자 정상적으로 실행되었습니다.</p>
<br>
<br>
<h3>크롤링 </h3>
<p>실시간으로 데이터가 바뀌는 사이트에서 크롤링을 하다보니 동시에 여러 페이지의 데이터를 수집해야 했었는데 이 과정에서 원하는 데이터만 가져오는 것에 어려움이 많았습니다.</p>
<p>그래서 octopus라는 크롤링 tool을 활용해서 원하는 데이터만을 제대로 크롤링하는데 성공했습니다.</p>
