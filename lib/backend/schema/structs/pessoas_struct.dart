// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PessoasStruct extends FFFirebaseStruct {
  PessoasStruct({
    String? status,
    List<MillPessoaStruct>? data,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _status = status,
        _data = data,
        super(firestoreUtilData);

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;
  bool hasStatus() => _status != null;

  // "data" field.
  List<MillPessoaStruct>? _data;
  List<MillPessoaStruct> get data => _data ?? const [];
  set data(List<MillPessoaStruct>? val) => _data = val;
  void updateData(Function(List<MillPessoaStruct>) updateFn) =>
      updateFn(_data ??= []);
  bool hasData() => _data != null;

  static PessoasStruct fromMap(Map<String, dynamic> data) => PessoasStruct(
        status: data['status'] as String?,
        data: getStructList(
          data['data'],
          MillPessoaStruct.fromMap,
        ),
      );

  static PessoasStruct? maybeFromMap(dynamic data) =>
      data is Map ? PessoasStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'status': _status,
        'data': _data?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'data': serializeParam(
          _data,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static PessoasStruct fromSerializableMap(Map<String, dynamic> data) =>
      PessoasStruct(
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        data: deserializeStructParam<MillPessoaStruct>(
          data['data'],
          ParamType.DataStruct,
          true,
          structBuilder: MillPessoaStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'PessoasStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is PessoasStruct &&
        status == other.status &&
        listEquality.equals(data, other.data);
  }

  @override
  int get hashCode => const ListEquality().hash([status, data]);
}

PessoasStruct createPessoasStruct({
  String? status,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PessoasStruct(
      status: status,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PessoasStruct? updatePessoasStruct(
  PessoasStruct? pessoas, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    pessoas
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPessoasStructData(
  Map<String, dynamic> firestoreData,
  PessoasStruct? pessoas,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (pessoas == null) {
    return;
  }
  if (pessoas.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && pessoas.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final pessoasData = getPessoasFirestoreData(pessoas, forFieldValue);
  final nestedData = pessoasData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = pessoas.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPessoasFirestoreData(
  PessoasStruct? pessoas, [
  bool forFieldValue = false,
]) {
  if (pessoas == null) {
    return {};
  }
  final firestoreData = mapToFirestore(pessoas.toMap());

  // Add any Firestore field values
  pessoas.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPessoasListFirestoreData(
  List<PessoasStruct>? pessoass,
) =>
    pessoass?.map((e) => getPessoasFirestoreData(e, true)).toList() ?? [];
