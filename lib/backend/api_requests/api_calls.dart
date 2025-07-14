import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class EnviarparamakeCall {
  static Future<ApiCallResponse> call({
    String? nomeCliente = '',
    String? telefoneCliente = '',
    String? codigoCliente = '',
    double? valorTotal,
  }) async {
    final ffApiRequestBody = '''
{
  "nome": "${escapeStringForJson(nomeCliente)}",
  "telefone": "${escapeStringForJson(telefoneCliente)}",
  "codigo_cliente": "${escapeStringForJson(codigoCliente)}",
  "valor": "${valorTotal}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'enviarparamake',
      apiUrl: 'https://hook.us2.make.com/yt7j57js7auf6qqtnkmtkkwllzqai3zu',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EnviarnovonumeroCall {
  static Future<ApiCallResponse> call({
    String? telefoneCliente = '',
    String? codigoCliente = '',
  }) async {
    final ffApiRequestBody = '''
{
  "codigo_cliente": "${escapeStringForJson(codigoCliente)}",
  "novo_telefone": "${escapeStringForJson(telefoneCliente)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'enviarnovonumero',
      apiUrl: 'https://hook.us2.make.com/jsf5hm3ldlhxu3vo989ifgt2cwolsw39',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BuscarpagamentosWebhookCall {
  static Future<ApiCallResponse> call({
    String? codigoCliente = '',
  }) async {
    final ffApiRequestBody = '''
{
  "codigo_cliente": "${escapeStringForJson(codigoCliente)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'BuscarpagamentosWebhook',
      apiUrl: 'https://hook.us2.make.com/8hq3okuli6psgmx6sfhu8i0gqwfvw7u5',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? retornostatuspagamento(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.status_pagamento''',
      ));
  static String? retornovalorpago(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.valor''',
      ));
}

class LigacaoClienteParceiroCall {
  static Future<ApiCallResponse> call({
    String? telefoneParceiro = '',
    String? telefoneCliente = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'LigacaoClienteParceiro',
      apiUrl:
          'https://api.twilio.com/2010-04-01/Accounts/AC3f5533fa3eaf224b177c1067bcd6f865/Calls.json',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Basic QUMzZjU1MzNmYTNlYWYyMjRiMTc3YzEwNjdiY2Q2Zjg2NTpmYjE5YTM5MWIwODQyODY4YTdjOTVkYWQxYTY0ZTk0Yg==',
      },
      params: {
        'From': "+17622659140",
        'To': "+55${telefoneParceiro}",
        'Url':
            "https://hook.us2.make.com/d8a1ymsdm3elgidcqipw3oripajx8ys6?numero_cliente=+55${telefoneCliente}",
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BuscarEnderecoPorCEPCall {
  static Future<ApiCallResponse> call({
    String? cep = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'BuscarEnderecoPorCEP',
      apiUrl: 'https://viacep.com.br/ws/${cep}/json/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? cep(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cep''',
      ));
  static String? rua(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.logradouro''',
      ));
  static String? bairro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bairro''',
      ));
  static String? cidade(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.localidade''',
      ));
  static String? estado(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.uf''',
      ));
}

class CriarLinkCall {
  static Future<ApiCallResponse> call({
    String? valor = '',
    String? nome = '',
    String? itens = '',
    String? externalreference = '',
    String? parcelas = '',
  }) async {
    final ffApiRequestBody = '''
{
  "valor_servico": "${escapeStringForJson(valor)}",
  "nome_cliente": "${escapeStringForJson(nome)}",
  "itens_cliente": "${escapeStringForJson(itens)}",
  "external_reference": "${escapeStringForJson(externalreference)}",
  "installments": "${escapeStringForJson(parcelas)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'criar link',
      apiUrl: 'https://hook.us2.make.com/qbppkx2ipg6gjfjpnkqc11x6wikljq90',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? link(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.linkmp''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
