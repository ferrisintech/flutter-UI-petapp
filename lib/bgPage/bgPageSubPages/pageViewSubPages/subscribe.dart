
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:pet_app/providers/planProvider.dart';
import 'package:provider/provider.dart';
import '../../../providers/screenIndexProvider.dart';

class SubscribePage extends StatefulWidget {
  const SubscribePage({Key? key}) : super(key: key);


  @override
  State<SubscribePage> createState() => _SubscribePageState();
}

class _SubscribePageState extends State<SubscribePage> {
  bool value = false;

  int index = 0;


  @override
  Widget build(BuildContext context) {
    final _screenindexprovider = Provider.of<ScreenIndexProvider>(context);
    final _planprovider = Provider.of<PlanProvider>(context);
    bool currentPlan = _planprovider.fetchCurrentPlan;

    return Scaffold(
         resizeToAvoidBottomInset: false,
         body: Platform.isIOS ? Padding(
           padding: const EdgeInsets.only(top:25),
         child: SizedBox(
           height: MediaQuery.of(context).size.height,
           width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                const SizedBox(height: 40,),
                const Text("Choose the best plan for You", style: TextStyle(color: Colors.black, fontSize: 23, fontWeight: FontWeight.bold),),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text("Pay Monthly", style: TextStyle(color: Colors.black, fontSize: 20),),
                CupertinoSwitch(
                    value: value,
                    activeColor: Colors.blue[300],
                    onChanged: (value) => setState(() {
                      this.value = value;
                    }),
                ),

                    const Text("Pay Yearly", style: TextStyle(color: Colors.black, fontSize: 20),),
                ],
                ),
                const SizedBox(height: 20,),
                Column(
                  children: [
                    Neumorphic(
                        child: Container(
                          height: 280,
                          width: 280,
                          alignment: Alignment.topCenter,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.orange[300]!, width: 2),
                            color: Colors.grey[350],
                          ),
                          child: Column(
                            children: [
                               Padding(
                                padding: const EdgeInsets.only(top:10),
                                child: Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: const [
                                    Icon(Icons.star, color: Colors.orangeAccent, size: 38,),
                                    Text("Full Power", style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),),
                                    Icon(Icons.star, color: Colors.orangeAccent, size: 38,),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10,),
                              value ? const Text("\$20", style:  TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),) :
                              const Text("\$2", style:  TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),),
                              const SizedBox(height: 30,),
                              ElevatedButton(
                                  onPressed: currentPlan ? () {
                                  setState(() {
                                    currentPlan = false;
                                    _planprovider.updatePlan(currentPlan);
                                    _screenindexprovider.updateScreenIndex(index);
                                  });
                                }
                                : null,
                                style: ButtonStyle(
                                  backgroundColor: currentPlan ? MaterialStateProperty.all<Color>(Colors.blue) : MaterialStateProperty.all<Color>(Colors.white70),
                                ),
                                child: currentPlan ? const Text("Choose") : const Text("Active"),
                              ),
                            ],
                          ),
                        ),
                    ),
                      const SizedBox(height: 15,),
                      Neumorphic(
                      child: Container(
                        height: 280,
                        width: 280,
                        color: Colors.grey[350],
                        alignment: Alignment.topCenter,
                        child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top:10),
                                child: Text("Base Mode", style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),),
                              ),
                               const SizedBox(height: 10,),
                               const Text("FREE", style:  TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),),
                               const SizedBox(height: 90,),
                              ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: currentPlan ? MaterialStateProperty.all<Color>(Colors.white70) : MaterialStateProperty.all<Color>(Colors.blue),
                                ),
                                onPressed: currentPlan ? null : () {
                                    setState(() {
                                      currentPlan = true;
                                      _planprovider.updatePlan(currentPlan);
                                     _screenindexprovider.updateScreenIndex(index);
                                    });
                                },
                                child: currentPlan ? const Text("Active") : const Text("Choose"),
                              ),
                        ],
                        ),
                    ),
                     ),
                  ],
                ),
              ],
            ),
         ),
         ) : SizedBox(
           height: MediaQuery.of(context).size.height,
           width: MediaQuery.of(context).size.width,
           child: Column(
             children: [
               const SizedBox(height: 40,),
               const Text("Choose the best plan for You", style: TextStyle(color: Colors.black, fontSize: 23, fontWeight: FontWeight.bold),),
               const SizedBox(height: 10,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   const Text("Pay Monthly", style: TextStyle(color: Colors.black, fontSize: 20),),

                   CupertinoSwitch(
                     value: value,
                     activeColor: Colors.blue[300],
                     onChanged: (value) => setState(() {
                        this.value = value;
                     }),
                   ),

                   const Text("Pay Yearly", style: TextStyle(color: Colors.black, fontSize: 20),),
                 ],
               ),
               const SizedBox(height: 20,),
               Column(
                 children: [
                   Neumorphic(
                     child: Container(
                       height: 280,
                       width: 280,
                       alignment: Alignment.topCenter,
                       decoration: BoxDecoration(
                         border: Border.all(color: Colors.orange[300]!, width: 2),
                         color: Colors.grey[350],
                       ),
                       child: Column(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(top:10),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                               children: const [
                                 Icon(Icons.star, color: Colors.orangeAccent, size: 38,),
                                 Text("Full Power", style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),),
                                 Icon(Icons.star, color: Colors.orangeAccent, size: 38,),
                               ],
                             ),
                           ),
                           const SizedBox(height: 10,),
                           value ? const Text("\$20", style:  TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),) :
                           const Text("\$2", style:  TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),),
                           const SizedBox(height: 30,),
                           ElevatedButton(
                             onPressed: currentPlan ? () {
                               setState(() {
                                 currentPlan = true;
                                 _planprovider.updatePlan(currentPlan);
                                 _screenindexprovider.updateScreenIndex(index);
                               });
                             } : null,
                             style: ButtonStyle(
                               backgroundColor: currentPlan ? MaterialStateProperty.all<Color>(Colors.blue) : MaterialStateProperty.all<Color>(Colors.white70),
                             ),
                             child: currentPlan ? const Text("Choose") : const Text("Active"),
                           ),
                         ],
                       ),
                     ),
                   ),
                   const SizedBox(height: 15,),
                   Neumorphic(
                     child: Container(
                       height: 280,
                       width: 280,
                       color: Colors.grey[350],
                       alignment: Alignment.topCenter,
                       child: Column(
                         children: [
                           const Padding(
                             padding: EdgeInsets.only(top:10),
                             child: Text("Base Mode", style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),),
                           ),
                           const SizedBox(height: 10,),
                           const Text("FREE", style:  TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),),
                           const SizedBox(height: 90,),
                           ElevatedButton(
                             style: ButtonStyle(
                               backgroundColor: currentPlan ? MaterialStateProperty.all<Color>(Colors.white70) : MaterialStateProperty.all<Color>(Colors.blue),
                             ),
                             onPressed: currentPlan ? null : () {
                               setState(() {
                                 currentPlan = true;
                                 _planprovider.updatePlan(currentPlan);
                                 _screenindexprovider.updateScreenIndex(index);
                               });
                             },
                             child: currentPlan ? const Text("Active") : const Text("Choose"),
                           ),
                         ],
                       ),
                     ),
                   ),
                 ],
               ),
             ],
           ),
         ),
       );
  }
}

