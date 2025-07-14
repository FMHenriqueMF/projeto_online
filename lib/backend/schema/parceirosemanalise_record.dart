import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ParceirosemanaliseRecord extends FirestoreRecord {
  ParceirosemanaliseRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "cidade" field.
  String? _cidade;
  String get cidade => _cidade ?? '';
  bool hasCidade() => _cidade != null;

  // "cnpj" field.
  String? _cnpj;
  String get cnpj => _cnpj ?? '';
  bool hasCnpj() => _cnpj != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "nome_empresa" field.
  String? _nomeEmpresa;
  String get nomeEmpresa => _nomeEmpresa ?? '';
  bool hasNomeEmpresa() => _nomeEmpresa != null;

  // "telefone" field.
  String? _telefone;
  String get telefone => _telefone ?? '';
  bool hasTelefone() => _telefone != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _uid = snapshotData['uid'] as String?;
    _cidade = snapshotData['cidade'] as String?;
    _cnpj = snapshotData['cnpj'] as String?;
    _role = snapshotData['role'] as String?;
    _estado = snapshotData['estado'] as String?;
    _nomeEmpresa = snapshotData['nome_empresa'] as String?;
    _telefone = snapshotData['telefone'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('parceirosemanalise');

  static Stream<ParceirosemanaliseRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ParceirosemanaliseRecord.fromSnapshot(s));

  static Future<ParceirosemanaliseRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ParceirosemanaliseRecord.fromSnapshot(s));

  static ParceirosemanaliseRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ParceirosemanaliseRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ParceirosemanaliseRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ParceirosemanaliseRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ParceirosemanaliseRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ParceirosemanaliseRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createParceirosemanaliseRecordData({
  String? email,
  String? uid,
  String? cidade,
  String? cnpj,
  String? role,
  String? estado,
  String? nomeEmpresa,
  String? telefone,
  String? displayName,
  String? photoUrl,
  DateTime? createdTime,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'uid': uid,
      'cidade': cidade,
      'cnpj': cnpj,
      'role': role,
      'estado': estado,
      'nome_empresa': nomeEmpresa,
      'telefone': telefone,
      'display_name': displayName,
      'photo_url': photoUrl,
      'created_time': createdTime,
      'phone_number': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class ParceirosemanaliseRecordDocumentEquality
    implements Equality<ParceirosemanaliseRecord> {
  const ParceirosemanaliseRecordDocumentEquality();

  @override
  bool equals(ParceirosemanaliseRecord? e1, ParceirosemanaliseRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.uid == e2?.uid &&
        e1?.cidade == e2?.cidade &&
        e1?.cnpj == e2?.cnpj &&
        e1?.role == e2?.role &&
        e1?.estado == e2?.estado &&
        e1?.nomeEmpresa == e2?.nomeEmpresa &&
        e1?.telefone == e2?.telefone &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(ParceirosemanaliseRecord? e) => const ListEquality().hash([
        e?.email,
        e?.uid,
        e?.cidade,
        e?.cnpj,
        e?.role,
        e?.estado,
        e?.nomeEmpresa,
        e?.telefone,
        e?.displayName,
        e?.photoUrl,
        e?.createdTime,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is ParceirosemanaliseRecord;
}
