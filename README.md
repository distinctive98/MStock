# MStock
## About the Project

- 데이터 분석과 함께하는 모의주식 플랫폼



## Features

- 실시간 주식 정보 파싱을 통한 실제 주식 환경 제공
- 종목간 매수/매도 및 자산관리 환경 제공
- 종목간 기사 스크래핑을 통한 워드클라우드, 감정분석 제공
- 10분 뒤의 현재가를 예측하는 회귀분석 제공



## Getting Started

### Architecture

- Client
  - HTML5, CSS3, JavaScript, jQuery, Ajax
  - Bootstrap4
  - Chart.js
- Server
  - Spring STS 3.9.9
  - Tomcat 9.0
  - MyBatis
  - JSP
  - R, Rserve
  - JSON
  - AWS
- Database
  - Oracle Database 11g
- Open API & XML
  - Naver Open API(Login)
  - 한국거래소 XML 서비스
- Development Flatform
  - Eclipse
  - Java(jdk1.8.0_211)
  - R Studio
  - Git

### Prerequisites



## Flow Chart





## Screen Configuration

- Section 1 - Main

  - 현재 12개 종목 서비스 중

    ![](\img\main1.PNG)

- Section 2 - 종목

  - Chart 

    - 주가 정보 JSON 파일과 Chart.js를 이용해서 구현
    - 임시 이미지입니다

    ![](\img\temp.PNG)

  - 주가 정보

    - Spring Scheduler를 통해 10초마다 갱신

    ![](\img\stock1.PNG)

  - 데이터 분석

    - 10분 주기로 R을 이용한 종목별 뉴스 분석 

    - 분석 결과 기반의 워드클라우드 생성

    - 감정사전 & TF-IDF & 나이브-베이즈 분류기를 통한 감정분석

      ![](/img/stock4.png)

    - 10분 뒤의 현재가를 예측하는 회귀분석 및 정확도

    - 독립변수 : 거래량, 시간

    - 종속변수 : 현재가

    - 정확도 : 수정된 결정계수 이용

    - 신뢰도로 회귀분석을 평가하기에는 pValue 값이 극단적으로 작아서 정확도를 사용

    ![](img/stock3.png)

  - 증시기사

    - 네이버 금융에서 제공하는 증시기사 스크래핑

    ![](img/stock5.png)

  - 채팅

    - 종목별 채팅방
    - 웹 소켓

    ![](/img/stock6.png)

    

  - 매수

    ![](/img/stock7.png)

- Section 3 - 자산 관리

  - 자산 정보

    - 총 자산, 총 손익
    - 보유 주식에 대한 매입 금액, 평가 금액, 평가 손익
    - 보유한 크레딧과 주식의 비율
    - 등급 확인

    ![](/img/property1.png)

  

  - 보유한 주식 정보
    - 