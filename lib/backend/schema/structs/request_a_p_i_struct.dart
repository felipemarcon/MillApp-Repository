// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RequestAPIStruct extends FFFirebaseStruct {
  RequestAPIStruct({
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

  static RequestAPIStruct fromMap(Map<String, dynamic> data) =>
      RequestAPIStruct(
        status: data['status'] as String?,
        data: getStructList(
          data['data'],
          MillPessoaStruct.fromMap,
        ),
      );

  static RequestAPIStruct? maybeFromMap(dynamic data) => data is Map
      ? RequestAPIStruct.fromMap(data.cast<String, dynamic>())
      : null;

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

  static RequestAPIStruct fromSerializableMap(Map<String, dynamic> data) =>
      RequestAPIStruct(
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
  String toString() => 'RequestAPIStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is RequestAPIStruct &&
        status == other.status &&
        listEquality.equals(data, other.data);
  }

  @override
  int get hashCode => const ListEquality().hash([status, data]);
}

RequestAPIStruct createRequestAPIStruct({
  String? status,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RequestAPIStruct(
      status: status,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RequestAPIStruct? updateRequestAPIStruct(
  RequestAPIStruct? requestAPI, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    requestAPI
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRequestAPIStructData(
  Map<String, dynamic> firestoreData,
  RequestAPIStruct? requestAPI,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (requestAPI == null) {
    return;
  }
  if (requestAPI.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && requestAPI.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final requestAPIData = getRequestAPIFirestoreData(requestAPI, forFieldValue);
  final nestedData = requestAPIData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = requestAPI.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRequestAPIFirestoreData(
  RequestAPIStruct? requestAPI, [
  bool forFieldValue = false,
]) {
  if (requestAPI == null) {
    return {};
  }
  final firestoreData = mapToFirestore(requestAPI.toMap());

  // Add any Firestore field values
  requestAPI.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRequestAPIListFirestoreData(
  List<RequestAPIStruct>? requestAPIs,
) =>
    requestAPIs?.map((e) => getRequestAPIFirestoreData(e, true)).toList() ?? [];
