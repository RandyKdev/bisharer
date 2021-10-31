import 'dart:io';

import 'package:flutter/material.dart';
import 'package:bisharer/generateInfo.dart';
import 'package:image_picker/image_picker.dart';

class ImageUpload extends StatefulWidget {
  const ImageUpload({Key? key}) : super(key: key);

  @override
  _ImageUploadState createState() => _ImageUploadState();
}

class _ImageUploadState extends State<ImageUpload> {
  XFile? _imagePicked;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        OutlinedButton(
          onPressed: _pickImage,
          child: Text("Change Profile Pic"),
        ),
        SizedBox(
          width: 50,
          height: 50,
          child: _imagePicked == null
              ? Image.network(
                  getRandomImage(),
                  fit: BoxFit.cover,
                )
              : Image.file(File(_imagePicked!.path)),
        ),
      ],
    );
  }

  void _pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image == null) return;
    setState(() {
      _imagePicked = image;
    });
  }
}
