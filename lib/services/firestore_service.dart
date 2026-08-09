import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> createUser({
    required String uid,
    required String preferredName,
    required String email,
  }) async {
    await _firestore.collection('users').doc(uid).set({
      'preferredName': preferredName,
      'email': email,
      'createdAt': FieldValue.serverTimestamp(),
    });
  }

  Future<Map<String, dynamic>?> getUser(String uid) async {
    debugPrint("===== FIRESTORE USER LOAD =====");
    debugPrint("UID being requested: $uid");

    try {
      final doc = await _firestore
          .collection('users')
          .doc(uid)
          .get(
        const GetOptions(
          source: Source.server,
        ),
      );

      debugPrint("Firestore document exists: ${doc.exists}");
      debugPrint("Firestore data: ${doc.data()}");

      return doc.data();
    } on FirebaseException catch (e) {
      debugPrint("===== FIRESTORE EXCEPTION =====");
      debugPrint("Code: ${e.code}");
      debugPrint("Message: ${e.message}");
      debugPrint("Plugin: ${e.plugin}");
      rethrow;
    } catch (e) {
      debugPrint("===== UNKNOWN FIRESTORE ERROR =====");
      debugPrint(e.toString());
      rethrow;
    }
  }
  Future<void> updateUser({
    required String uid,
    String? preferredName,
    String? university,
    List<String>? modules,
  }) async {
    final Map<String, dynamic> data = {};

    if (preferredName != null) {
      data['preferredName'] = preferredName;
    }

    if (university != null) {
      data['university'] = university;
    }

    if (modules != null) {
      data['modules'] = modules;
    }

    await _firestore
        .collection('users')
        .doc(uid)
        .update(data);
  }
}