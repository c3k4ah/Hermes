import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';

class FirebaseData {
  static UploadTask? uploiding(String cheminFireBase, File file) {
    final ref = FirebaseStorage.instance.ref(cheminFireBase);

    return ref.putFile(file);
  }
}
