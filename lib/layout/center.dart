import 'package:flutter/material.dart';

// Center는 요소를 중앙으로 정렬시켜주는 위젯이다.
class CenterWidget extends StatefulWidget {
  const CenterWidget({super.key});

  @override
  State<CenterWidget> createState() => _CenterWidgetState();
}

class _CenterWidgetState extends State<CenterWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // 부모(Scaffold)가 가진 영역에 한에서 하위 자식(Container)을 중앙으로 정렬시킨다.
        child: Container(
          width: 300,
          height: 300,
          color: Colors.red,
        ),
      ),
    );
  }
}
