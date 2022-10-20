import 'dart:io';
import 'package:flutter/material.dart';
import 'package:pet_app/bgPage/bgPageSubPages/pageViewSubPages/home.dart';
import 'package:pet_app/bgPage/bgPageSubPages/pageViewSubPages/subscribe.dart';


class PageViewPage extends StatefulWidget {
  const PageViewPage({Key? key}) : super(key: key);
  @override
  State<PageViewPage> createState() => _PageViewPageState();
}

class _PageViewPageState extends State<PageViewPage> {

  final controller = PageController(initialPage: 1);

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      body: Platform.isIOS ?
          PageView(
        physics: const ClampingScrollPhysics(),
        controller: controller,
        children: const [
             SubscribePage(),
             HomePage(),
        ],
      ) : ScrollConfiguration(
        behavior: const MaterialScrollBehavior().copyWith(overscroll: false),
     child: PageView(
        controller: controller,
        children: const [
          SubscribePage(),
          HomePage(),
        ],
      ),
      ),
    );
  }
}