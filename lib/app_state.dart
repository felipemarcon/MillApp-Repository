import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _itensDatatype = prefs
              .getStringList('ff_itensDatatype')
              ?.map((x) {
                try {
                  return MillPessoaStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _itensDatatype;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_apiRequest')) {
        try {
          final serializedData = prefs.getString('ff_apiRequest') ?? '{}';
          _apiRequest =
              RequestAPIStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<MillPessoaStruct> _itensDatatype = [];
  List<MillPessoaStruct> get itensDatatype => _itensDatatype;
  set itensDatatype(List<MillPessoaStruct> value) {
    _itensDatatype = value;
    prefs.setStringList(
        'ff_itensDatatype', value.map((x) => x.serialize()).toList());
  }

  void addToItensDatatype(MillPessoaStruct value) {
    _itensDatatype.add(value);
    prefs.setStringList(
        'ff_itensDatatype', _itensDatatype.map((x) => x.serialize()).toList());
  }

  void removeFromItensDatatype(MillPessoaStruct value) {
    _itensDatatype.remove(value);
    prefs.setStringList(
        'ff_itensDatatype', _itensDatatype.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromItensDatatype(int index) {
    _itensDatatype.removeAt(index);
    prefs.setStringList(
        'ff_itensDatatype', _itensDatatype.map((x) => x.serialize()).toList());
  }

  void updateItensDatatypeAtIndex(
    int index,
    MillPessoaStruct Function(MillPessoaStruct) updateFn,
  ) {
    _itensDatatype[index] = updateFn(_itensDatatype[index]);
    prefs.setStringList(
        'ff_itensDatatype', _itensDatatype.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInItensDatatype(int index, MillPessoaStruct value) {
    _itensDatatype.insert(index, value);
    prefs.setStringList(
        'ff_itensDatatype', _itensDatatype.map((x) => x.serialize()).toList());
  }

  RequestAPIStruct _apiRequest =
      RequestAPIStruct.fromSerializableMap(jsonDecode('{\"data\":\"[]\"}'));
  RequestAPIStruct get apiRequest => _apiRequest;
  set apiRequest(RequestAPIStruct value) {
    _apiRequest = value;
    prefs.setString('ff_apiRequest', value.serialize());
  }

  void updateApiRequestStruct(Function(RequestAPIStruct) updateFn) {
    updateFn(_apiRequest);
    prefs.setString('ff_apiRequest', _apiRequest.serialize());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
