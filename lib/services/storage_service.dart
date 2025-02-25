import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:path/path.dart' as path;

class StorageService {
  final firebase_storage.FirebaseStorage storage =
      firebase_storage.FirebaseStorage.instance;

  Future<void> uploadFile(
      String filePath, String fileName, String destination) async {
    File file = File(filePath);
    try {
      await storage.ref('$destination/$fileName').putFile(file);
    } on firebase_storage.FirebaseException catch (e) {
      print(e);
    }
  }

  Future<String> downloadURL(String destination) async {
    String downloadURL =
        await storage.ref(destination).getDownloadURL();
    return downloadURL;
  }
    Future<void> deleteFile(String fileUrl) async {
    try {
      await storage.refFromURL(fileUrl).delete();
    } on firebase_storage.FirebaseException catch (e) {
      print(e);
    }
  }

  Future<String> uploadAndGetDownloadUrl(String filePath, String destination) async {
    String fileName = path.basename(filePath);

    File file = File(filePath);
      
    try {
      await storage.ref('$destination/$fileName').putFile(file);
      String downloadURL =
        await storage.ref('$destination/$fileName').getDownloadURL();
          return downloadURL;
    } on firebase_storage.FirebaseException catch (e) {
      print(e);
      return "";
    }
  }
}