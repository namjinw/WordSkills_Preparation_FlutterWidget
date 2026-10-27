import 'package:flutter/material.dart';

// Flexible: Expanded와 비슷하나 자식이 공간을 다 차지 안하는 위젯
// Expanded는 무조건 공간을 다 채우지만 Flexible은 공간을 다 채우지 않음.
class FlexibleWidget extends StatefulWidget {
  const FlexibleWidget({super.key});

  @override
  State<FlexibleWidget> createState() => _FlexibleWidgetState();
}

class _FlexibleWidgetState extends State<FlexibleWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Flexible(child: Container(color: Colors.red, width: 100)),
          Flexible(child: Container(color: Colors.blue, width: 200)),
          Flexible(
            fit: .tight,
            // fit: 할당받은 공간을 자식이 얼마나 채울지 결정
            // .loose: 할당된 공간보다 작게 차지하는 것을 허용 (기본값)
            // .tight: 할당된 공간을 반드시 전부 차지
            // flex: 1, // 남은 공간을 분배받는 비율 (기본값: 1)
            child: Container(color: Colors.green, width: 200),
          ),
        ],
      ),
    );
  }
}
