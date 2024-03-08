import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class MillProjetoRecord extends FirestoreRecord {
  MillProjetoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mill_projeto');

  static Stream<MillProjetoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MillProjetoRecord.fromSnapshot(s));

  static Future<MillProjetoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MillProjetoRecord.fromSnapshot(s));

  static MillProjetoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MillProjetoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MillProjetoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MillProjetoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MillProjetoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MillProjetoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMillProjetoRecordData({
  String? nome,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
    }.withoutNulls,
  );

  return firestoreData;
}

class MillProjetoRecordDocumentEquality implements Equality<MillProjetoRecord> {
  const MillProjetoRecordDocumentEquality();

  @override
  bool equals(MillProjetoRecord? e1, MillProjetoRecord? e2) {
    return e1?.nome == e2?.nome;
  }

  @override
  int hash(MillProjetoRecord? e) => const ListEquality().hash([e?.nome]);

  @override
  bool isValidKey(Object? o) => o is MillProjetoRecord;
}
