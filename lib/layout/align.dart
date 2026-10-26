  import 'package:flutter/material.dart';

  // Align: 요소를 지정된 방향으로 정렬시키는 위젯
  class AlignWidget extends StatefulWidget {
    const AlignWidget({super.key});

    @override
    State<AlignWidget> createState() => _AlignWidgetState();
  }

  class _AlignWidgetState extends State<AlignWidget> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Align(
          alignment: .topRight, // 정렬 값
          // .topRight → 화면 오른쪽 위 모서리에 배치
          // (Alignment.topRight의 축약형, 좌표로는 Alignment(1.0, -1.0))
          //
          // 사용 가능한 값:
          // topLeft      topCenter      topRight
          // centerLeft   center         centerRight
          // bottomLeft   bottomCenter   bottomRight
          //
          // Alignment(x, y)로 직접 지정도 가능 (-1.0 ~ 1.0, (0, 0)이 중앙)
          child: Container(width: 150, height: 150, color: Colors.blue),
        ),
      );
    }
  }
