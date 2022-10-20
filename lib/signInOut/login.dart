
import 'dart:async';

import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../bgPage/background.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);


  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final formKey = GlobalKey<FormState>();

  late String _email, _pass;

  final _emailConLogin = TextEditingController();
  final _passConLogin = TextEditingController();

  final _emailConRegister = TextEditingController();
  final _passConRegister = TextEditingController();
  final _passConConfirmRegister = TextEditingController();


  bool isLoginScreen = true;

  double loginScreenH = 420;
  double registerScreenH = 470;

  bool isNetwork = false;

  late StreamSubscription internetSub;

  @override
  void initState() {
    super.initState();
    _emailConLogin.addListener(_updateText);
    _passConLogin.addListener(_updateText);

    internetSub = InternetConnectionChecker().onStatusChange.listen((event) {
      final isNetwork = event == InternetConnectionStatus.connected;

      setState(() {
          this.isNetwork = isNetwork;
      });
    });

  }

  @override
  void dispose(){
    _emailConLogin.dispose();
    _passConLogin.dispose();
    _emailConRegister.dispose();
    _passConRegister.dispose();
    _passConConfirmRegister.dispose();
    internetSub.cancel();

    super.dispose();
  }

  void _updateText(){
    setState(() {
      _email = _emailConLogin.text;
      _pass = _passConLogin.text;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: isNetwork ?
        null
        :Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:const [
            Icon(Icons.error_outline, color: Colors.red,),
            SizedBox(width: 5,),
            Text("No Internet", style: TextStyle(color: Colors.black),),
          ],
        ),
        centerTitle: true,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20,),
              Neumorphic(
                  child: Container(
                    height: isLoginScreen ? loginScreenH : registerScreenH,
                    width: 300,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.cyan[600]!, width: 2),
                      color: Colors.grey[350],
                    ),
                child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isLoginScreen = true;
                              if(isLoginScreen == true){
                                registerScreenH = 470;
                              }
                            });
                          },
                        child: Column(
                          children: [
                            Text("LOGIN", style: TextStyle(color: isLoginScreen ? Colors.black : Colors.grey[500], fontSize: 17, fontWeight: FontWeight.bold),),
                            Container(
                              height: 2,
                              width: 50,
                              color: isLoginScreen ? Colors.orange[400] : Colors.grey[500],
                            )
                          ],
                        ),
                        ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isLoginScreen = false;
                                  if(isLoginScreen == false){
                                    loginScreenH = 420;
                                  }
                                });
                              },
                        child: Column(
                          children: [
                            Text("REGISTER", style: TextStyle(color: isLoginScreen ? Colors.grey[500]: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),),
                            Container(
                              height: 2,
                              width: 80,
                              color: isLoginScreen ? Colors.grey[500]:Colors.orange[400] ,
                            )
                          ],
                        ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15,),
                        if(isLoginScreen)  //login
                          AnimatedContainer(
                            duration: const Duration(microseconds: 700),
                          alignment: Alignment.center,
                          child: Form(
                           key: formKey,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20, right: 20),
                                child: _buildLoginEmailField(_emailConLogin, "Email"),
                              ),
                              const SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsets.only(left: 20, right: 20),
                                child: _buildLoginPasswordField(_passConLogin, "Password"),
                              ),
                             Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 20,),
                                  child: TextButton(
                                    style:  ButtonStyle(
                                      overlayColor: MaterialStateProperty.all(Colors.transparent),
                                    ),
                                    onPressed: () {},
                                    child: const Text("Forgot Password ?",style: TextStyle(color: Colors.black45, fontSize: 12, fontStyle: FontStyle.italic),),
                                  ),
                                ),
                              ),
                              //const SizedBox(height: 5,),
                             ElevatedButton(
                                onPressed: (){
                                    if(formKey.currentState!.validate()){
                                      Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => const BackgroundPage()),
                                      );
                                    }else{
                                      setState(() {
                                        loginScreenH = 465;
                                      });
                                    }
                                },
                                style: ButtonStyle(
                                  shadowColor: MaterialStateProperty.all<Color>(Colors.transparent),
                                  splashFactory: NoSplash.splashFactory,
                                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                                ),
                                child: const Text("Log In"),
                              ),
                              const SizedBox(height: 15,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                      width: 30,
                                      height: 1,
                                      color: Colors.black,
                                    ),
                                  const SizedBox(width: 15,),
                                  const Text("or", style: TextStyle(color: Colors.black, fontSize: 20),),
                                  const SizedBox(width: 15,),
                                    Container(
                                      width: 30,
                                      height: 1,
                                      color: Colors.black,
                                    ),
                                ],
                              ),
                              const SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                   _buildSocialButton(FontAwesomeIcons.google, LightSource.top),
                                    const SizedBox(width: 30,),
                                    _buildSocialButton(FontAwesomeIcons.twitter, LightSource.top),
                                    const SizedBox(width: 30,),
                                    _buildSocialButton(FontAwesomeIcons.linkedin, LightSource.top),
                                ],
                              ),
                            ],
                          ),
                          ),
                          ),
                        const SizedBox(height: 10,),
                        if(!isLoginScreen)  // register !!!!
                        AnimatedContainer(
                          duration: const Duration(microseconds: 700),
                          curve: Curves.bounceInOut,
                          child: Form(
                            key: formKey,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  _buildSocialButton(FontAwesomeIcons.google, LightSource.top),
                                  const SizedBox(width: 30,),
                                  _buildSocialButton(FontAwesomeIcons.twitter, LightSource.top),
                                  const SizedBox(width: 30,),
                                  _buildSocialButton(FontAwesomeIcons.linkedin, LightSource.top),
                                ],
                              ),
                              const SizedBox(height: 15,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                      width: 30,
                                      height: 1,
                                      color: Colors.black,
                                    ),
                                  const SizedBox(width: 15,),
                                  const Text("or", style: TextStyle(color: Colors.black, fontSize: 20),),
                                  const SizedBox(width: 15,),
                                    Container(
                                      width: 30,
                                      height: 1,
                                      color: Colors.black,
                                    ),
                                ],
                              ),
                              const SizedBox(height: 20,),
                              Padding(
                                padding: const EdgeInsets.only(left: 20, right: 20),
                                child: _buildRegisterEmailField(_emailConRegister, "Email"),
                              ),
                              const SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsets.only(left: 20, right: 20),
                                child: _buildRegisterPasswordField(_passConRegister, "Password"),
                              ),
                              const SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsets.only(left: 20, right: 20),
                                child: _buildRegisterPasswordField(_passConConfirmRegister, "Confirm Password"),
                              ),
                              const SizedBox(height: 30,),
                              ElevatedButton(
                                onPressed: (){
                                    if(formKey.currentState!.validate()){
                                      Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => const LoginPage()),
                                      );
                                    } else {

                                      Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => const BackgroundPage()),
                                      );
                                     // setState(() {
                                     //   registerScreenH = 535;
                                     // });

                                    }
                                },
                                style: ButtonStyle(
                                  shadowColor: MaterialStateProperty.all<Color>(Colors.transparent),
                                  splashFactory: NoSplash.splashFactory,
                                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                                ),
                                child: const Text("Sign Up"),
                              ),
                            ],
                          ),
                          ),
                        ),
                      ],
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

