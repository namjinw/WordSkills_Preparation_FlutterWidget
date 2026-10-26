import 'package:flutter/material.dart';

// SizedBox: 공간만 차지하는 위젯
// 공간 용도로만 쓰임
class SizedBoxWidget extends StatefulWidget {
  const SizedBoxWidget({super.key});

  @override
  State<SizedBoxWidget> createState() => _SizedBoxWidgetState();
}

class _SizedBoxWidgetState extends State<SizedBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
          // 공간 (색깔 등 X)
          SizedBox(
            width: 200, // 너비
            height: 100, // 높이
            // child: , // 하위 자식
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
