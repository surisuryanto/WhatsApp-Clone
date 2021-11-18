// ignore_for_file: deprecated_member_use, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'package:lottie/lottie.dart';

class AccessCameraPage extends StatefulWidget {
  const AccessCameraPage({Key? key}) : super(key: key);

  @override
  _AccessCameraPageState createState() => _AccessCameraPageState();
}

class _AccessCameraPageState extends State<AccessCameraPage> {
  File? _image;
  //digunakan untuk menampung image
  Future<void> openCamera() async {
    //fuction openCamera();
    final pickedImage =
        await ImagePicker().getImage(source: ImageSource.camera);

    setState(() {
      // tempat untuk set state image
      _image = File(pickedImage!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Access Camera"),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: FloatingActionButton(
      //   child: const Icon(
      //     Icons.add_a_photo,
      //     color: Colors.white,
      //   ),
      //   backgroundColor: Colors.green,
      //   onPressed: () {
      //     openCamera();
      //   },
      // ),
      body: Container(
        child: Column(
          children: [
            const SizedBox(
              height: 70,
            ),
            LottieBuilder.asset('assets/notfound.json'),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: _image == null
                  ? const Text(
                      'Belum ada status',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black26,
                      ),
                    )
                  : Image.file(_image!),
            ),
            const SizedBox(
              height: 230,
            ),
            // Padding(
            //   padding: const EdgeInsets.only(left: 300),
            //   child: InkWell(
            //     onTap: () {
            //       openCamera();
            //     },
            //     child: Container(
            //       height: 50,
            //       width: 50,
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(30),
            //         color: Colors.greenAccent.shade700,
            //       ),
            //       child: const Icon(
            //         Icons.add_a_photo,
            //         color: Colors.white70,
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
      // memulai floating button
    );
  }
}
