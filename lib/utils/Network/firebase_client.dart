import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseClient {
  // Java
  static FirebaseFirestore db = FirebaseFirestore.instance;
  Future<DocumentSnapshot<Map<String, dynamic>>> getData(
      String collection, String? docId) async {
    return await db.collection(collection).doc(docId).get();
  }

  Future<void> deleteData(String collection, String? docId) async {
    return await db.collection(collection).doc(docId).delete();
  }
}
