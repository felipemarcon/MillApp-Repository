import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MillAtendimentoRecord extends FirestoreRecord {
  MillAtendimentoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nome_solicitante" field.
  String? _nomeSolicitante;
  String get nomeSolicitante => _nomeSolicitante ?? '';
  bool hasNomeSolicitante() => _nomeSolicitante != null;

  // "dt_atendimento" field.
  DateTime? _dtAtendimento;
  DateTime? get dtAtendimento => _dtAtendimento;
  bool hasDtAtendimento() => _dtAtendimento != null;

  // "contato_id" field.
  DocumentReference? _contatoId;
  DocumentReference? get contatoId => _contatoId;
  bool hasContatoId() => _contatoId != null;

  // "colaborador_id" field.
  DocumentReference? _colaboradorId;
  DocumentReference? get colaboradorId => _colaboradorId;
  bool hasColaboradorId() => _colaboradorId != null;

  // "hora_inicial" field.
  String? _horaInicial;
  String get horaInicial => _horaInicial ?? '';
  bool hasHoraInicial() => _horaInicial != null;

  // "hora_final" field.
  String? _horaFinal;
  String get horaFinal => _horaFinal ?? '';
  bool hasHoraFinal() => _horaFinal != null;

  // "tempo_atendimento" field.
  String? _tempoAtendimento;
  String get tempoAtendimento => _tempoAtendimento ?? '';
  bool hasTempoAtendimento() => _tempoAtendimento != null;

  // "retrabalho" field.
  bool? _retrabalho;
  bool get retrabalho => _retrabalho ?? false;
  bool hasRetrabalho() => _retrabalho != null;

  // "projeto_id" field.
  DocumentReference? _projetoId;
  DocumentReference? get projetoId => _projetoId;
  bool hasProjetoId() => _projetoId != null;

  // "classificacao_id" field.
  DocumentReference? _classificacaoId;
  DocumentReference? get classificacaoId => _classificacaoId;
  bool hasClassificacaoId() => _classificacaoId != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "vl_cobranca_despesa" field.
  double? _vlCobrancaDespesa;
  double get vlCobrancaDespesa => _vlCobrancaDespesa ?? 0.0;
  bool hasVlCobrancaDespesa() => _vlCobrancaDespesa != null;

  // "qte_km" field.
  double? _qteKm;
  double get qteKm => _qteKm ?? 0.0;
  bool hasQteKm() => _qteKm != null;

  // "cobranca_adicional" field.
  bool? _cobrancaAdicional;
  bool get cobrancaAdicional => _cobrancaAdicional ?? false;
  bool hasCobrancaAdicional() => _cobrancaAdicional != null;

  void _initializeFields() {
    _nomeSolicitante = snapshotData['nome_solicitante'] as String?;
    _dtAtendimento = snapshotData['dt_atendimento'] as DateTime?;
    _contatoId = snapshotData['contato_id'] as DocumentReference?;
    _colaboradorId = snapshotData['colaborador_id'] as DocumentReference?;
    _horaInicial = snapshotData['hora_inicial'] as String?;
    _horaFinal = snapshotData['hora_final'] as String?;
    _tempoAtendimento = snapshotData['tempo_atendimento'] as String?;
    _retrabalho = snapshotData['retrabalho'] as bool?;
    _projetoId = snapshotData['projeto_id'] as DocumentReference?;
    _classificacaoId = snapshotData['classificacao_id'] as DocumentReference?;
    _descricao = snapshotData['descricao'] as String?;
    _vlCobrancaDespesa =
        castToType<double>(snapshotData['vl_cobranca_despesa']);
    _qteKm = castToType<double>(snapshotData['qte_km']);
    _cobrancaAdicional = snapshotData['cobranca_adicional'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mill_atendimento');

  static Stream<MillAtendimentoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MillAtendimentoRecord.fromSnapshot(s));

  static Future<MillAtendimentoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MillAtendimentoRecord.fromSnapshot(s));

  static MillAtendimentoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MillAtendimentoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MillAtendimentoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MillAtendimentoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MillAtendimentoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MillAtendimentoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMillAtendimentoRecordData({
  String? nomeSolicitante,
  DateTime? dtAtendimento,
  DocumentReference? contatoId,
  DocumentReference? colaboradorId,
  String? horaInicial,
  String? horaFinal,
  String? tempoAtendimento,
  bool? retrabalho,
  DocumentReference? projetoId,
  DocumentReference? classificacaoId,
  String? descricao,
  double? vlCobrancaDespesa,
  double? qteKm,
  bool? cobrancaAdicional,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome_solicitante': nomeSolicitante,
      'dt_atendimento': dtAtendimento,
      'contato_id': contatoId,
      'colaborador_id': colaboradorId,
      'hora_inicial': horaInicial,
      'hora_final': horaFinal,
      'tempo_atendimento': tempoAtendimento,
      'retrabalho': retrabalho,
      'projeto_id': projetoId,
      'classificacao_id': classificacaoId,
      'descricao': descricao,
      'vl_cobranca_despesa': vlCobrancaDespesa,
      'qte_km': qteKm,
      'cobranca_adicional': cobrancaAdicional,
    }.withoutNulls,
  );

  return firestoreData;
}

class MillAtendimentoRecordDocumentEquality
    implements Equality<MillAtendimentoRecord> {
  const MillAtendimentoRecordDocumentEquality();

  @override
  bool equals(MillAtendimentoRecord? e1, MillAtendimentoRecord? e2) {
    return e1?.nomeSolicitante == e2?.nomeSolicitante &&
        e1?.dtAtendimento == e2?.dtAtendimento &&
        e1?.contatoId == e2?.contatoId &&
        e1?.colaboradorId == e2?.colaboradorId &&
        e1?.horaInicial == e2?.horaInicial &&
        e1?.horaFinal == e2?.horaFinal &&
        e1?.tempoAtendimento == e2?.tempoAtendimento &&
        e1?.retrabalho == e2?.retrabalho &&
        e1?.projetoId == e2?.projetoId &&
        e1?.classificacaoId == e2?.classificacaoId &&
        e1?.descricao == e2?.descricao &&
        e1?.vlCobrancaDespesa == e2?.vlCobrancaDespesa &&
        e1?.qteKm == e2?.qteKm &&
        e1?.cobrancaAdicional == e2?.cobrancaAdicional;
  }

  @override
  int hash(MillAtendimentoRecord? e) => const ListEquality().hash([
        e?.nomeSolicitante,
        e?.dtAtendimento,
        e?.contatoId,
        e?.colaboradorId,
        e?.horaInicial,
        e?.horaFinal,
        e?.tempoAtendimento,
        e?.retrabalho,
        e?.projetoId,
        e?.classificacaoId,
        e?.descricao,
        e?.vlCobrancaDespesa,
        e?.qteKm,
        e?.cobrancaAdicional
      ]);

  @override
  bool isValidKey(Object? o) => o is MillAtendimentoRecord;
}
