import 'package:flutter/material.dart';

class ColumnWidget extends StatefulWidget {
  const ColumnWidget({super.key});

  @override
  State<ColumnWidget> createState() => _ColumnWidgetState();
}

class _ColumnWidgetState extends State<ColumnWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          // 주축 정렬: 세로 방향 정렬
          mainAxisAlignment: .center,
          // .start        : 위쪽 정렬
          // .end          : 아래쪽 정렬
          // .center       : 세로 가운데 정렬
          // .spaceBetween : 첫 자식은 위, 마지막 자식은 아래에 배치하고 사이 공간 균등 분배
          // .spaceAround  : 각 자식 위아래에 균등한 공간 배분
          // .spaceEvenly  : 자식 사이와 양 끝 공간을 균등하게 배분

          // 교차축 정렬: 가로 방향 정렬
          crossAxisAlignment: .start,
          // .start    : 왼쪽 정렬
          // .end      : 오른쪽 정렬
          // .center   : 가로 가운데 정렬
          // .stretch  : 가능한 가로 공간만큼 늘림
          // .baseline : 텍스트 기준선에 맞춰 정렬 (Column에서는 일반적으로 사용하지 않음)

          // 주축 크기: 세로 공간을 차지하는 방식
          mainAxisSize: .max,
          // .min : 자식에게 필요한 세로 공간만 차지
          // .max : 가능한 세로 공간을 최대한 차지
          spacing: 12,
          // 자식 간 거리
          // 하위 자식 리스트
          children: [
            Container(width: 100, height: 100, color: Colors.red),
            Container(width: 100, height: 100, color: Colors.blue),
          ],
          // TextBaseline? : 텍스트 기준선
          // .alphabetic  : 알파벳 기준선에 맞춤
          // .ideographic : 한자 등 표의문자 기준선에 맞춤

          // TextDirection? : 텍스트 방향
          // .ltr : 왼쪽 → 오른쪽
          // .rtl : 오른쪽 → 왼쪽

          // VerticalDirection : 세로 배치 방향
          // .down : 위 → 아래
          // .up   : 아래 → 위
        ),
      ),
    );
  }
}
