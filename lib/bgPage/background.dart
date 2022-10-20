
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pet_app/bgPage/bgPageSubPages/pageview.dart';
import 'package:pet_app/bgPage/bgPageSubPages/chat.dart';
import 'package:pet_app/bgPage/bgPageSubPages/map.dart';
import 'package:pet_app/bgPage/bgPageSubPages/profile.dart';
import 'package:pet_app/constant.dart';
import 'package:provider/provider.dart';

import '../providers/planProvider.dart';
import '../providers/screenIndexProvider.dart';


class BackgroundPage extends StatefulWidget {
  const BackgroundPage({Key? key}) : super(key: key);


  @override
  State<BackgroundPage> createState() => _BackgroundPageState();
}

class Marcin {}


class _BackgroundPageState extends State<BackgroundPage> {


  final pages = [
    const PageViewPage(),
    const MapPage(),
    const ChatPage(),
    const ProfilePage(),
  ];

  final pagesEx = [
    const PageViewPage(),
    const ProfilePage(),
  ];

 double containerHeight = 60;

  int _pageindex = 0;

  void onPageChanged(int index) {
    setState(() {
      _pageindex = index;
    });
  }



  @override
  Widget build(BuildContext context) {
    final _screenindexprovider = Provider.of<ScreenIndexProvider>(context);
    int currentScreenIndex = _screenindexprovider.fetchCurrentScreenIndex;
    final _planprovider = Provider.of<PlanProvider>(context);
    bool currentPlan = _planprovider.fetchCurrentPlan;
    return Scaffold(
      resizeToAvoidBottomInset : false,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: currentPlan ? pagesEx[currentScreenIndex] : pages[currentScreenIndex],
      bottomNavigationBar: SafeArea(
      child: Container(
        height: containerHeight,
        color: Background().themeDataColor,
        child: Theme(
          data: ThemeData(
            splashColor: Background().themeDataColor,
            highlightColor: Background().themeDataColor,
            canvasColor: Background().themeDataColor,
          ),
          child: buildBottomNavigationBar(currentScreenIndex, _screenindexprovider, currentPlan),
        ),
      ),
      ),
    );
  }

  BottomNavigationBar buildBottomNavigationBar(int currentScreenIndex, ScreenIndexProvider _screenindexprovider, bool currentPlan,) {
    return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: false,
          elevation: 0.0,
          selectedIconTheme: IconThemeData(
            size: Background().iconThemeDataSize,
            color: Background().iconThemeDataColor,
          ),
          iconSize: 19,
          selectedItemColor: Background().iconThemeDataColor,
          unselectedItemColor: Background().unselectedItemColor,
          unselectedFontSize: 12,
          selectedFontSize: 15,
          currentIndex: currentScreenIndex,
          onTap: (value) => _screenindexprovider.updateScreenIndex(value), //onPageChanged,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.servicestack),
              label: "Services",
            ),
            if(currentPlan==false)
              const BottomNavigationBarItem(
                icon: Icon(Icons.map),
                label: "Map",
              ),
            if(currentPlan==false)
              const BottomNavigationBarItem(
                icon: Icon(Icons.chat),
                label: "Chat",
              ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: "Profile",
            ),
          ],
        );
  }
}

