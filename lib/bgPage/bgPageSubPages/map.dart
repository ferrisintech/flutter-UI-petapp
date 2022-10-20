
import 'package:flutter/material.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: Container(
           height: MediaQuery.of(context).size.height,
           width: MediaQuery.of(context).size.width,
            color: Colors.white,
            alignment: Alignment.center,
            child: const Text("Google maps",style: TextStyle(color: Colors.black, fontSize: 29),),
          //color: Colors.red[200]!,

        )
    );
  }
}