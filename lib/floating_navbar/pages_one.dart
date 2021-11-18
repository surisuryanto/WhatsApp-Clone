// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

File? _image;
//digunakan untuk menampung image
Future<void> openCamera() async {
  //fuction openCamera();
  final pickedImage = await ImagePicker().getImage(source: ImageSource.camera);

  setState(() {
    // tempat untuk set state image
    _image = File(pickedImage!.path);
  });
}

void setState(Null Function() param0) {}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
            child:
                _image == null ? const Text("No Image") : Image.file(_image!)),
        floatingActionButton: FloatingActionButton(
            child: const Icon(
              Icons.add_a_photo,
              color: Colors.white,
            ),
            backgroundColor: Colors.green,
            onPressed: () {
              openCamera();
            }),
      ),
    );
  }
}
