import 'dart:io';
import 'package:path/path.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path_provider/path_provider.dart';

class FirebaseData {
  static UploadTask? uploiding(String cheminFireBase, File file) {
    final ref = FirebaseStorage.instance.ref(cheminFireBase);

    return ref.putFile(file);
  }

  static Future<File> loading(String url) async {
    final refPDF = FirebaseStorage.instance.ref().child(url);
    final bytes = await refPDF.getData();

    return _storeFile(url, bytes!);
  }

  static Future<File> _storeFile(String url, List<int> bytes) async {
    final filename = basename(url);
    final dir = await getApplicationDocumentsDirectory();

    final file = File('${dir.path}/$filename');
    await file.writeAsBytes(bytes, flush: true);
    return file;
  }
}
