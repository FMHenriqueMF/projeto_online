import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NovosRecord extends FirestoreRecord {
  NovosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "telefone" field.
  String? _telefone;
  String get telefone => _telefone ?? '';
  bool hasTelefone() => _telefone != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _telefone = snapshotData['telefone'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('novos');

  static Stream<NovosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NovosRecord.fromSnapshot(s));

  static Future<NovosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NovosRecord.fromSnapshot(s));

  static NovosRecord fromSnapshot(DocumentSnapshot snapshot) => NovosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NovosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NovosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NovosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NovosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNovosRecordData({
  String? nome,
  String? telefone,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'telefone': telefone,
    }.withoutNulls,
  );

  return firestoreData;
}

class NovosRecordDocumentEquality implements Equality<NovosRecord> {
  const NovosRecordDocumentEquality();

  @override
  bool equals(NovosRecord? e1, NovosRecord? e2) {
    return e1?.nome == e2?.nome && e1?.telefone == e2?.telefone;
  }

  @override
  int hash(NovosRecord? e) => const ListEquality().hash([e?.nome, e?.telefone]);

  @override
  bool isValidKey(Object? o) => o is NovosRecord;
}
