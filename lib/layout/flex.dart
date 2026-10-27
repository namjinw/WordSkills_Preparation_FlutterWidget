import 'package:flutter/material.dart';

// Flex: 방향을 지정해 자식을 지정하는 위젯
// 한마디로 Row - Column 짬뽕하는 거임
class FlexWidget extends StatefulWidget {
  const FlexWidget({super.key});

  @override
  State<FlexWidget> createState() => _FlexWidgetState();
}

class _FlexWidgetState extends State<FlexWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Flex(
        // 정렬 방향 지정
        // .horizontal 가로
        // .vertical 수직
        direction: .horizontal,
        children: [
          Container(width: 100, height: 100, color: Colors.red),
          Container(width: 100, height: 100, color: Colors.blue),
        ],
      ),
    );
  }
}
