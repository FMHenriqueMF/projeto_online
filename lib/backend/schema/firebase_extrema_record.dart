import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FirebaseExtremaRecord extends FirestoreRecord {
  FirebaseExtremaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "fieldnamefirebaseextrema" field.
  int? _fieldnamefirebaseextrema;
  int get fieldnamefirebaseextrema => _fieldnamefirebaseextrema ?? 0;
  bool hasFieldnamefirebaseextrema() => _fieldnamefirebaseextrema != null;

  void _initializeFields() {
    _fieldnamefirebaseextrema =
        castToType<int>(snapshotData['fieldnamefirebaseextrema']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Firebase-extrema');

  static Stream<FirebaseExtremaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FirebaseExtremaRecord.fromSnapshot(s));

  static Future<FirebaseExtremaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FirebaseExtremaRecord.fromSnapshot(s));

  static FirebaseExtremaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FirebaseExtremaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FirebaseExtremaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FirebaseExtremaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FirebaseExtremaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FirebaseExtremaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFirebaseExtremaRecordData({
  int? fieldnamefirebaseextrema,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'fieldnamefirebaseextrema': fieldnamefirebaseextrema,
    }.withoutNulls,
  );

  return firestoreData;
}

class FirebaseExtremaRecordDocumentEquality
    implements Equality<FirebaseExtremaRecord> {
  const FirebaseExtremaRecordDocumentEquality();

  @override
  bool equals(FirebaseExtremaRecord? e1, FirebaseExtremaRecord? e2) {
    return e1?.fieldnamefirebaseextrema == e2?.fieldnamefirebaseextrema;
  }

  @override
  int hash(FirebaseExtremaRecord? e) =>
      const ListEquality().hash([e?.fieldnamefirebaseextrema]);

  @override
  bool isValidKey(Object? o) => o is FirebaseExtremaRecord;
}
