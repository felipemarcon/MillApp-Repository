import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class MillClassificacaoAtendimentoRecord extends FirestoreRecord {
  MillClassificacaoAtendimentoRecord._(
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
      FirebaseFirestore.instance.collection('mill_classificacao_atendimento');

  static Stream<MillClassificacaoAtendimentoRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => MillClassificacaoAtendimentoRecord.fromSnapshot(s));

  static Future<MillClassificacaoAtendimentoRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => MillClassificacaoAtendimentoRecord.fromSnapshot(s));

  static MillClassificacaoAtendimentoRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      MillClassificacaoAtendimentoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MillClassificacaoAtendimentoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MillClassificacaoAtendimentoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MillClassificacaoAtendimentoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MillClassificacaoAtendimentoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMillClassificacaoAtendimentoRecordData({
  String? nome,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
    }.withoutNulls,
  );

  return firestoreData;
}

class MillClassificacaoAtendimentoRecordDocumentEquality
    implements Equality<MillClassificacaoAtendimentoRecord> {
  const MillClassificacaoAtendimentoRecordDocumentEquality();

  @override
  bool equals(MillClassificacaoAtendimentoRecord? e1,
      MillClassificacaoAtendimentoRecord? e2) {
    return e1?.nome == e2?.nome;
  }

  @override
  int hash(MillClassificacaoAtendimentoRecord? e) =>
      const ListEquality().hash([e?.nome]);

  @override
  bool isValidKey(Object? o) => o is MillClassificacaoAtendimentoRecord;
}
