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

본 프로젝트는 3-Tier 구조의 온라인 신발 쇼핑몰 웹 서비스를 구축하는 것을 목표로 진행 했습니다.

Kubernetes를 활용하여 인프라를 설계하였으며, 



## 🙂 팀원 소개

| Name | 이승환 | 유원종 | 이재혁 | 김민지 | 김홍섭 |
| :------------: | :------------: | :------------: | :------------: | :------------: | :------------: |
|  | ![임희진](https://github.com/user-attachments/assets/74459b22-c4b0-4718-9b90-4a8c89d94443) | ![이재혁](https://github.com/user-attachments/assets/5262f984-16b6-483d-9c59-cc4db778cfdb) | ![이창수](https://github.com/user-attachments/assets/75a42028-ef7c-4c3d-9062-f4a182c20379) | ![장정원](https://github.com/user-attachments/assets/28b895ad-0843-4e34-99e2-28ab5f64f14c) |
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
![4조_2차프로젝트_시방서](https://github.com/user-attachments/assets/e9cd994c-5ebb-4e53-85a0-ff3125ee10a6)



## 🌐 PAGE
* 메인 및 로그인
![1 메인페이지](https://github.com/user-attachments/assets/76599271-acb9-48fd-a2de-fa272310640e)

* 회원가입
![2 회원가입](https://github.com/user-attachments/assets/f180f118-23ac-448c-a1c9-65a73c27d8b7)

* 로딩
![3 주문1](https://github.com/user-attachments/assets/6bbbb31b-4486-4275-b0da-a531c8363518)

* 주문
![3 주문2](https://github.com/user-attachments/assets/05c045a8-1c04-4c4d-90bc-62882e0388fd)

## 🧪 테스트 영상

CA, HPA 부하테스트와 롤링업데이트,롤백 테스트영상은 용량 문제로 링크 첨부합니다.

* 데이터베이스 연동 테스트

![DB연동테스트](https://github.com/user-attachments/assets/0e508d05-9273-420a-b137-17fa9f2a2272)

* Redis 연동 테스트

![Redis 테스트](https://github.com/user-attachments/assets/308fe7d9-ce8c-4114-9e30-406c72cfd224)

* Jmeter 부하테스트 Whatap 모니터링
  
![CA테스트](https://github.com/user-attachments/assets/35a88447-f12a-4a24-9366-4109efca8e19)

* Jmeter CA, HPA 부하테스트
https://youtu.be/RAUeUEzNpuE?si=sQfnE0VihyQrZwnT

* 롤링업데이트 & 롤백
https://youtu.be/LRuzPJXX9fg?si=JPQDavTHgQ2bojkp




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
