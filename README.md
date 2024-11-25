# Kubernetes를 활용한 3-Tier 웹 서비스 구축

## 📑목차
- [프로젝트 소개](#-프로젝트-소개)
- [팀원 소개](#-팀원-소개)  
- [핵심 기술](#-핵심-기술)  
- [기술 스택](#-기술-스택)  
- [아키텍처](#-아키텍처)  
- [PAGE](#-page)  
- [테스트 영상](#-테스트-영상)  
- [산출물](#-산출물)

## 🖥️ 프로젝트 소개

본 프로젝트는 3-Tier 구조를 기반으로 한 온라인 신발 쇼핑몰 웹 서비스를 구축하는 것을 목표로 진행되었습니다. 쿠버네티스를 활용하여 자동화된 배포, 확장성, 고가용성, 리소스 최적화를 통해 효율적으로 애플리케이션을 관리하였습니다. Dockerfile의 경량화에 중점을 두어 시스템 성능을 극대화하였으며, 다른 팀과의 차별화를 위해 Stacked ETCD 클러스터를 구성하여 메인 마스터노드 장애 시에도 시스템이 정상적으로 작동하도록 설계하였습니다. 이러한 기술적 기반을 통해 신뢰성과 확장성이 뛰어난 웹 서비스를 구현하였습니다.



## 🙂 팀원 소개

| Name | 이승환 | 유원종 | 이재혁 | 김민지 | 김홍섭 |
| :------------: | :------------: | :------------: | :------------: | :------------: | :------------: |
|  | ![이승환](https://github.com/user-attachments/assets/bc73596c-1867-4965-a581-fe5ccdc2ffd8) | ![유원종](https://github.com/user-attachments/assets/86c9ac47-f92d-4495-a48d-d37f977b41dd) | ![이재혁](https://github.com/user-attachments/assets/98278fe0-2645-434f-8a00-58145ecaa79a) | ![김민지](https://github.com/user-attachments/assets/d239d835-4b56-405b-85fb-6b5c697928aa) | ![김홍섭](https://github.com/user-attachments/assets/69e9803b-c30f-4a59-9fa0-2ad22824bc56) |
| __Position__ | Project Leader | Technology Leader| Engineer| Engineer| Engineer|



## 🚀 핵심 기술
| Technology            | Description          |
|-----------------------|---------------------------------------------------------------------------------------------------|
| **Kubernetes**         | 자동화된 배포, 확장성, 고가용성, 리소스 최적화 등을 통해 컨테이너화된 애플리케이션을 효율적으로 관리하고 운영하였습니다. |
| **Stacked ETCD**      | ETCD를 통합하여 메인 마스터노드의 장애 시에도 안정적인 서비스 운영이 가능하도록 하였습니다. |
| **고가용성(HA)**         | 로드밸런서와 클러스터 이중화, HPA 적용으로 고가용성을 유지하였습니다. |
| **Dockerfile**    | Dockerfile을 경량화하여 빌드 및 배포 속도를 향상시키고, 스토리지 절감을 통해 효율성을 높였습니다. |
| **CD** | GitHub와 ArgoCD를 연동하여 CD 파이프라인을 구축하고, 자동화된 배포를 구현하였습니다.. |



## 🛠 기술 스택

<table>
<tr>
 <td align="center">프로그래밍 언어</td>
 <td>
  <img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=JavaScript&logoColor=ffffff"/> <!--Java Script-->  
  <img src="https://img.shields.io/badge/Java-orange?style=for-the-badge&logo=Java&logoColor=white"/> <!--Java-->  
  <img src="https://img.shields.io/badge/html5-E34F26?style=for-the-badge&logo=html5&logoColor=white"/> <!--Html-->   
  <img src="https://img.shields.io/badge/css-1572B6?style=for-the-badge&logo=css3&logoColor=white"/> <!--Css-->  
  <img src="https://img.shields.io/badge/SQL-4479A1?style=for-the-badge&logo=MySQL&logoColor=white"/> <!--Sql-->  
 </td>
</tr>

<tr>
 <td align="center">프레임워크</td>
 <td>
  <img src="https://img.shields.io/badge/JSP-FF5F00?style=for-the-badge&logo=Java&logoColor=white"/> <!--Jsp-->  
  <img src="https://img.shields.io/badge/Spring-6DB33F?style=for-the-badge&logo=Spring&logoColor=ffffff"/> <!--Spring-->  
 </td>
</tr>

<tr>
 <td align="center">인프라</td>
 <td>
  <img src="https://img.shields.io/badge/Kubernetes-326CE5?style=for-the-badge&logo=Kubernetes&logoColor=white"/> <!--Kubernetes-->  
  <img src="https://img.shields.io/badge/docker-2496ED?style=for-the-badge&logo=docker&logoColor=ffffff"/> <!--Docker-->
  <img src="https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=Ubuntu&logoColor=white"/> <!--Ubuntu-->
  <img src="https://img.shields.io/badge/HAProxy-FF4F00?style=for-the-badge&logo=haproxy&logoColor=white"/> <!--HAProxy-->
  <img src="https://img.shields.io/badge/Keepalived-6C6C6C?style=for-the-badge&logo=keepalived&logoColor=white"/> <!--Keepalived-->
  <img src="https://img.shields.io/badge/docker-2496ED?style=for-the-badge&logo=docker&logoColor=ffffff"/> <!--Docker-->
  <img src="https://img.shields.io/badge/nginx-009639?style=for-the-badge&logo=nginx&logoColor=white"/> <!--Nginx-->
  <img src="https://img.shields.io/badge/tomcat-F8DC75?style=for-the-badge&logo=apachetomcat&logoColor=black"/> <!--Tomcat-->
  <img src="https://img.shields.io/badge/MariaDB-003545?style=for-the-badge&logo=mariadb&logoColor=white"/> <!--MariaDB-->
  <img src="https://img.shields.io/badge/ArgoCD-3C7C7B?style=for-the-badge&logo=argo&logoColor=white"/> <!--ArgoCD-->
 </td>
</tr>

<tr>
 <td align="center">협업툴</td>
 <td>
  <img src="https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=Git&logoColor=white"/> <!--Git-->  
  <img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=GitHub&logoColor=white"/> <!--GitHub-->
 </td>
</tr>

<tr>
 <td align="center">기타</td>
 <td>
  <img src="https://img.shields.io/badge/WhaTap-25D366?style=for-the-badge&logo=whatsapp&logoColor=white" alt="WhaTap"/> <!--WhaTap--> 
  <img src="https://img.shields.io/badge/Notion-000000?style=for-the-badge&logo=Notion&logoColor=white"/> <!--Notion--> 
 </td>
</tr>
</table>



## 🧱 아키텍처
![아키텍처](https://github.com/user-attachments/assets/6f737c62-efa9-499f-9319-c63b6004e1cc)



## 🌐 PAGE

* 메인
![메인페이지02](https://github.com/user-attachments/assets/8607847c-f7b5-41a5-a2aa-c10047a8a03f)


* 회원가입
![2 회원가입](https://github.com/user-attachments/assets/4b8ce25a-31a2-4ff4-becd-6799d5de71b7)


* 로그인

![3 로그인](https://github.com/user-attachments/assets/7ce9f0e0-d489-4948-beed-e1a5e1da3016)

## 🧪 테스트 영상

* Jmeter HPA 부하테스트
  
![부하테스트](https://github.com/user-attachments/assets/34542399-ad87-48ac-a151-7a7f0f188ba2)

* 롤링업데이트
  
![롤링업데이트01](https://github.com/user-attachments/assets/5e459fac-b473-4443-bdc4-7c4656ecd209)

![롤링업데이트02](https://github.com/user-attachments/assets/80be12a1-91f9-4619-b004-54c67e970e62)




## 📦 산출물
JSP는 용량문제로 코드만 첨부합니다.

PPT는 용량문제로 분할 첨부합니다.

* Dockerfile
* yaml
* JSP
* WBS
* 관리대장
* 기술보고서
* PPT
