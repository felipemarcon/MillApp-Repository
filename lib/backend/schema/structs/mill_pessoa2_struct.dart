// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MillPessoa2Struct extends FFFirebaseStruct {
  MillPessoa2Struct({
    String? nome,
    String? nomeFantasia,
    String? email,
    String? logradouro,
    int? numero,
    DateTime? dtCadastro,
    String? complemento,
    String? bairro,
    String? cep,
    String? tipoPessoa,
    String? documento,
    bool? novo,
    bool? alterado,
    int? index,
    DocumentReference? pessoaRef,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _nome = nome,
        _nomeFantasia = nomeFantasia,
        _email = email,
        _logradouro = logradouro,
        _numero = numero,
        _dtCadastro = dtCadastro,
        _complemento = complemento,
        _bairro = bairro,
        _cep = cep,
        _tipoPessoa = tipoPessoa,
        _documento = documento,
        _novo = novo,
        _alterado = alterado,
        _index = index,
        _pessoaRef = pessoaRef,
        super(firestoreUtilData);

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;
  bool hasNome() => _nome != null;

  // "nome_fantasia" field.
  String? _nomeFantasia;
  String get nomeFantasia => _nomeFantasia ?? '';
  set nomeFantasia(String? val) => _nomeFantasia = val;
  bool hasNomeFantasia() => _nomeFantasia != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;
  bool hasEmail() => _email != null;

  // "logradouro" field.
  String? _logradouro;
  String get logradouro => _logradouro ?? '';
  set logradouro(String? val) => _logradouro = val;
  bool hasLogradouro() => _logradouro != null;

  // "numero" field.
  int? _numero;
  int get numero => _numero ?? 0;
  set numero(int? val) => _numero = val;
  void incrementNumero(int amount) => _numero = numero + amount;
  bool hasNumero() => _numero != null;

  // "dt_cadastro" field.
  DateTime? _dtCadastro;
  DateTime? get dtCadastro => _dtCadastro;
  set dtCadastro(DateTime? val) => _dtCadastro = val;
  bool hasDtCadastro() => _dtCadastro != null;

  // "complemento" field.
  String? _complemento;
  String get complemento => _complemento ?? '';
  set complemento(String? val) => _complemento = val;
  bool hasComplemento() => _complemento != null;

  // "bairro" field.
  String? _bairro;
  String get bairro => _bairro ?? '';
  set bairro(String? val) => _bairro = val;
  bool hasBairro() => _bairro != null;

  // "cep" field.
  String? _cep;
  String get cep => _cep ?? '';
  set cep(String? val) => _cep = val;
  bool hasCep() => _cep != null;

  // "tipo_pessoa" field.
  String? _tipoPessoa;
  String get tipoPessoa => _tipoPessoa ?? '';
  set tipoPessoa(String? val) => _tipoPessoa = val;
  bool hasTipoPessoa() => _tipoPessoa != null;

  // "documento" field.
  String? _documento;
  String get documento => _documento ?? '';
  set documento(String? val) => _documento = val;
  bool hasDocumento() => _documento != null;

  // "novo" field.
  bool? _novo;
  bool get novo => _novo ?? false;
  set novo(bool? val) => _novo = val;
  bool hasNovo() => _novo != null;

  // "alterado" field.
  bool? _alterado;
  bool get alterado => _alterado ?? false;
  set alterado(bool? val) => _alterado = val;
  bool hasAlterado() => _alterado != null;

  // "index" field.
  int? _index;
  int get index => _index ?? 0;
  set index(int? val) => _index = val;
  void incrementIndex(int amount) => _index = index + amount;
  bool hasIndex() => _index != null;

  // "pessoaRef" field.
  DocumentReference? _pessoaRef;
  DocumentReference? get pessoaRef => _pessoaRef;
  set pessoaRef(DocumentReference? val) => _pessoaRef = val;
  bool hasPessoaRef() => _pessoaRef != null;

  static MillPessoa2Struct fromMap(Map<String, dynamic> data) =>
      MillPessoa2Struct(
        nome: data['nome'] as String?,
        nomeFantasia: data['nome_fantasia'] as String?,
        email: data['email'] as String?,
        logradouro: data['logradouro'] as String?,
        numero: castToType<int>(data['numero']),
        dtCadastro: data['dt_cadastro'] as DateTime?,
        complemento: data['complemento'] as String?,
        bairro: data['bairro'] as String?,
        cep: data['cep'] as String?,
        tipoPessoa: data['tipo_pessoa'] as String?,
        documento: data['documento'] as String?,
        novo: data['novo'] as bool?,
        alterado: data['alterado'] as bool?,
        index: castToType<int>(data['index']),
        pessoaRef: data['pessoaRef'] as DocumentReference?,
      );

  static MillPessoa2Struct? maybeFromMap(dynamic data) => data is Map
      ? MillPessoa2Struct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'nome': _nome,
        'nome_fantasia': _nomeFantasia,
        'email': _email,
        'logradouro': _logradouro,
        'numero': _numero,
        'dt_cadastro': _dtCadastro,
        'complemento': _complemento,
        'bairro': _bairro,
        'cep': _cep,
        'tipo_pessoa': _tipoPessoa,
        'documento': _documento,
        'novo': _novo,
        'alterado': _alterado,
        'index': _index,
        'pessoaRef': _pessoaRef,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'nome_fantasia': serializeParam(
          _nomeFantasia,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'logradouro': serializeParam(
          _logradouro,
          ParamType.String,
        ),
        'numero': serializeParam(
          _numero,
          ParamType.int,
        ),
        'dt_cadastro': serializeParam(
          _dtCadastro,
          ParamType.DateTime,
        ),
        'complemento': serializeParam(
          _complemento,
          ParamType.String,
        ),
        'bairro': serializeParam(
          _bairro,
          ParamType.String,
        ),
        'cep': serializeParam(
          _cep,
          ParamType.String,
        ),
        'tipo_pessoa': serializeParam(
          _tipoPessoa,
          ParamType.String,
        ),
        'documento': serializeParam(
          _documento,
          ParamType.String,
        ),
        'novo': serializeParam(
          _novo,
          ParamType.bool,
        ),
        'alterado': serializeParam(
          _alterado,
          ParamType.bool,
        ),
        'index': serializeParam(
          _index,
          ParamType.int,
        ),
        'pessoaRef': serializeParam(
          _pessoaRef,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static MillPessoa2Struct fromSerializableMap(Map<String, dynamic> data) =>
      MillPessoa2Struct(
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        nomeFantasia: deserializeParam(
          data['nome_fantasia'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        logradouro: deserializeParam(
          data['logradouro'],
          ParamType.String,
          false,
        ),
        numero: deserializeParam(
          data['numero'],
          ParamType.int,
          false,
        ),
        dtCadastro: deserializeParam(
          data['dt_cadastro'],
          ParamType.DateTime,
          false,
        ),
        complemento: deserializeParam(
          data['complemento'],
          ParamType.String,
          false,
        ),
        bairro: deserializeParam(
          data['bairro'],
          ParamType.String,
          false,
        ),
        cep: deserializeParam(
          data['cep'],
          ParamType.String,
          false,
        ),
        tipoPessoa: deserializeParam(
          data['tipo_pessoa'],
          ParamType.String,
          false,
        ),
        documento: deserializeParam(
          data['documento'],
          ParamType.String,
          false,
        ),
        novo: deserializeParam(
          data['novo'],
          ParamType.bool,
          false,
        ),
        alterado: deserializeParam(
          data['alterado'],
          ParamType.bool,
          false,
        ),
        index: deserializeParam(
          data['index'],
          ParamType.int,
          false,
        ),
        pessoaRef: deserializeParam(
          data['pessoaRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['mill_pessoa'],
        ),
      );

  @override
  String toString() => 'MillPessoa2Struct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MillPessoa2Struct &&
        nome == other.nome &&
        nomeFantasia == other.nomeFantasia &&
        email == other.email &&
        logradouro == other.logradouro &&
        numero == other.numero &&
        dtCadastro == other.dtCadastro &&
        complemento == other.complemento &&
        bairro == other.bairro &&
        cep == other.cep &&
        tipoPessoa == other.tipoPessoa &&
        documento == other.documento &&
        novo == other.novo &&
        alterado == other.alterado &&
        index == other.index &&
        pessoaRef == other.pessoaRef;
  }

  @override
  int get hashCode => const ListEquality().hash([
        nome,
        nomeFantasia,
        email,
        logradouro,
        numero,
        dtCadastro,
        complemento,
        bairro,
        cep,
        tipoPessoa,
        documento,
        novo,
        alterado,
        index,
        pessoaRef
      ]);
}

MillPessoa2Struct createMillPessoa2Struct({
  String? nome,
  String? nomeFantasia,
  String? email,
  String? logradouro,
  int? numero,
  DateTime? dtCadastro,
  String? complemento,
  String? bairro,
  String? cep,
  String? tipoPessoa,
  String? documento,
  bool? novo,
  bool? alterado,
  int? index,
  DocumentReference? pessoaRef,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MillPessoa2Struct(
      nome: nome,
      nomeFantasia: nomeFantasia,
      email: email,
      logradouro: logradouro,
      numero: numero,
      dtCadastro: dtCadastro,
      complemento: complemento,
      bairro: bairro,
      cep: cep,
      tipoPessoa: tipoPessoa,
      documento: documento,
      novo: novo,
      alterado: alterado,
      index: index,
      pessoaRef: pessoaRef,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MillPessoa2Struct? updateMillPessoa2Struct(
  MillPessoa2Struct? millPessoa2, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    millPessoa2
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMillPessoa2StructData(
  Map<String, dynamic> firestoreData,
  MillPessoa2Struct? millPessoa2,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (millPessoa2 == null) {
    return;
  }
  if (millPessoa2.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && millPessoa2.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final millPessoa2Data =
      getMillPessoa2FirestoreData(millPessoa2, forFieldValue);
  final nestedData =
      millPessoa2Data.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = millPessoa2.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMillPessoa2FirestoreData(
  MillPessoa2Struct? millPessoa2, [
  bool forFieldValue = false,
]) {
  if (millPessoa2 == null) {
    return {};
  }
  final firestoreData = mapToFirestore(millPessoa2.toMap());

  // Add any Firestore field values
  millPessoa2.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMillPessoa2ListFirestoreData(
  List<MillPessoa2Struct>? millPessoa2s,
) =>
    millPessoa2s?.map((e) => getMillPessoa2FirestoreData(e, true)).toList() ??
    [];
