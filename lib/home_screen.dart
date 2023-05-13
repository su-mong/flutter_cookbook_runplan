import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  /// 현재 Widget에 해당하는 상태 class만 지정해주면 됨.
  /// 여긴 build 메서드가 없어요!
  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  /// build 메서드는 여기 있어요!
  @override
  Widget build(BuildContext context) {
    /// _MyHomePageState의 Scaffold의 body에 들어있던 코드 그대로 복붙.
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 24),
      children: [
        TodoCardView(),
      ],
    );
  }
}

class TodoCardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Color(0xFF24A19C),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/flag.png',
            width: 14,
            height: 14,
          ),
          SizedBox(width: 8),
          Text(
            '6월 토익 대비',
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
          Spacer(),
          Image.asset(
            'assets/fi_more_horizontal.png',
            width: 20,
            height: 20,
          ),
        ],
      ),
    );
  }
}