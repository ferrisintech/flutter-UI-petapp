import 'dart:io';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:pet_app/dialogs/avatar.dart';
import 'package:pet_app/dialogs/profile_data.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
            children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (BuildContext context) =>
                            SingleChildScrollView(
                             child: AlertDialog(
                            insetPadding: const EdgeInsets.only(
                                top: 100, right: 100, left: 100),
                            backgroundColor: Colors.grey[300],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0)),
                                 actions: const [
                                   AddAvatarDialog(),
                            ],
                          ),
                          ),
                      );
                    },
                    child: Neumorphic(
                      style: const NeumorphicStyle(
                        shape: NeumorphicShape.convex,
                        boxShape: NeumorphicBoxShape.circle(),
                      ),
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.orange[300]!,
                            width: 3,
                          ),
                          color: Colors.grey[350],
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            barrierDismissible: false,
                            context: context,
                            builder: (BuildContext context) =>
                                SingleChildScrollView(
                                  child: AlertDialog(
                                    insetPadding: const EdgeInsets.only(
                                        top: 70, right: 80, left: 80),
                                    backgroundColor: Colors.grey[300],
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10.0)),
                                    actions: const [
                                      AddProfileDataDialog(),
                                    ],
                                  ),
                                ),
                          );
                        },
                        child: Neumorphic(
                          style: const NeumorphicStyle(
                            shape: NeumorphicShape.convex,
                          ),
                          child: Container(
                            height: 160,
                            width: 150,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.blueGrey[200]!,
                                width: 2,
                              ),
                              color: Colors.grey[350],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Expanded(
                                  child: Text(
                                    "Pet name",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 22),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Expanded(
                                  child: Text(
                                    "Pet age",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 21),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Expanded(
                                  child: Text(
                                    "Pet gender",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Expanded(
                                  child: Text(
                                    "Pet race",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Events",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) => const ListTile(
                      leading: Text(
                        "20",
                        style: TextStyle(color: Colors.black, fontSize: 26),
                      ),
                      title: Text(
                        "June 2022",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      subtitle: Text(
                        "10:25",
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                      trailing: Text(
                        "Doctor visit",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Activites",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 6,
                    itemBuilder: (context, index) => const ListTile(
                      leading: Text(
                        "20",
                        style: TextStyle(color: Colors.black, fontSize: 26),
                      ),
                      title: Text(
                        "June 2022",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      subtitle: Text(
                        "10:25",
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                      trailing: Text(
                        "Park walk",
                        style: TextStyle(color: Colors.black, fontSize: 18),
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
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (BuildContext context) =>
                          SingleChildScrollView(
                            child: AlertDialog(
                              insetPadding: const EdgeInsets.only(
                                  top: 100, right: 100, left: 100),
                              backgroundColor: Colors.grey[300],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0)),
                              actions: const [
                                AddAvatarDialog(),
                              ],
                            ),
                          ),
                    );
                  },
                  child: Neumorphic(
                    style: const NeumorphicStyle(
                      shape: NeumorphicShape.convex,
                      boxShape: NeumorphicBoxShape.circle(),
                    ),
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.orange[300]!,
                          width: 3,
                        ),
                        color: Colors.grey[350],
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (BuildContext context) =>
                              SingleChildScrollView(
                                child: AlertDialog(
                                  insetPadding: const EdgeInsets.only(
                                      top: 70, right: 80, left: 80),
                                  backgroundColor: Colors.grey[300],
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0)),
                                  actions: const [
                                    AddProfileDataDialog(),
                                  ],
                                ),
                              ),
                        );
                      },
                      child: Neumorphic(
                        style: const NeumorphicStyle(
                          shape: NeumorphicShape.convex,
                        ),
                        child: Container(
                          height: 160,
                          width: 150,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.blueGrey[200]!,
                              width: 2,
                            ),
                            color: Colors.grey[350],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Expanded(
                                child: Text(
                                  "Pet name",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 22),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Expanded(
                                child: Text(
                                  "Pet age",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 21),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Expanded(
                                child: Text(
                                  "Pet gender",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Expanded(
                                child: Text(
                                  "Pet race",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Events",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) => const ListTile(
                    leading: Text(
                      "20",
                      style: TextStyle(color: Colors.black, fontSize: 26),
                    ),
                    title: Text(
                      "June 2022",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                    subtitle: Text(
                      "10:25",
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                    trailing: Text(
                      "Doctor visit",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Activites",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 6,
                  itemBuilder: (context, index) => const ListTile(
                    leading: Text(
                      "20",
                      style: TextStyle(color: Colors.black, fontSize: 26),
                    ),
                    title: Text(
                      "June 2022",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                    subtitle: Text(
                      "10:25",
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                    trailing: Text(
                      "Doctor visit",
                      style: TextStyle(color: Colors.black, fontSize: 18),
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
