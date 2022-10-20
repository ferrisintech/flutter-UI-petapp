import 'package:flutter/material.dart';

class AddAvatarDialog extends StatefulWidget {
  const AddAvatarDialog({Key? key}) : super(key: key);

  @override
  State<AddAvatarDialog> createState() => _AddAvatarDialogState();
}


class _AddAvatarDialogState extends State<AddAvatarDialog> {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Center(
            child: Text(
              "Choose a photo",
              style: TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17),
            )),
        const SizedBox(
          height: 20,
        ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildGalleryButton(),
                    _buildCameraButton(),
                  ],
                ),
                _buildCancelButton(),
              ],
            ),
      ],
    );

  }

  _buildGalleryButton() {
    return SizedBox(
      height: 70,
    child: ElevatedButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      style: ElevatedButton.styleFrom(
        splashFactory: NoSplash.splashFactory, backgroundColor: Colors.green,
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      child: const Icon(Icons.photo_outlined, size: 48),
    ),
    );
  }


  _buildCameraButton() {
    return SizedBox(
        height: 70,
    child: ElevatedButton(
      onPressed: () {
          Navigator.of(context).pop();
        },
      style: ElevatedButton.styleFrom(
        splashFactory: NoSplash.splashFactory, backgroundColor: Colors.green,
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),

      child: const Icon(Icons.photo_camera_outlined, size: 48,),
    ),
    );
  }

  _buildCancelButton() {
    return TextButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      style: TextButton.styleFrom(
        foregroundColor: Colors.blue, splashFactory: NoSplash.splashFactory,
        shadowColor: Colors.transparent,
        textStyle: const TextStyle(
          fontSize: 15,
        ),
      ),

      child: const Text("Cancel"),
    );
  }


}
