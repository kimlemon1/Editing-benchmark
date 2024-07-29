# Editing-benchmark

## 현재 아이디어
- Baseline paper "Editbench"를 개선하기 \
-- Dataset 개수 1만개로 증가 \
-- 평가 자동화 pipeline 완성(image가 들어가면 editing, 이후 평가까지 자동화) \
-- auto pipeline eval metric 개선 \\

## Editing task 자동화
### check_img_mask_prompt.ipynb
- 사용하면 원하는 object class에 해당하는 이미지와 대응되는 editing prompt를 다운받을 수 있다.
- 현재 "categoty_test/person_dog_cat이 예시 파일
-- Editing prompt가 이미지에 적합한(편집이 타당한지)지 확인 필요
-- 일일히 이미지와 prompt 비교는 불가능, 다른 아이디어 필요

## Editing task
더 다양한 task 정리 필요

### Object editing
1. Object addition : 이미지에 오브잭트 추가
  - add similar object 
2. Object replacement : 오브잭트 교체
  - Replace with same superclass object
3. Object size editing : 크기 변경
  - small, medium, large
4. Object position editing : 위치 변경
  - left, right, up, down
5. Object style editing : 해당 오브잭트의 스타일 변경, superclass마다 다른 스타일 적용 필요
  - color, old, new
  - person : anime, gender, race
  - vehicle : vintage, *futuristic*
  - furniture : *modern*, *classic*
  - outdoor : *modern*
  - Animal : *mythical*
  - Accessory : Vintage, *luxury*
  - Sports : Vintage, *child-friendly*
  - Kitchen : Vintage, *modern*
  - Food : Fresh, Frozen, Burned
  - Electronic : *futuristic*, *plastic*
  - Appliance : *modern*, *steel*, *plastic*
  - Indoor : 
    
### Image editing
1. Texture editing : 이미지 전체 질감 
  - Grainy, Smooth, Canvas, Paper
2. Image style editing : 이미지 전체 스타일
  - High contrast, Van Gogh, Monet, Picasso, Renaissance, Pop Art
4. Background editing : 오브잭트 제외한 배경
  - Person : desert, forest, mountain, dining room, classroom, office, night, snowing, raining
  - Vehicle : desert, forest, mountain, night, snowing, raining
  - Furniture : dining room, classroom, office, night, snowing, raining
  - Outdoor : desert, forest, mountain, night, snowing, raining
  - Animal : desert, forest, mountain, dining room, classroom, office, night, snowing, raining
  - Accessory : desert, forest, mountain, dining room, classroom, office, night, snowing, raining
  - Sports : desert, forest, mountain, night, snowing, raining
  - Kitchen : dining room, classroom, office, night, snowing, raining
  - Food : desert, forest, mountain, dining room, classroom, office, night, snowing, raining
  - Electronic : dining room, classroom, office, night, snowing, raining
  - Appliance : dining room, classroom, office, night, snowing, raining
  - Indoor : dining room, classroom, office, night, snowing, raining


## 이후 해결해야하는 문제점들
### Baseline 문제점
- Finetuning 모델과 zeroshot 모델을 구분 없이 비교함. Consistency는 finetuning 모델이 당연히 더 높을 것
- T2I editing model의 input prompt 형태가 모델마다 크게 다르다
  - 명령 형태, 원본 prompt가 필요한 형태, V*와 같은 토큰이 필요한 fine tuning 형태 등등
- Position editing, Background editing 모든 t2i 모델이 못한다
-  물체간 상대적인 위치 일반 생성 모델이 이해 잘 못한다(referring image segmenatation task 따로 존재)
-  해당 editing task에 대해 성능 평가 자체가 불가능할 것, 위치 관련 task를 제거할지, 다른 방법(mask 등으로 위치 정보 추가 제공)쓸지 생각 필요 


# Git 여러명이서 사용하는 방법
https://velog.io/@debut12/Github-%EC%97%AC%EB%9F%AC-%EB%AA%85%EA%B3%BC-%ED%94%84%EB%A1%9C%EC%A0%9D%ED%8A%B8-%EA%B3%B5%EC%9C%A0%ED%95%98%EA%B8%B0
