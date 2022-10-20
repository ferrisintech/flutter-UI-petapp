import 'package:flutter/material.dart';

class AddProfileDataDialog extends StatefulWidget {
  const AddProfileDataDialog({Key? key}) : super(key: key);

  @override
  State<AddProfileDataDialog> createState() => _AddProfileDataDialogState();
}


class _AddProfileDataDialogState extends State<AddProfileDataDialog> {

  var _petName, _petAge, _petGender, _petRace;


  final _petNameCon = TextEditingController();
  final _petAgeCon = TextEditingController();
  final _petGenderCon = TextEditingController();
  final _petRaceCon = TextEditingController();

  @override
  void initState() {
    super.initState();
    _petNameCon.addListener(_updateText);
    _petAgeCon.addListener(_updateText);
    _petGenderCon.addListener(_updateText);
    _petRaceCon.addListener(_updateText);
  }

  @override
  void dispose(){
    _petNameCon.dispose();
    _petAgeCon.dispose();
    _petGenderCon.dispose();
    _petRaceCon.dispose();
    super.dispose();
  }

  void _updateText(){
    setState(() {
      _petName = _petNameCon.text;
      _petAge = _petAgeCon.text;
      _petGender = _petGenderCon.text;
      _petRace = _petRaceCon.text;
    });
  }


  @override
  Widget build(BuildContext context) {

    return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),

    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Center(
            child: Text(
              "Modify data",
              style: TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17),
            )),
        const SizedBox(
          height: 20,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildTextField(_petNameCon, "Pet name"),
            const SizedBox(height: 10,),
            _buildTextField(_petAgeCon, "Pet age"),
            const SizedBox(height: 10,),
            _buildTextField(_petGenderCon, "Pet gender"),
            const SizedBox(height: 10,),
            _buildTextField(_petRaceCon, "Pet race"),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildCancelButton(),
                _buildSaveButton(),
              ],
            ),
          ],
        ),
      ],
    ),
    );
  }

  _buildTextField(controller, labelname) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          labelText: labelname,
          labelStyle: const TextStyle(
              fontSize: 14,
             // color: Colors.grey[500],
          ),
          border: OutlineInputBorder(),
      ),
    );
  }

  _buildSaveButton() {
    return TextButton(
      onPressed: () {
        Navigator.of(context).pop();
      },

      child: const Text("Save"),
      style: TextButton.styleFrom(
        foregroundColor: Colors.red, splashFactory: NoSplash.splashFactory,
        shadowColor: Colors.transparent,
        textStyle: const TextStyle(
          fontSize: 17,
        ),
      ),
    );
  }


  _buildCancelButton() {
    return TextButton(
      onPressed: () {
        Navigator.of(context).pop();
      },

      child: const Text("Cancel"),
      style: TextButton.styleFrom(
        foregroundColor: Colors.blue, splashFactory: NoSplash.splashFactory,
        shadowColor: Colors.transparent,
        textStyle: const TextStyle(
          fontSize: 15,
        ),
      ),
    );
  }


}
