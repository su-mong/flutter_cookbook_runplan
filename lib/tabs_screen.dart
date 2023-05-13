import 'package:flutter/material.dart';
import 'package:untitled/project_screen.dart';
import 'package:untitled/calendar_screen.dart';
import 'package:untitled/home_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key, required this.title});

  final String title;

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen>
    with SingleTickerProviderStateMixin { // with SingleTickerProviderStateMixin : TabController를 쓰려면 필요한 코드
  /// 현재 선택된 탭 번호
  int tabIndex = 0;
  /// TabBarView 컨트롤러
  late final TabController tabController;

  @override
  void initState() {
    // TabsScreen이 생성될 때 아래 코드들을 실행함.
    super.initState();

    tabController = TabController(
      length: 3, // 탭 갯수
      vsync: this, // 여기는 '일단' this.
    );
  }

  @override
  Widget build(BuildContext context) {
    // 아래 화면을 그림.
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            centerTitle: true,
            title: Text(
              '오늘의 할 일',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          body: TabBarView(
            controller: tabController,
            children: [
              HomeScreen(),
              CalendarScreen(),
              ProjectScreen(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Image.asset('assets/home_off.png', width: 24, height: 24,),
                activeIcon: Image.asset('assets/home_on.png', width: 24, height: 24,),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset('assets/calendar_off.png', width: 24, height: 24,),
                activeIcon: Image.asset('assets/calendar_on.png', width: 24, height: 24,),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset('assets/project_off.png', width: 24, height: 24,),
                activeIcon: Image.asset('assets/project_on.png', width: 24, height: 24,),
                label: '',
              ),
            ],
            currentIndex: tabIndex, // 현재 탭의 위치(인덱스)
            onTap: (int newIndex) { // 각각의 탭 버튼을 클릭했을 때 동작
              // newIndex : 현재 클릭한 탭의 인덱스
              setState(() {
                tabIndex = newIndex;
                tabController.index = newIndex;
              });
            },
          ),
        )
    );
  }
}