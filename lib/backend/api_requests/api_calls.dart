import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class AutenticacaoComJWTCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Autenticacao com JWT',
      apiUrl: 'https://erp.millgest.com.br/auth/admin_hydrol/m1ll3nn1um',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
        'Authorization':
            'Basic f1e2d4bb4545f9b06dd334795ea7de240ecbe9667f110430ca0343f4c3b5',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? codeJWT(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data''',
      ));
}

class ListaRegistrosSQLCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? consulta = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Lista Registros SQL',
      apiUrl: 'https://erp.millgest.com.br/request/null/list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {
        'identificador': "93731602000108",
        'model': "MillPessoa",
        'parametro_busca': "sql",
        'sql':
            "select id, nome, nome_fantasia, email, dtcad, logradouro, numero, complemento, bairro, cep, tipo_pessoa, documento, bloqueia_credito, bloqueia_dias from mill_pessoa WHERE nome LIKE \"%$consulta%\" OR id = \"$consulta\" OR email = \"$consulta\";",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? nomes(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].nome''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? documentos(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].documento''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? bloqcreditos(dynamic response) => getJsonField(
        response,
        r'''$.data[:].bloqueia_credito''',
        true,
      ) as List?;
  static List? bloqdias(dynamic response) => getJsonField(
        response,
        r'''$.data[:].bloqueia_dias''',
        true,
      ) as List?;
  static List<int>? ids(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  static List? tipoPessoa(dynamic response) => getJsonField(
        response,
        r'''$.data[:].tipo_pessoa''',
        true,
      ) as List?;
  static List? cep(dynamic response) => getJsonField(
        response,
        r'''$.data[:].cep''',
        true,
      ) as List?;
  static List? bairro(dynamic response) => getJsonField(
        response,
        r'''$.data[:].bairro''',
        true,
      ) as List?;
  static List? complemento(dynamic response) => getJsonField(
        response,
        r'''$.data[:].complemento''',
        true,
      ) as List?;
  static List? numero(dynamic response) => getJsonField(
        response,
        r'''$.data[:].numero''',
        true,
      ) as List?;
  static List? logradouro(dynamic response) => getJsonField(
        response,
        r'''$.data[:].logradouro''',
        true,
      ) as List?;
  static List? email(dynamic response) => getJsonField(
        response,
        r'''$.data[:].email''',
        true,
      ) as List?;
  static List<String>? nomeFantasia(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].nome_fantasia''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
