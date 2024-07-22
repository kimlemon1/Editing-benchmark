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
  - Unique editing for superclass
    -- person : anime, gender, race
    -- vehicle : vintage
    -- furniture :
    -- outdoor :
    -- Animal : 
    -- Accessory : Vintage
    -- Sports : Vintage
    -- Kitchen : Vintage
    -- Food : Fresh, Frozen, Burned
    -- Electronics :
    -- Appliance :
    -- Indoor :
    
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


## 논문 조사 및 만들면서 생각한 이후 해결해야하는 문제점들



