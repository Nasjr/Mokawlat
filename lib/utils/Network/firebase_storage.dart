import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mokawlat/utils/Network/firebase_custom_exceptions.dart';
import 'package:path_provider/path_provider.dart';

import '../helpers/snackbars.dart';

class FirebaseStroageClient {
  final storageRef =
      FirebaseStorage.instanceFor(bucket: "gs://my-custom-bucket").ref();

  // Create the file metadata
//     //final metadata =  SettableMetadata(contentType: "image/jpeg");

// Create a reference to the Firebase Storage bucket
//     final storageRef = FirebaseStorage.instance.ref();

// Upload file and metadata to the path 'images/mountains.jpg'
//     final uploadTask = storageRef
//         .child("images/path/to/mountains.jpg")
//         .putFile(file, metadata);
//     uploadTask.snapshotEvents.listen((TaskSnapshot taskSnapshot) {
//       switch (taskSnapshot.state) {
//         case TaskState.running:
//           final progress =
//               100.0 * (taskSnapshot.bytesTransferred / taskSnapshot.totalBytes);
//           print("Upload is $progress% complete.");
//           break;
//         case TaskState.paused:
//           print("Upload is paused.");
//           break;
//         case TaskState.canceled:
//           print("Upload was canceled");
//           break;
//         case TaskState.error:
//           // Handle unsuccessful uploads
//           break;
//         case TaskState.success:
//           // Handle successful uploads on complete
//           // ...
//           break;
//       }
//     });
//   }

  Future<File?> pickImage(BuildContext context) async {
    final picker = ImagePicker();
    final image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      return File(image.path);
    } else {
      showSnackBar(context, "Please pick an image", SnackBarType.error);
      return null;
    }
  }

  Future<void> uploadImage(BuildContext context, File image,
      String remoteFolder, String CategoryName) async {
    final storage = FirebaseStorage.instance;
    final time = DateTime.now()
        .millisecondsSinceEpoch
        .toString(); // Generate unique filename
    try {
      final reference =
          storage.ref().child('$remoteFolder/$CategoryName/$time');
      // final uploadTask =
      reference.putFile(image);
      // final snapshot = await uploadTask.whenComplete(() => showSnackBar(
      //     context, "File uploaded successfully", SnackBarType.success));
      // final progress = snapshot.bytesTransferred / snapshot.totalBytes * 100;
      // print('Upload progress: $progress%');

      // Get download URL after successful upload
      final downloadUrl = await reference.getDownloadURL();
      print(downloadUrl);
    } on FirebaseFirestoreException catch (e) {
      print(e.getMessage());
      showSnackBar(
          context, "Somthing Went Wrong While uploading", SnackBarType.error);
    }
  }
}
