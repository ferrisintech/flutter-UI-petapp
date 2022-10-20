
import 'dart:io';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool selected = false;
  int number = 0;

  int _value = 1;

  var radioButtonColor = Colors.blue[900];
  var radioButtonColorUn = Colors.black87;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      body: Platform.isIOS ? Padding(
        padding: const EdgeInsets.only(top:25),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children:  [
            const SizedBox(height: 40,),
          Container(
            height: 50,
            width: 300,
            padding: const EdgeInsets.only(left: 10,right: 10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.cyan[300]!, width: 2),
              color: Colors.white70,
            borderRadius: BorderRadius.circular(10),
            ),
            child: const TextField(
              style: TextStyle(color: Colors.black),
              cursorColor: Colors.blue,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
              ),
            ),
           ),

            const SizedBox(height: 20,),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 190,
              child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      NeumorphicRadio(
                        style: NeumorphicRadioStyle(
                          shape: NeumorphicShape.concave,
                          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                          lightSource: null,
                          intensity: 0,
                          selectedColor: radioButtonColor,
                          unselectedColor: radioButtonColorUn,
                          selectedDepth: 18,
                          unselectedDepth: -12,
                        ),
                        value: 1,
                        groupValue: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = 1;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                        //  padding: const EdgeInsets.only(right: 5),
                          child: tiles(Icons.home,_value == 1 ? Colors.orangeAccent: Colors.white54, "Favorite"),
                        ),
                      ),
                      NeumorphicRadio(
                        style: NeumorphicRadioStyle(
                          shape: NeumorphicShape.concave,
                          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                          lightSource: null,
                          intensity: 0,
                          selectedColor: radioButtonColor,
                          unselectedColor: radioButtonColorUn,
                          selectedDepth: 18,
                          unselectedDepth: -12,
                        ),
                        value: 2,
                        groupValue: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = 2;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          child: tiles(Icons.attach_money_outlined,_value == 2 ? Colors.orangeAccent: Colors.white54, "Insure"),
                        ),
                      ),
                      NeumorphicRadio(
                        style:  NeumorphicRadioStyle(
                          shape: NeumorphicShape.concave,
                          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                          lightSource: null,
                          intensity: 0,
                          selectedColor: radioButtonColor,
                          unselectedColor: radioButtonColorUn,
                          selectedDepth: 18,
                          unselectedDepth: -12,
                        ),
                        value: 3,
                        groupValue: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = 3;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          child: tiles(Icons.health_and_safety_rounded,_value == 3 ? Colors.orangeAccent: Colors.white54, "Health"),
                        ),
                      ),
                      NeumorphicRadio(
                        style: NeumorphicRadioStyle(
                          shape: NeumorphicShape.concave,
                          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                          lightSource: null,
                          intensity: 0,
                          selectedColor: radioButtonColor,
                          unselectedColor: radioButtonColorUn,
                          selectedDepth: 18,
                          unselectedDepth: -12,
                        ),
                        value: 4,
                        groupValue: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = 4;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                         // padding: const EdgeInsets.only(right: 5),
                          child: tiles(Icons.adb_outlined,_value == 4 ? Colors.orangeAccent: Colors.white54, "Adopt"),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      NeumorphicRadio(
                        style:  NeumorphicRadioStyle(
                          shape: NeumorphicShape.concave,
                          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                          lightSource: null,
                          intensity: 0,
                          selectedColor: radioButtonColor,
                          unselectedColor: radioButtonColorUn,
                          selectedDepth: 18,
                          unselectedDepth: -12,
                        ),
                        value: 5,
                        groupValue: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = 5;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                       //   padding: const EdgeInsets.only(right: 5),
                          child: tiles(Icons.home,_value == 5 ? Colors.orangeAccent: Colors.white54, "Moja"),
                        ),
                      ),
                      NeumorphicRadio(
                        style: NeumorphicRadioStyle(
                          shape: NeumorphicShape.concave,
                          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                          lightSource: null,
                          intensity: 0,
                          selectedColor: radioButtonColor,
                          unselectedColor: radioButtonColorUn,
                          selectedDepth: 18,
                          unselectedDepth: -12,
                        ),
                        value: 6,
                        groupValue: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = 6;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                      //    padding: const EdgeInsets.only(right: 5),
                          child: tiles(Icons.home,_value == 6 ? Colors.orangeAccent: Colors.white54, "Moja"),
                        ),
                      ),
                      NeumorphicRadio(
                        style:  NeumorphicRadioStyle(
                          shape: NeumorphicShape.concave,
                          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                          lightSource: null,
                          intensity: 0,
                          selectedColor: radioButtonColor,
                          unselectedColor: radioButtonColorUn,
                          selectedDepth: 18,
                          unselectedDepth: -12,
                        ),
                        value: 7,
                        groupValue: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = 7;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                     //     padding: const EdgeInsets.only(right: 5),
                          child: tiles(Icons.home,_value == 7 ? Colors.orangeAccent: Colors.white54, "Moja"),
                        ),
                      ),
                      NeumorphicRadio(
                        style:  NeumorphicRadioStyle(
                          shape: NeumorphicShape.concave,
                          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                          lightSource: null,
                          intensity: 0,
                          selectedColor: radioButtonColor,
                          unselectedColor: radioButtonColorUn,
                          selectedDepth: 18,
                          unselectedDepth: -12,
                        ),
                        value: 8,
                        groupValue: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = 8;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                    //      padding: const EdgeInsets.only(right: 5),
                          child: tiles(Icons.home,_value == 8 ? Colors.orangeAccent: Colors.white54, "Moja"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15,),
            const Padding(
              padding: EdgeInsets.only(left:10),
              child: Align(
                alignment: Alignment.centerLeft,
              child: Text("Worth attention", style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),),
            ),
            ),
            const SizedBox(height: 10,),
            Expanded(
              child: SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: ScrollConfiguration(
                    behavior: const MaterialScrollBehavior()
                        .copyWith(overscroll: false),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 12,
                      shrinkWrap: true,
                      itemBuilder: (context,index) =>
                          Padding(
                            padding: const EdgeInsets.only(left: 5,right: 5, bottom: 5),
                          child: listRows(Colors.black, "Promotions" , Colors.blue[300]!),
                          ),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 15,),
            const Padding(
              padding: EdgeInsets.only(left:10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Results", style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),),
              ),
            ),
            const SizedBox(height: 10,),
            Expanded(
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  removeBottom: true,
                  child: ScrollConfiguration(
                    behavior: const MaterialScrollBehavior()
                        .copyWith(overscroll: false),
                    child: ListView.builder(
                      itemCount: 12,
                      itemBuilder: (context,index) =>
                          Padding(
                            padding: const EdgeInsets.only(left: 5,right: 5, bottom: 5),
                            child: listRows(Colors.black, "list of results", Colors.blueGrey[200]!),
                          ),
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
      ) : SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children:  [
            const SizedBox(height: 40,),
            Container(
              height: 50,
              width: 300,
              padding: const EdgeInsets.only(left: 10,right: 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.cyan[300]!, width: 2),
                color: Colors.white70,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const TextField(
                style: TextStyle(color: Colors.black),
                cursorColor: Colors.blue,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20,),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 190,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      NeumorphicRadio(
                        style: NeumorphicRadioStyle(
                          shape: NeumorphicShape.concave,
                          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                          lightSource: null,
                          intensity: 0,
                          selectedColor: radioButtonColor,
                          unselectedColor: radioButtonColorUn,
                          selectedDepth: 18,
                          unselectedDepth: -12,
                        ),
                        value: 1,
                        groupValue: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = 1;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          child: tiles(Icons.home,_value == 1 ? Colors.orangeAccent: Colors.white54, "Moja"),
                        ),
                      ),
                      NeumorphicRadio(
                        style: NeumorphicRadioStyle(
                          shape: NeumorphicShape.concave,
                          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                          lightSource: null,
                          intensity: 0,
                          selectedColor: radioButtonColor,
                          unselectedColor: radioButtonColorUn,
                          selectedDepth: 18,
                          unselectedDepth: -12,
                        ),
                        value: 2,
                        groupValue: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = 2;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                      //    padding: const EdgeInsets.only(right: 5),
                          child: tiles(Icons.home,_value == 2 ? Colors.orangeAccent: Colors.white54, "Moja"),
                        ),
                      ),
                      NeumorphicRadio(
                        style:  NeumorphicRadioStyle(
                          shape: NeumorphicShape.concave,
                          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                          lightSource: null,
                          intensity: 0,
                          selectedColor: radioButtonColor,
                          unselectedColor: radioButtonColorUn,
                          selectedDepth: 18,
                          unselectedDepth: -12,
                        ),
                        value: 3,
                        groupValue: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = 3;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                     //     padding: const EdgeInsets.only(right: 5),
                          child: tiles(Icons.home,_value == 3 ? Colors.orangeAccent: Colors.white54, "Moja"),
                        ),
                      ),
                      NeumorphicRadio(
                        style: NeumorphicRadioStyle(
                          shape: NeumorphicShape.concave,
                          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                          lightSource: null,
                          intensity: 0,
                          selectedColor: radioButtonColor,
                          unselectedColor: radioButtonColorUn,
                          selectedDepth: 18,
                          unselectedDepth: -12,
                        ),
                        value: 4,
                        groupValue: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = 4;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                      //    padding: const EdgeInsets.only(right: 5),
                          child: tiles(Icons.home,_value == 4 ? Colors.orangeAccent: Colors.white54, "Moja"),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      NeumorphicRadio(
                        style:  NeumorphicRadioStyle(
                          shape: NeumorphicShape.concave,
                          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                          lightSource: null,
                          intensity: 0,
                          selectedColor: radioButtonColor,
                          unselectedColor: radioButtonColorUn,
                          selectedDepth: 18,
                          unselectedDepth: -12,
                        ),
                        value: 5,
                        groupValue: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = 5;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          child: tiles(Icons.home,_value == 5 ? Colors.orangeAccent: Colors.white54, "Moja"),
                        ),
                      ),
                      NeumorphicRadio(
                        style: NeumorphicRadioStyle(
                          shape: NeumorphicShape.concave,
                          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                          lightSource: null,
                          intensity: 0,
                          selectedColor: radioButtonColor,
                          unselectedColor: radioButtonColorUn,
                          selectedDepth: 18,
                          unselectedDepth: -12,
                        ),
                        value: 6,
                        groupValue: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = 6;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                    //      padding: const EdgeInsets.only(right: 5),
                          child: tiles(Icons.home,_value == 6 ? Colors.orangeAccent: Colors.white54, "Moja"),
                        ),
                      ),
                      NeumorphicRadio(
                        style:  NeumorphicRadioStyle(
                          shape: NeumorphicShape.concave,
                          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                          lightSource: null,
                          selectedColor: radioButtonColor,
                          unselectedColor: radioButtonColorUn,
                          selectedDepth: 18,
                          unselectedDepth: -12,
                        ),
                        value: 7,
                        groupValue: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = 7;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          child: tiles(Icons.home,_value == 7 ? Colors.orangeAccent: Colors.white54, "Moja"),
                        ),
                      ),
                      NeumorphicRadio(
                        style:  NeumorphicRadioStyle(
                          shape: NeumorphicShape.concave,
                          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                          lightSource: null,
                          intensity: 0,
                          selectedColor: radioButtonColor,
                          unselectedColor: radioButtonColorUn,
                          selectedDepth: 18,
                          unselectedDepth: -12,
                        ),
                        value: 8,
                        groupValue: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = 8;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          child: tiles(Icons.home,_value == 8 ? Colors.orangeAccent: Colors.white54, "Moja"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            const Padding(
              padding: EdgeInsets.only(left:10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Worth attention", style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),),
              ),
            ),
            const SizedBox(height: 15,),
            Flexible(
              child: SizedBox(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  child: MediaQuery.removePadding(
                    context: context,
                    removeTop: true,
                    child: ScrollConfiguration(
                      behavior: const MaterialScrollBehavior()
                          .copyWith(overscroll: false),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 12,
                        shrinkWrap: true,
                      itemBuilder: (context,index) =>
                          Padding(
                            padding: const EdgeInsets.only(left: 5,right: 5, bottom: 5),
                            child: listRows(Colors.black, "Promotions", Colors.blue[300]!),
                          ),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20,),
            const Padding(
              padding: EdgeInsets.only(left:10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Results", style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),),
              ),
            ),
            const SizedBox(height: 15,),
            Flexible(
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  removeBottom: true,
                  child: ScrollConfiguration(
                    behavior: const MaterialScrollBehavior()
                        .copyWith(overscroll: false),
                    child: ListView.builder(
                      itemCount: 12,
                      itemBuilder: (context,index) =>
                          Padding(
                            padding: const EdgeInsets.only(left: 5,right: 5, bottom: 5),
                            child: listRows(Colors.black, "list of results", Colors.blueGrey[200]!),
                          ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


Widget menuItem(color,icon,offset1, offset2, page){
  return Container(
    height: 80,
    width: 80,
    decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        boxShadow: [
           BoxShadow(
            offset: offset1,
            color: Colors.orange[100]!,
             blurRadius: 2,
            spreadRadius: 1,
          ),
          BoxShadow(
            offset: offset2,
            color: Colors.grey[700]!,
            blurRadius: 2,
            spreadRadius: 1,
          ),
        ]
    ),
    child: Builder(
        builder: (BuildContext context) => Material(
        color: Colors.transparent,
        shape: const CircleBorder(),
        clipBehavior: Clip.hardEdge,
        child: IconButton(
          splashColor: Colors.deepPurpleAccent,
           icon: Icon(icon, size: 34, color: Colors.white,),
          onPressed: () {
         Navigator.push(context,
          MaterialPageRoute(builder: (context) => page),);
      },
    ),
    ),
    ),
  );
}


Widget listRows(Color color1, String title, Color boxcolor) {
  return Container(
    height: 70,
    width: 220,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: boxcolor,
    ),
    child: ListTile(
      title: Padding(
        padding: const EdgeInsets.only(top:8, left: 10, right: 10),
        child: Text(title,textAlign: TextAlign.center, style: const TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),),
      ),
    ),
  );
}



Widget tiles(IconData icon, Color color, String title) {
  return Container(
    height: 90,
    width: 90,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      ),
    child: ListTile(
      title: Icon(icon, size: 45, color: color),
      subtitle: Padding(
        padding: const EdgeInsets.only(top:8),
        child: Text(title,textAlign: TextAlign.center, style: TextStyle(color: color, fontSize: 13, fontWeight: FontWeight.bold),),
      ),
    ),
  );
}

