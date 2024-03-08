import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MillPessoaRecord extends FirestoreRecord {
  MillPessoaRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "nome_fantasia" field.
  String? _nomeFantasia;
  String get nomeFantasia => _nomeFantasia ?? '';
  bool hasNomeFantasia() => _nomeFantasia != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "dt_cadastro" field.
  DateTime? _dtCadastro;
  DateTime? get dtCadastro => _dtCadastro;
  bool hasDtCadastro() => _dtCadastro != null;

  // "logradouro" field.
  String? _logradouro;
  String get logradouro => _logradouro ?? '';
  bool hasLogradouro() => _logradouro != null;

  // "numero" field.
  int? _numero;
  int get numero => _numero ?? 0;
  bool hasNumero() => _numero != null;

  // "complemento" field.
  String? _complemento;
  String get complemento => _complemento ?? '';
  bool hasComplemento() => _complemento != null;

  // "bairro" field.
  String? _bairro;
  String get bairro => _bairro ?? '';
  bool hasBairro() => _bairro != null;

  // "cep" field.
  String? _cep;
  String get cep => _cep ?? '';
  bool hasCep() => _cep != null;

  // "tipo_pessoa" field.
  String? _tipoPessoa;
  String get tipoPessoa => _tipoPessoa ?? '';
  bool hasTipoPessoa() => _tipoPessoa != null;

  // "documento" field.
  String? _documento;
  String get documento => _documento ?? '';
  bool hasDocumento() => _documento != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _nomeFantasia = snapshotData['nome_fantasia'] as String?;
    _email = snapshotData['email'] as String?;
    _dtCadastro = snapshotData['dt_cadastro'] as DateTime?;
    _logradouro = snapshotData['logradouro'] as String?;
    _numero = castToType<int>(snapshotData['numero']);
    _complemento = snapshotData['complemento'] as String?;
    _bairro = snapshotData['bairro'] as String?;
    _cep = snapshotData['cep'] as String?;
    _tipoPessoa = snapshotData['tipo_pessoa'] as String?;
    _documento = snapshotData['documento'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mill_pessoa');

  static Stream<MillPessoaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MillPessoaRecord.fromSnapshot(s));

  static Future<MillPessoaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MillPessoaRecord.fromSnapshot(s));

  static MillPessoaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MillPessoaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MillPessoaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MillPessoaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MillPessoaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MillPessoaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMillPessoaRecordData({
  String? nome,
  String? nomeFantasia,
  String? email,
  DateTime? dtCadastro,
  String? logradouro,
  int? numero,
  String? complemento,
  String? bairro,
  String? cep,
  String? tipoPessoa,
  String? documento,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'nome_fantasia': nomeFantasia,
      'email': email,
      'dt_cadastro': dtCadastro,
      'logradouro': logradouro,
      'numero': numero,
      'complemento': complemento,
      'bairro': bairro,
      'cep': cep,
      'tipo_pessoa': tipoPessoa,
      'documento': documento,
    }.withoutNulls,
  );

  return firestoreData;
}

class MillPessoaRecordDocumentEquality implements Equality<MillPessoaRecord> {
  const MillPessoaRecordDocumentEquality();

  @override
  bool equals(MillPessoaRecord? e1, MillPessoaRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.nomeFantasia == e2?.nomeFantasia &&
        e1?.email == e2?.email &&
        e1?.dtCadastro == e2?.dtCadastro &&
        e1?.logradouro == e2?.logradouro &&
        e1?.numero == e2?.numero &&
        e1?.complemento == e2?.complemento &&
        e1?.bairro == e2?.bairro &&
        e1?.cep == e2?.cep &&
        e1?.tipoPessoa == e2?.tipoPessoa &&
        e1?.documento == e2?.documento;
  }

  @override
  int hash(MillPessoaRecord? e) => const ListEquality().hash([
        e?.nome,
        e?.nomeFantasia,
        e?.email,
        e?.dtCadastro,
        e?.logradouro,
        e?.numero,
        e?.complemento,
        e?.bairro,
        e?.cep,
        e?.tipoPessoa,
        e?.documento
      ]);

  @override
  bool isValidKey(Object? o) => o is MillPessoaRecord;
}
