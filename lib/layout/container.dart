import 'package:flutter/material.dart';

// Flutter에서 가장 기본이 되는 위젯
// Container는 말 그대로 "박스"이다
class ContainerWidget extends StatefulWidget {
  const ContainerWidget({super.key});

  @override
  State<ContainerWidget> createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: 100, // 너비
          height: 100, // 높이
          // 위젯 디자인 옵션
          decoration: BoxDecoration(
              color: Colors.red, // 색상
              borderRadius: .circular(12), // 모서리 둥글기
              border: .all(color: Colors.blue, width: 1), // 선
          ),
          // color: Colors.red // 색 조절 프로퍼티지만 decoration이 있을 시 에러 발생
          child: Text('Test 1'), // 하위 위젯
          // 안쪽 영역 값
          padding: .symmetric( // 상하 좌우로 값을 준다,
            horizontal: 10, // 좌우
            vertical: 20, // 상하
          ),
          margin: .all(12), // 바깥 영역 값
        ),
      ),
    );
  }
}
