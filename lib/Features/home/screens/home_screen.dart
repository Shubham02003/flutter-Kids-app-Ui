import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_ui_task1/Features/competitions/screens/competition_screen.dart';
import 'package:flutter_ui_task1/Features/learn/screens/learn_screen.dart';
import 'package:flutter_ui_task1/Features/home/screens/home_screen_body.dart';
import 'package:flutter_ui_task1/Theme/pallete.dart';


class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  TextEditingController searchController = TextEditingController();
  int _selectedIndex=0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreenBody(),
    LearnScreen(),
    CompetitionScreen()
  ];

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Pallete.greenColor,
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.white,
          unselectedFontSize: 15,
          backgroundColor: Pallete.greenColor,
          selectedFontSize: 15,
          selectedItemColor: Pallete.postBackgroundColor,
          unselectedIconTheme:
              IconThemeData(color: Pallete.whiteColor, size: 30),
          selectedIconTheme:
              IconThemeData(color: Pallete.postBackgroundColor, size: 30),
          onTap: _onItemTapped,
          currentIndex: _selectedIndex,
          items: const [
            BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(
                  Icons.home_outlined,
                )),
            BottomNavigationBarItem(
                label: 'Learn',
                icon: Icon(
                  Icons.menu_book_outlined,
                )),
            BottomNavigationBarItem(
              label: 'Competitions',
              icon: Icon(
                Icons.wine_bar_sharp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

