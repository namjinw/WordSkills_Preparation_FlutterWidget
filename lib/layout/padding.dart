import 'package:flutter/material.dart';

// Padding은 오로지 안쪽 여백만 주는 위젯
class PaddingWidget extends StatefulWidget {
  const PaddingWidget({super.key});

  @override
  State<PaddingWidget> createState() => _PaddingWidgetState();
}

class _PaddingWidgetState extends State<PaddingWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // padding 프로퍼티 옵션
          // symmetric(): 상하 수직으로 값 지정
          // only(): 네 방향 독립적(오, 왼, 위, 아래)으로 값 지정
          // fromLTRB(): only랑 같지만 (left, top, right, bottom)로 입력
          // fromSTEB(): only랑 같지만 (start, top, end, bottom)로 입력
          // all(): 하나(네 방향 한번에)로 값 지정
          // zero: 모든 방향 0
          Padding(
            padding: .symmetric(horizontal: 20, vertical: 50), // 안쪽 여백 값
            child: box(Colors.red),
          ),
          Padding(
            padding: .only(left: 100, top: 100),
            child: box(Colors.blue),
          ),
          Padding(
            padding: .all(12),
            child: box(Colors.green),
          ),
        ],
      ),
    );
  }

  Widget box(Color color) => Container(
    width: 200,
    height: 200,
    alignment: .center,
    color: color,
    child: Text('Box'),
  );
}
