import 'package:flutter/material.dart';

// Expanded: Row나 Column 등 레이아웃 위젯 안에서 공간을 최대한 차지하는 위젯
// 공간을 모두 차지 하려하기에 만약 부모 위젯 공간이 정해져있지 않다면 무한히 차지하며 에러를 일으킨다.
class ExpandedWidget extends StatefulWidget {
  const ExpandedWidget({super.key});

  @override
  State<ExpandedWidget> createState() => _ExpandedWidgetState();
}

class _ExpandedWidgetState extends State<ExpandedWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            // 부모의 공간(Row)를 모두 차지한다.
            // 참고로 두개 라면 기본 비율(1:1)이지만
            // flex를 입력해 차지할 공간 비율도 지정 가능
            Expanded(flex: 1, child: Container(color: Colors.red)),
            Expanded(flex: 2, child: Container(color: Colors.blue)),
          ],
        ),
      ),
    );
  }
}
