import 'package:flutter/material.dart';

// Stack: 하위 자식들을 겹쳐놓는 위젯
class StackWidget extends StatefulWidget {
  const StackWidget({super.key});

  @override
  State<StackWidget> createState() => _StackWidgetState();
}

class _StackWidgetState extends State<StackWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // 보여지는 하위 자식 순서는
        // 뒤에 있는 자식이 먼저 보여임.
        children: [
          // 그 아래
          Container(
            width: 200,
            height: 200,
            color: Colors.red,
          ),
          // 맨 위
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
