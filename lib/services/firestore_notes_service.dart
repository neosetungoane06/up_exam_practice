import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreNotesService {
  FirestoreNotesService._();

  static final FirebaseFirestore _firestore =
      FirebaseFirestore.instance;

  /// Loads one WTW134 note from Firestore.
  ///
  /// Firestore structure:
  ///
  /// modules
  ///   └── WTW134
  ///       └── themes
  ///           └── theme1_functions_and_change
  ///               └── subtopics
  ///                   └── introduction_to_functions
  static Future<Map<String, dynamic>?> getNote({
    required String module,
    required String theme,
    required String subtopic,
  }) async {
    final document = await _firestore
        .collection('modules')
        .doc(module)
        .collection('themes')
        .doc(theme)
        .collection('subtopics')
        .doc(subtopic)
        .get();

    if (!document.exists) {
      return null;
    }

    return document.data();
  }
}