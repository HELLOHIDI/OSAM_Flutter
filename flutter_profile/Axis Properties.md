# Axis Properties

## Axis Properties
  - axis는 중심선이라는 뜻
  - mainaxis : 주축, corssaxis : 횡축
  - MainAxisAlignment : 주축 정렬, CrossAxisAlignment : 횡축 정렬

## 정렬하는 종류
  ### center : 가운데 정렬
MainAxisAlignment.center, CrossAxisAlignment : 위젯 상관없이 가운데 정렬

![image](https://user-images.githubusercontent.com/54922625/132085900-ee1d680f-8a85-407f-98ce-edb8edd88b3b.png)


  ### start : 왼쪽(row-main)/위쪽(colummn-main) 정렬
  MainAxisAlignmnet.start : row위젯은 왼쪽, column위젯은 위쪽 정렬<br>
  CrossAxisAlignmnet.start : row위젯은 위쪽, column위젯은 왼쪽 정렬
  
  ![image](https://user-images.githubusercontent.com/54922625/132086181-1540f311-4efb-4dd0-b469-71821e44bac3.png)

 
  ### end : 오른쪽 정렬(row-main)/아래쪽(column-main) 정렬
  MainAxisAlignmnet.start : row위젯은 오른쪽, column위젯은 아래쪽 정렬<br>
  CrossAxisAlignmnet.start : row위젯은 아래쪽, column위젯은 오른쪽 정렬
  
  ![image](https://user-images.githubusercontent.com/54922625/132086272-71590a8a-7af2-4194-9195-0308292577ac.png)

  
  
  ### spaceEvently :  child widget 사이의 여유 공간을 모두 균등하게 배분
  ![image](https://user-images.githubusercontent.com/54922625/132086285-f4dc4de3-88a3-4e9e-9d38-1eb05d5fc45f.png)

  
  
  ### spaceBetween : child widget을 시작과 끝에 배치하고, 시작과 끝 사이의 나머지 child widget 배치
  ![image](https://user-images.githubusercontent.com/54922625/132086305-db873d7d-bfb7-4223-af14-bf6d78ef339a.png)

  
  ### spaceAround : 첫번째와 마지막 child 앞 뒤에 여유 공간을 나머지 child와 공간의 절반만큼 배치
  ![image](https://user-images.githubusercontent.com/54922625/132086318-d47890d9-9d3b-4d6f-aeac-e30ce032eb89.png)

  
  ### 정리
  ![image](https://user-images.githubusercontent.com/54922625/132086322-137e7eb5-7133-4469-918e-308653c4e406.png)
