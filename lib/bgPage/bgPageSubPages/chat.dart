import 'dart:io';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Platform.isIOS ? Padding(
          padding: const EdgeInsets.only(top:25),
          child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 50,
              width: 300,
              padding: const EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.pink[200]!, width: 2),
                color: Colors.white70,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const TextField(
                style: TextStyle(color: Colors.black),
                cursorColor: Colors.purple,
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
            const SizedBox(
              height: 20,
            ),
            Flexible(
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: ScrollConfiguration(
                    behavior: const MaterialScrollBehavior()
                        .copyWith(overscroll: false),
                    child: ListView.builder(
                      itemCount: 12,
                      itemBuilder: (context, index) => Padding(
                        padding:
                            const EdgeInsets.only(left: 5, right: 5, bottom: 5),
                        child:
                         buildChatList(),
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
        children: [
          const SizedBox(
            height: 40,
          ),
          Container(
            height: 50,
            width: 300,
            padding: const EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.pink[200]!, width: 2),
              color: Colors.white70,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const TextField(
              style: TextStyle(color: Colors.black),
              cursorColor: Colors.purple,
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
          const SizedBox(
            height: 20,
          ),
          Flexible(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: ScrollConfiguration(
                  behavior: const MaterialScrollBehavior()
                      .copyWith(overscroll: false),
                  child: ListView.builder(
                    itemCount: 12,
                    itemBuilder: (context, index) => Padding(
                      padding:
                      const EdgeInsets.only(left: 5, right: 5, bottom: 5),
                      child:
                      buildChatList(),
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

  Neumorphic buildChatList() {
    return Neumorphic(
                  style: const NeumorphicStyle(
                  shape: NeumorphicShape.flat,
                    color: Colors.white,
                  ),
                  child: SizedBox(
                    height: 70,
                    width: 200,
                    child: Dismissible(
                      key: GlobalKey(),
                      background: Container(color: Colors.red[200],),
                      direction: DismissDirection.startToEnd,
                      onDismissed: (direction) {
                        setState(() {
                        });
                      },
                    child: ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.circle_outlined, color: Colors.pink[300],size: 17,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                             Neumorphic(
                                style: const NeumorphicStyle(
                                  shape: NeumorphicShape.convex,
                                  boxShape: NeumorphicBoxShape.circle(),
                                ),
                                child: Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey[250],
                                  ),
                                ),
                              ),
                              const SizedBox(width: 20,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  SizedBox(height: 5,),
                                  Text("username",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 16),),
                                  SizedBox(height: 15,),
                                  Text("message imowe",style: TextStyle(color: Colors.black54, fontSize: 15),),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(width: 60,),
                          Text("data",style: TextStyle(color: Colors.blueGrey[300], fontSize: 13),)
                        ],
                      ),
                    ),
                  ),
                ),
    );
  }
}

