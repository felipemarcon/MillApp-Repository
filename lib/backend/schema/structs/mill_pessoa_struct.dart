// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MillPessoaStruct extends FFFirebaseStruct {
  MillPessoaStruct({
    int? id,
    String? nome,
    String? documento,
    String? bloqueiaCredito,
    String? bloqueiaDias,
    String? nomeFantasia,
    String? email,
    String? logradouro,
    int? numero,
    String? complemento,
    String? bairro,
    String? cep,
    String? tipoPessoa,
    DateTime? dtcad,
    DateTime? dtsinc,
    DateTime? dtupdate,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _nome = nome,
        _documento = documento,
        _bloqueiaCredito = bloqueiaCredito,
        _bloqueiaDias = bloqueiaDias,
        _nomeFantasia = nomeFantasia,
        _email = email,
        _logradouro = logradouro,
        _numero = numero,
        _complemento = complemento,
        _bairro = bairro,
        _cep = cep,
        _tipoPessoa = tipoPessoa,
        _dtcad = dtcad,
        _dtsinc = dtsinc,
        _dtupdate = dtupdate,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;
  bool hasNome() => _nome != null;

  // "documento" field.
  String? _documento;
  String get documento => _documento ?? '';
  set documento(String? val) => _documento = val;
  bool hasDocumento() => _documento != null;

  // "bloqueia_credito" field.
  String? _bloqueiaCredito;
  String get bloqueiaCredito => _bloqueiaCredito ?? '';
  set bloqueiaCredito(String? val) => _bloqueiaCredito = val;
  bool hasBloqueiaCredito() => _bloqueiaCredito != null;

  // "bloqueia_dias" field.
  String? _bloqueiaDias;
  String get bloqueiaDias => _bloqueiaDias ?? '';
  set bloqueiaDias(String? val) => _bloqueiaDias = val;
  bool hasBloqueiaDias() => _bloqueiaDias != null;

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

  // "dtcad" field.
  DateTime? _dtcad;
  DateTime? get dtcad => _dtcad;
  set dtcad(DateTime? val) => _dtcad = val;
  bool hasDtcad() => _dtcad != null;

  // "dtsinc" field.
  DateTime? _dtsinc;
  DateTime? get dtsinc => _dtsinc;
  set dtsinc(DateTime? val) => _dtsinc = val;
  bool hasDtsinc() => _dtsinc != null;

  // "dtupdate" field.
  DateTime? _dtupdate;
  DateTime? get dtupdate => _dtupdate;
  set dtupdate(DateTime? val) => _dtupdate = val;
  bool hasDtupdate() => _dtupdate != null;

  static MillPessoaStruct fromMap(Map<String, dynamic> data) =>
      MillPessoaStruct(
        id: castToType<int>(data['id']),
        nome: data['nome'] as String?,
        documento: data['documento'] as String?,
        bloqueiaCredito: data['bloqueia_credito'] as String?,
        bloqueiaDias: data['bloqueia_dias'] as String?,
        nomeFantasia: data['nome_fantasia'] as String?,
        email: data['email'] as String?,
        logradouro: data['logradouro'] as String?,
        numero: castToType<int>(data['numero']),
        complemento: data['complemento'] as String?,
        bairro: data['bairro'] as String?,
        cep: data['cep'] as String?,
        tipoPessoa: data['tipo_pessoa'] as String?,
        dtcad: data['dtcad'] as DateTime?,
        dtsinc: data['dtsinc'] as DateTime?,
        dtupdate: data['dtupdate'] as DateTime?,
      );

  static MillPessoaStruct? maybeFromMap(dynamic data) => data is Map
      ? MillPessoaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'nome': _nome,
        'documento': _documento,
        'bloqueia_credito': _bloqueiaCredito,
        'bloqueia_dias': _bloqueiaDias,
        'nome_fantasia': _nomeFantasia,
        'email': _email,
        'logradouro': _logradouro,
        'numero': _numero,
        'complemento': _complemento,
        'bairro': _bairro,
        'cep': _cep,
        'tipo_pessoa': _tipoPessoa,
        'dtcad': _dtcad,
        'dtsinc': _dtsinc,
        'dtupdate': _dtupdate,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'documento': serializeParam(
          _documento,
          ParamType.String,
        ),
        'bloqueia_credito': serializeParam(
          _bloqueiaCredito,
          ParamType.String,
        ),
        'bloqueia_dias': serializeParam(
          _bloqueiaDias,
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
        'dtcad': serializeParam(
          _dtcad,
          ParamType.DateTime,
        ),
        'dtsinc': serializeParam(
          _dtsinc,
          ParamType.DateTime,
        ),
        'dtupdate': serializeParam(
          _dtupdate,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static MillPessoaStruct fromSerializableMap(Map<String, dynamic> data) =>
      MillPessoaStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        documento: deserializeParam(
          data['documento'],
          ParamType.String,
          false,
        ),
        bloqueiaCredito: deserializeParam(
          data['bloqueia_credito'],
          ParamType.String,
          false,
        ),
        bloqueiaDias: deserializeParam(
          data['bloqueia_dias'],
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
        dtcad: deserializeParam(
          data['dtcad'],
          ParamType.DateTime,
          false,
        ),
        dtsinc: deserializeParam(
          data['dtsinc'],
          ParamType.DateTime,
          false,
        ),
        dtupdate: deserializeParam(
          data['dtupdate'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'MillPessoaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MillPessoaStruct &&
        id == other.id &&
        nome == other.nome &&
        documento == other.documento &&
        bloqueiaCredito == other.bloqueiaCredito &&
        bloqueiaDias == other.bloqueiaDias &&
        nomeFantasia == other.nomeFantasia &&
        email == other.email &&
        logradouro == other.logradouro &&
        numero == other.numero &&
        complemento == other.complemento &&
        bairro == other.bairro &&
        cep == other.cep &&
        tipoPessoa == other.tipoPessoa &&
        dtcad == other.dtcad &&
        dtsinc == other.dtsinc &&
        dtupdate == other.dtupdate;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        nome,
        documento,
        bloqueiaCredito,
        bloqueiaDias,
        nomeFantasia,
        email,
        logradouro,
        numero,
        complemento,
        bairro,
        cep,
        tipoPessoa,
        dtcad,
        dtsinc,
        dtupdate
      ]);
}

MillPessoaStruct createMillPessoaStruct({
  int? id,
  String? nome,
  String? documento,
  String? bloqueiaCredito,
  String? bloqueiaDias,
  String? nomeFantasia,
  String? email,
  String? logradouro,
  int? numero,
  String? complemento,
  String? bairro,
  String? cep,
  String? tipoPessoa,
  DateTime? dtcad,
  DateTime? dtsinc,
  DateTime? dtupdate,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MillPessoaStruct(
      id: id,
      nome: nome,
      documento: documento,
      bloqueiaCredito: bloqueiaCredito,
      bloqueiaDias: bloqueiaDias,
      nomeFantasia: nomeFantasia,
      email: email,
      logradouro: logradouro,
      numero: numero,
      complemento: complemento,
      bairro: bairro,
      cep: cep,
      tipoPessoa: tipoPessoa,
      dtcad: dtcad,
      dtsinc: dtsinc,
      dtupdate: dtupdate,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MillPessoaStruct? updateMillPessoaStruct(
  MillPessoaStruct? millPessoa, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    millPessoa
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMillPessoaStructData(
  Map<String, dynamic> firestoreData,
  MillPessoaStruct? millPessoa,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (millPessoa == null) {
    return;
  }
  if (millPessoa.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && millPessoa.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final millPessoaData = getMillPessoaFirestoreData(millPessoa, forFieldValue);
  final nestedData = millPessoaData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = millPessoa.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMillPessoaFirestoreData(
  MillPessoaStruct? millPessoa, [
  bool forFieldValue = false,
]) {
  if (millPessoa == null) {
    return {};
  }
  final firestoreData = mapToFirestore(millPessoa.toMap());

  // Add any Firestore field values
  millPessoa.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMillPessoaListFirestoreData(
  List<MillPessoaStruct>? millPessoas,
) =>
    millPessoas?.map((e) => getMillPessoaFirestoreData(e, true)).toList() ?? [];
