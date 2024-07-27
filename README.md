# Editing-benchmark

### object_centered_image.ipynb 
- object가 들어있는 모든 이미지를 뽑아서 확인한 결과 editing 자체가 부적절한 경우들 존재
- 1. object가 너무 작아서 사람도 보기 어려운 경우
  2. object의 형태를 한눈에 이해하기 어려운 경우
  3. object가 occlusion이 매우 심하거나 구석에 있는 경우
- 해결 방법
-   caption 문장 5개 안에 해당 object가 모두 들어있는 이미지만 추출함
-   문제점
-   person, airplane에서 몇가지 이미지들은 잘 안보이는것 존재
-   해당 단어가 없어도 잘 나오던 이미지들이 있었을 것(backpack, background obj)등 사라짐

앞으로 할 일
- editing task 구체적으로 정의
- dataset 뽑은 방법 정말 clear하게 정의하자
