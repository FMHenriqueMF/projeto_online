import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsuariosRecord extends FirestoreRecord {
  UsuariosRecord._(
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

  // "forma_pagamento" field.
  String? _formaPagamento;
  String get formaPagamento => _formaPagamento ?? '';
  bool hasFormaPagamento() => _formaPagamento != null;

  // "valor_recebido" field.
  String? _valorRecebido;
  String get valorRecebido => _valorRecebido ?? '';
  bool hasValorRecebido() => _valorRecebido != null;

  // "status_pagamento" field.
  String? _statusPagamento;
  String get statusPagamento => _statusPagamento ?? '';
  bool hasStatusPagamento() => _statusPagamento != null;

  // "codigo_cliente" field.
  String? _codigoCliente;
  String get codigoCliente => _codigoCliente ?? '';
  bool hasCodigoCliente() => _codigoCliente != null;

  // "permissao" field.
  String? _permissao;
  String get permissao => _permissao ?? '';
  bool hasPermissao() => _permissao != null;

  // "semanapassada" field.
  String? _semanapassada;
  String get semanapassada => _semanapassada ?? '';
  bool hasSemanapassada() => _semanapassada != null;

  // "semanaatual" field.
  String? _semanaatual;
  String get semanaatual => _semanaatual ?? '';
  bool hasSemanaatual() => _semanaatual != null;

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
    _formaPagamento = snapshotData['forma_pagamento'] as String?;
    _valorRecebido = snapshotData['valor_recebido'] as String?;
    _statusPagamento = snapshotData['status_pagamento'] as String?;
    _codigoCliente = snapshotData['codigo_cliente'] as String?;
    _permissao = snapshotData['permissao'] as String?;
    _semanapassada = snapshotData['semanapassada'] as String?;
    _semanaatual = snapshotData['semanaatual'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('usuarios');

  static Stream<UsuariosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsuariosRecord.fromSnapshot(s));

  static Future<UsuariosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsuariosRecord.fromSnapshot(s));

  static UsuariosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UsuariosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsuariosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsuariosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsuariosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsuariosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsuariosRecordData({
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
  String? formaPagamento,
  String? valorRecebido,
  String? statusPagamento,
  String? codigoCliente,
  String? permissao,
  String? semanapassada,
  String? semanaatual,
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
      'forma_pagamento': formaPagamento,
      'valor_recebido': valorRecebido,
      'status_pagamento': statusPagamento,
      'codigo_cliente': codigoCliente,
      'permissao': permissao,
      'semanapassada': semanapassada,
      'semanaatual': semanaatual,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsuariosRecordDocumentEquality implements Equality<UsuariosRecord> {
  const UsuariosRecordDocumentEquality();

  @override
  bool equals(UsuariosRecord? e1, UsuariosRecord? e2) {
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
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.formaPagamento == e2?.formaPagamento &&
        e1?.valorRecebido == e2?.valorRecebido &&
        e1?.statusPagamento == e2?.statusPagamento &&
        e1?.codigoCliente == e2?.codigoCliente &&
        e1?.permissao == e2?.permissao &&
        e1?.semanapassada == e2?.semanapassada &&
        e1?.semanaatual == e2?.semanaatual;
  }

  @override
  int hash(UsuariosRecord? e) => const ListEquality().hash([
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
        e?.phoneNumber,
        e?.formaPagamento,
        e?.valorRecebido,
        e?.statusPagamento,
        e?.codigoCliente,
        e?.permissao,
        e?.semanapassada,
        e?.semanaatual
      ]);

  @override
  bool isValidKey(Object? o) => o is UsuariosRecord;
}
