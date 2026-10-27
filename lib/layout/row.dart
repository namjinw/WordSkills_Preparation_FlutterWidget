import 'package:flutter/material.dart';

// Row: 하위 자식을 행으로 쌓는 위젯
// 자식들은 Row안에서 행으로 쌓인다.
class RowWidget extends StatefulWidget {
  const RowWidget({super.key});

  @override
  State<RowWidget> createState() => _RowWidgetState();
}

class _RowWidgetState extends State<RowWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          // 주축 정렬: 가로 방향 정렬
          mainAxisAlignment: .center,
          // .start       : 왼쪽 정렬
          // .end         : 오른쪽 정렬
          // .center      : 가운데 정렬
          // .spaceBetween: 양 끝에 배치하고 사이에 동일한 간격
          // .spaceAround : 각 자식 주변에 동일한 간격
          // .spaceEvenly : 모든 공간에 동일한 간격

          // 교차축 정렬: 세로 방향 정렬
          crossAxisAlignment: .start,
          // .start  : 위쪽 정렬
          // .end    : 아래쪽 정렬
          // .center : 세로 가운데 정렬
          // .stretch: 가능한 높이만큼 늘림
          // .baseline: 텍스트 기준선에 맞춰 정렬
          mainAxisSize: .max,
          // 차지할 범위
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
