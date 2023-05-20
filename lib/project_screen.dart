import 'package:flutter/material.dart';

class ProjectScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 24), // 전체 padding : 양 옆 24
      child: Column(
        children: [
          // GestureDetector : 클릭 관련 액션이 매우 많고, 클릭하더라도 UI상 변화가 없다.
          //                   속성이 많아서 지정할 건 많지만 커스텀이 자유롭다. 특이한 버튼 만들 때 많이 씀.
          // (child 자리에 Widget 아무거나 넣어도 다 작동하기 때문에, 우리가 만들 수 있는 모든 UI를 버튼처럼 쓸 수 있다.)
          GestureDetector(
            behavior: HitTestBehavior.opaque, // 빈 공간(Spacer)도 클릭 가능하게 만듬.
            onTap: () { // 클릭 시 이벤트 : SnackBar를 띄움.
              ScaffoldMessenger.of(context).showSnackBar( // SnackBar 띄우는 함수
                  SnackBar(
                      content: Text('새 프로젝트 추가 클릭') // SnackBar 메세지
                  )
              );
            },
            child: Container( // Padding을 주기 위함
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Row(
                children: [
                  Text(
                    '새 프로젝트 추가',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF1B1C1F),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(), // '새 프로젝트 추가' Text - Image.asset 사이 간격 벌리는 용도
                  Image.asset(
                    'assets/plus.png',
                    width: 20,
                    height: 20,
                  ),
                ],
              ), // 가로로 2개(텍스트, + 이미지)
            ),
          ),

          // 선 그리기
          Divider(color: Colors.red),
          // 16px 떨어뜨리기
          SizedBox(height: 16),

          // 리스트뷰
          ListView(
            physics: NeverScrollableScrollPhysics(), // Column 안에서 리스트뷰를 쓸 때 필요한 옵션 1. 리스트뷰 스크롤 막음
            shrinkWrap: true, // Column 안에서 리스트뷰를 쓸 때 필요한 옵션 2. Column 안쪽에 리스트뷰를 넣을 때 꼭 필요한 옵션.
            children: [
              // 프로젝트 1개
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '토익 공부 및 응시  (7/20)',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF767E8C),
                    ),
                  ),

                  Container(
                    width: 45,
                    height: 22,
                    // padding: EdgeInsets.only(left: 6, right: 6, bottom: 2, top: 2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xFFF2F9F9),
                    ),
                    child: Center(
                      child: Text(
                        'green',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF24A19C),
                          fontWeight: FontWeight.w500, // bold -> w500
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),

          Spacer(), // 간격
          MaterialButton(
            onPressed: () {}, // 버튼 클릭 시 동작(아무것도 하지 않음)
            color: Color(0xFFE0E5ED), // 버튼 배경색
            child: Container(
              width: double.infinity, // 넓이 : 무한대 = 부모 사이즈랑 맞춤. (기기 가로 길이) - 24*2
              child: Center(
                child: Text(
                  '마무리한 프로젝트 보러가기',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF1B1C1F),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}