_buildLoginEmailField(controller, labelname) {
  return TextFormField(
    validator: (value) {
      if (value!.isEmpty || !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}').hasMatch(value)) {
        return 'Enter correct $labelname';
      }else{
        return null;
      }
    },
    controller: controller,
    decoration: InputDecoration(
      labelText: labelname,
      labelStyle: const TextStyle(
        fontSize: 15,
      ),
      border: const OutlineInputBorder(),
    ),
    keyboardType: TextInputType.emailAddress,
  );
}


_buildLoginPasswordField(controller, labelname) {
  return TextFormField(
    validator: (value) {
      if (value!.isEmpty || value.length < 6) {
        return '$labelname must be at least 6 characters';
      }else {
        return null;
      }
    },
    controller: controller,
    decoration: InputDecoration(
      labelText: labelname,
      labelStyle: const TextStyle(
        fontSize: 15,
      ),
      border: const OutlineInputBorder(),
    ),
  );
}



_buildRegisterEmailField(controller, labelname) {
  return TextFormField(
    validator: (value) {
      if (value!.isEmpty || !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}').hasMatch(value)) {
        return 'Enter correct $labelname';
      }else{
        return null;
      }
    },
    controller: controller,
    decoration: InputDecoration(
      labelText: labelname,
      labelStyle: const TextStyle(
        fontSize: 15,
      ),
      border: const OutlineInputBorder(),
    ),
    keyboardType: TextInputType.emailAddress,
  );
}

_buildRegisterPasswordField(controller, labelname) {
  return TextFormField(
    validator: (value) {
      if (value!.isEmpty || value.length < 6) {
        return '$labelname must be at least 6 characters';
      }else {
        return null;
      }
    },
    controller: controller,
    decoration: InputDecoration(
      labelText: labelname,
      labelStyle: const TextStyle(
        fontSize: 15,
      ),
      border: const OutlineInputBorder(),
    ),
  );
}


_buildSocialButton(icon,light) {
  return SizedBox(
    height: 55,
    width: 55,
  child:NeumorphicButton(
    onPressed: () {},
    style:  NeumorphicStyle(
        shape: NeumorphicShape.convex,
        boxShape: const NeumorphicBoxShape.circle(),
        depth: 5,
        lightSource: light,
        color: Colors.white54,
    ),
    child: Icon(icon, size: 25),
  ),
  );
}

