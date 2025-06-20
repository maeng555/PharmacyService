# 💊 PharmacyService - 약국 찾기 서비스

**주소를 입력하면 반경 10km 내에서 가까운 약국 3곳을 추천해주는 서비스**

---

## 📌 서비스 개요

- **약국 현황 데이터**는 공공 데이터를 기반으로 하며, 위도/경도 정보를 포함하고 있다고 가정합니다.
- 사용자가 입력한 **도로명 주소 또는 지번 주소**를 기반으로 **위치 정보를 변환한 후**, 가까운 약국을 찾아 제공합니다.

---

## 🔍 주요 기능

### 1. 주소 기반 약국 추천
- 사용자가 입력한 주소를 위도/경도로 변환 (Kakao 우편번호 서비스 사용)
- **정확한 상세주소는 제외하고 동 수준까지만 사용**  
  > 예: `서울 성북구 종암로 10길`
- 변환된 좌표를 기준으로 **반경 10km 내 약국** 중 가장 가까운 **3곳** 추천

### 2. 거리 계산 방식
- **Haversine Formula**를 사용하여 두 좌표 간의 거리 계산
- 지구가 완전한 구는 아니지만, 실용적 정확도 확보

### 3. 추천 결과 제공
- **카카오 지도 길안내 URL**
- **카카오 로드뷰 URL**

```
예시:
- 길안내: https://map.kakao.com/link/map/우리회사,37.402056,127.108212
- 로드뷰: https://map.kakao.com/link/roadview/37.402056,127.108212
```

- 결과 URL은 **shorten URL**로 변환되어 제공됨
  - base62로 인코딩
  - 유효기간: 30일  
  - 예: `http://localhost:8080/dir/nqxtX`

---
## Pharmacy Recommendation Process
<img width="614" alt="스크린샷 2025-06-20 오후 11 25 35" src="https://github.com/user-attachments/assets/fbdbdab2-ab0f-4052-ae87-c1ebdc82c626" />
---
## Direction Shorten Url Process
<img width="617" alt="스크린샷 2025-06-20 오후 11 25 45" src="https://github.com/user-attachments/assets/3b169cc0-90f1-45c1-b588-00e4681fa916" />
---

## ✅ Feature List

- Spring Data JPA를 이용한 CRUD 메서드 구현
- Spock를 이용한 테스트 코드 작성
- Testcontainers를 이용한 독립 테스트 환경 구축
- 카카오 주소 검색 API 연동
- Kakao 지도 URL 연동 결과 제공
- 공공 약국 데이터 활용
- Handlebars를 이용한 간단한 View 구성
- Docker 기반 다중 컨테이너 애플리케이션
- AWS EC2에 애플리케이션 배포
- Spring Retry를 통한 재시도 로직 처리
- base62를 통한 shorten URL 개발
- Redis를 통한 성능 최적화

---

## 🛠 Tech Stack

- JDK 11
- Spring Boot 2.6.7
- Spring Data JPA
- Gradle
- Handlebars
- Lombok
- Github
- Docker
- AWS EC2
- Redis
- MariaDB
- Spock
- Testcontainers
