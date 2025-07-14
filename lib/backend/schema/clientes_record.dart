import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClientesRecord extends FirestoreRecord {
  ClientesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "bairro" field.
  String? _bairro;
  String get bairro => _bairro ?? '';
  bool hasBairro() => _bairro != null;

  // "cep_cliente" field.
  String? _cepCliente;
  String get cepCliente => _cepCliente ?? '';
  bool hasCepCliente() => _cepCliente != null;

  // "cidade" field.
  String? _cidade;
  String get cidade => _cidade ?? '';
  bool hasCidade() => _cidade != null;

  // "endereco_cliente" field.
  String? _enderecoCliente;
  String get enderecoCliente => _enderecoCliente ?? '';
  bool hasEnderecoCliente() => _enderecoCliente != null;

  // "itens_cliente" field.
  String? _itensCliente;
  String get itensCliente => _itensCliente ?? '';
  bool hasItensCliente() => _itensCliente != null;

  // "nome_cliente" field.
  String? _nomeCliente;
  String get nomeCliente => _nomeCliente ?? '';
  bool hasNomeCliente() => _nomeCliente != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "telefone_cliente" field.
  String? _telefoneCliente;
  String get telefoneCliente => _telefoneCliente ?? '';
  bool hasTelefoneCliente() => _telefoneCliente != null;

  // "aceito_por" field.
  String? _aceitoPor;
  String get aceitoPor => _aceitoPor ?? '';
  bool hasAceitoPor() => _aceitoPor != null;

  // "errocampos" field.
  String? _errocampos;
  String get errocampos => _errocampos ?? '';
  bool hasErrocampos() => _errocampos != null;

  // "data" field.
  String? _data;
  String get data => _data ?? '';
  bool hasData() => _data != null;

  // "hora" field.
  String? _hora;
  String get hora => _hora ?? '';
  bool hasHora() => _hora != null;

  // "complemento_endereco" field.
  String? _complementoEndereco;
  String get complementoEndereco => _complementoEndereco ?? '';
  bool hasComplementoEndereco() => _complementoEndereco != null;

  // "status_pagamento" field.
  String? _statusPagamento;
  String get statusPagamento => _statusPagamento ?? '';
  bool hasStatusPagamento() => _statusPagamento != null;

  // "data_pagamento" field.
  DateTime? _dataPagamento;
  DateTime? get dataPagamento => _dataPagamento;
  bool hasDataPagamento() => _dataPagamento != null;

  // "valor_recebido" field.
  double? _valorRecebido;
  double get valorRecebido => _valorRecebido ?? 0.0;
  bool hasValorRecebido() => _valorRecebido != null;

  // "voltagem_cliente" field.
  String? _voltagemCliente;
  String get voltagemCliente => _voltagemCliente ?? '';
  bool hasVoltagemCliente() => _voltagemCliente != null;

  // "vaga_cliente" field.
  String? _vagaCliente;
  String get vagaCliente => _vagaCliente ?? '';
  bool hasVagaCliente() => _vagaCliente != null;

  // "observacoesAdicionaisCliente" field.
  String? _observacoesAdicionaisCliente;
  String get observacoesAdicionaisCliente =>
      _observacoesAdicionaisCliente ?? '';
  bool hasObservacoesAdicionaisCliente() =>
      _observacoesAdicionaisCliente != null;

  // "valor_totalNUM" field.
  double? _valorTotalNUM;
  double get valorTotalNUM => _valorTotalNUM ?? 0.0;
  bool hasValorTotalNUM() => _valorTotalNUM != null;

  // "link_de_pagamento_cliente" field.
  String? _linkDePagamentoCliente;
  String get linkDePagamentoCliente => _linkDePagamentoCliente ?? '';
  bool hasLinkDePagamentoCliente() => _linkDePagamentoCliente != null;

  // "turno" field.
  String? _turno;
  String get turno => _turno ?? '';
  bool hasTurno() => _turno != null;

  // "percentualparceiro" field.
  double? _percentualparceiro;
  double get percentualparceiro => _percentualparceiro ?? 0.0;
  bool hasPercentualparceiro() => _percentualparceiro != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "fotosDepois" field.
  String? _fotosDepois;
  String get fotosDepois => _fotosDepois ?? '';
  bool hasFotosDepois() => _fotosDepois != null;

  // "RelatotecnicoItens" field.
  String? _relatotecnicoItens;
  String get relatotecnicoItens => _relatotecnicoItens ?? '';
  bool hasRelatotecnicoItens() => _relatotecnicoItens != null;

  // "dataCriacao" field.
  DateTime? _dataCriacao;
  DateTime? get dataCriacao => _dataCriacao;
  bool hasDataCriacao() => _dataCriacao != null;

  // "dataFinalizado" field.
  DateTime? _dataFinalizado;
  DateTime? get dataFinalizado => _dataFinalizado;
  bool hasDataFinalizado() => _dataFinalizado != null;

  // "dataEdicao" field.
  DateTime? _dataEdicao;
  DateTime? get dataEdicao => _dataEdicao;
  bool hasDataEdicao() => _dataEdicao != null;

  // "criado_por" field.
  String? _criadoPor;
  String get criadoPor => _criadoPor ?? '';
  bool hasCriadoPor() => _criadoPor != null;

  // "editado_por" field.
  String? _editadoPor;
  String get editadoPor => _editadoPor ?? '';
  bool hasEditadoPor() => _editadoPor != null;

  // "liberado_por" field.
  String? _liberadoPor;
  String get liberadoPor => _liberadoPor ?? '';
  bool hasLiberadoPor() => _liberadoPor != null;

  // "ultimos4" field.
  String? _ultimos4;
  String get ultimos4 => _ultimos4 ?? '';
  bool hasUltimos4() => _ultimos4 != null;

  // "fotos" field.
  List<String>? _fotos;
  List<String> get fotos => _fotos ?? const [];
  bool hasFotos() => _fotos != null;

  // "fotooos" field.
  String? _fotooos;
  String get fotooos => _fotooos ?? '';
  bool hasFotooos() => _fotooos != null;

  // "fechamento" field.
  String? _fechamento;
  String get fechamento => _fechamento ?? '';
  bool hasFechamento() => _fechamento != null;

  void _initializeFields() {
    _estado = snapshotData['Estado'] as String?;
    _bairro = snapshotData['bairro'] as String?;
    _cepCliente = snapshotData['cep_cliente'] as String?;
    _cidade = snapshotData['cidade'] as String?;
    _enderecoCliente = snapshotData['endereco_cliente'] as String?;
    _itensCliente = snapshotData['itens_cliente'] as String?;
    _nomeCliente = snapshotData['nome_cliente'] as String?;
    _status = snapshotData['status'] as String?;
    _telefoneCliente = snapshotData['telefone_cliente'] as String?;
    _aceitoPor = snapshotData['aceito_por'] as String?;
    _errocampos = snapshotData['errocampos'] as String?;
    _data = snapshotData['data'] as String?;
    _hora = snapshotData['hora'] as String?;
    _complementoEndereco = snapshotData['complemento_endereco'] as String?;
    _statusPagamento = snapshotData['status_pagamento'] as String?;
    _dataPagamento = snapshotData['data_pagamento'] as DateTime?;
    _valorRecebido = castToType<double>(snapshotData['valor_recebido']);
    _voltagemCliente = snapshotData['voltagem_cliente'] as String?;
    _vagaCliente = snapshotData['vaga_cliente'] as String?;
    _observacoesAdicionaisCliente =
        snapshotData['observacoesAdicionaisCliente'] as String?;
    _valorTotalNUM = castToType<double>(snapshotData['valor_totalNUM']);
    _linkDePagamentoCliente =
        snapshotData['link_de_pagamento_cliente'] as String?;
    _turno = snapshotData['turno'] as String?;
    _percentualparceiro =
        castToType<double>(snapshotData['percentualparceiro']);
    _email = snapshotData['email'] as String?;
    _fotosDepois = snapshotData['fotosDepois'] as String?;
    _relatotecnicoItens = snapshotData['RelatotecnicoItens'] as String?;
    _dataCriacao = snapshotData['dataCriacao'] as DateTime?;
    _dataFinalizado = snapshotData['dataFinalizado'] as DateTime?;
    _dataEdicao = snapshotData['dataEdicao'] as DateTime?;
    _criadoPor = snapshotData['criado_por'] as String?;
    _editadoPor = snapshotData['editado_por'] as String?;
    _liberadoPor = snapshotData['liberado_por'] as String?;
    _ultimos4 = snapshotData['ultimos4'] as String?;
    _fotos = getDataList(snapshotData['fotos']);
    _fotooos = snapshotData['fotooos'] as String?;
    _fechamento = snapshotData['fechamento'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('clientes');

  static Stream<ClientesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClientesRecord.fromSnapshot(s));

  static Future<ClientesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClientesRecord.fromSnapshot(s));

  static ClientesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ClientesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClientesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClientesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClientesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClientesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClientesRecordData({
  String? estado,
  String? bairro,
  String? cepCliente,
  String? cidade,
  String? enderecoCliente,
  String? itensCliente,
  String? nomeCliente,
  String? status,
  String? telefoneCliente,
  String? aceitoPor,
  String? errocampos,
  String? data,
  String? hora,
  String? complementoEndereco,
  String? statusPagamento,
  DateTime? dataPagamento,
  double? valorRecebido,
  String? voltagemCliente,
  String? vagaCliente,
  String? observacoesAdicionaisCliente,
  double? valorTotalNUM,
  String? linkDePagamentoCliente,
  String? turno,
  double? percentualparceiro,
  String? email,
  String? fotosDepois,
  String? relatotecnicoItens,
  DateTime? dataCriacao,
  DateTime? dataFinalizado,
  DateTime? dataEdicao,
  String? criadoPor,
  String? editadoPor,
  String? liberadoPor,
  String? ultimos4,
  String? fotooos,
  String? fechamento,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Estado': estado,
      'bairro': bairro,
      'cep_cliente': cepCliente,
      'cidade': cidade,
      'endereco_cliente': enderecoCliente,
      'itens_cliente': itensCliente,
      'nome_cliente': nomeCliente,
      'status': status,
      'telefone_cliente': telefoneCliente,
      'aceito_por': aceitoPor,
      'errocampos': errocampos,
      'data': data,
      'hora': hora,
      'complemento_endereco': complementoEndereco,
      'status_pagamento': statusPagamento,
      'data_pagamento': dataPagamento,
      'valor_recebido': valorRecebido,
      'voltagem_cliente': voltagemCliente,
      'vaga_cliente': vagaCliente,
      'observacoesAdicionaisCliente': observacoesAdicionaisCliente,
      'valor_totalNUM': valorTotalNUM,
      'link_de_pagamento_cliente': linkDePagamentoCliente,
      'turno': turno,
      'percentualparceiro': percentualparceiro,
      'email': email,
      'fotosDepois': fotosDepois,
      'RelatotecnicoItens': relatotecnicoItens,
      'dataCriacao': dataCriacao,
      'dataFinalizado': dataFinalizado,
      'dataEdicao': dataEdicao,
      'criado_por': criadoPor,
      'editado_por': editadoPor,
      'liberado_por': liberadoPor,
      'ultimos4': ultimos4,
      'fotooos': fotooos,
      'fechamento': fechamento,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClientesRecordDocumentEquality implements Equality<ClientesRecord> {
  const ClientesRecordDocumentEquality();

  @override
  bool equals(ClientesRecord? e1, ClientesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.estado == e2?.estado &&
        e1?.bairro == e2?.bairro &&
        e1?.cepCliente == e2?.cepCliente &&
        e1?.cidade == e2?.cidade &&
        e1?.enderecoCliente == e2?.enderecoCliente &&
        e1?.itensCliente == e2?.itensCliente &&
        e1?.nomeCliente == e2?.nomeCliente &&
        e1?.status == e2?.status &&
        e1?.telefoneCliente == e2?.telefoneCliente &&
        e1?.aceitoPor == e2?.aceitoPor &&
        e1?.errocampos == e2?.errocampos &&
        e1?.data == e2?.data &&
        e1?.hora == e2?.hora &&
        e1?.complementoEndereco == e2?.complementoEndereco &&
        e1?.statusPagamento == e2?.statusPagamento &&
        e1?.dataPagamento == e2?.dataPagamento &&
        e1?.valorRecebido == e2?.valorRecebido &&
        e1?.voltagemCliente == e2?.voltagemCliente &&
        e1?.vagaCliente == e2?.vagaCliente &&
        e1?.observacoesAdicionaisCliente == e2?.observacoesAdicionaisCliente &&
        e1?.valorTotalNUM == e2?.valorTotalNUM &&
        e1?.linkDePagamentoCliente == e2?.linkDePagamentoCliente &&
        e1?.turno == e2?.turno &&
        e1?.percentualparceiro == e2?.percentualparceiro &&
        e1?.email == e2?.email &&
        e1?.fotosDepois == e2?.fotosDepois &&
        e1?.relatotecnicoItens == e2?.relatotecnicoItens &&
        e1?.dataCriacao == e2?.dataCriacao &&
        e1?.dataFinalizado == e2?.dataFinalizado &&
        e1?.dataEdicao == e2?.dataEdicao &&
        e1?.criadoPor == e2?.criadoPor &&
        e1?.editadoPor == e2?.editadoPor &&
        e1?.liberadoPor == e2?.liberadoPor &&
        e1?.ultimos4 == e2?.ultimos4 &&
        listEquality.equals(e1?.fotos, e2?.fotos) &&
        e1?.fotooos == e2?.fotooos &&
        e1?.fechamento == e2?.fechamento;
  }

  @override
  int hash(ClientesRecord? e) => const ListEquality().hash([
        e?.estado,
        e?.bairro,
        e?.cepCliente,
        e?.cidade,
        e?.enderecoCliente,
        e?.itensCliente,
        e?.nomeCliente,
        e?.status,
        e?.telefoneCliente,
        e?.aceitoPor,
        e?.errocampos,
        e?.data,
        e?.hora,
        e?.complementoEndereco,
        e?.statusPagamento,
        e?.dataPagamento,
        e?.valorRecebido,
        e?.voltagemCliente,
        e?.vagaCliente,
        e?.observacoesAdicionaisCliente,
        e?.valorTotalNUM,
        e?.linkDePagamentoCliente,
        e?.turno,
        e?.percentualparceiro,
        e?.email,
        e?.fotosDepois,
        e?.relatotecnicoItens,
        e?.dataCriacao,
        e?.dataFinalizado,
        e?.dataEdicao,
        e?.criadoPor,
        e?.editadoPor,
        e?.liberadoPor,
        e?.ultimos4,
        e?.fotos,
        e?.fotooos,
        e?.fechamento
      ]);

  @override
  bool isValidKey(Object? o) => o is ClientesRecord;
}
