import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'editar_atendimento_widget.dart' show EditarAtendimentoWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class EditarAtendimentoModel extends FlutterFlowModel<EditarAtendimentoWidget> {
  ///  Local state fields for this page.

  List<MillPessoaRecord> listaPessoa = [];
  void addToListaPessoa(MillPessoaRecord item) => listaPessoa.add(item);
  void removeFromListaPessoa(MillPessoaRecord item) => listaPessoa.remove(item);
  void removeAtIndexFromListaPessoa(int index) => listaPessoa.removeAt(index);
  void insertAtIndexInListaPessoa(int index, MillPessoaRecord item) =>
      listaPessoa.insert(index, item);
  void updateListaPessoaAtIndex(
          int index, Function(MillPessoaRecord) updateFn) =>
      listaPessoa[index] = updateFn(listaPessoa[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for dtAtendimento widget.
  FocusNode? dtAtendimentoFocusNode1;
  TextEditingController? dtAtendimentoController1;
  final dtAtendimentoMask1 = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? dtAtendimentoController1Validator;
  // State field(s) for ContatoSelect widget.
  String? contatoSelectValue;
  FormFieldController<String>? contatoSelectValueController;
  // State field(s) for ColaboradorSelect widget.
  String? colaboradorSelectValue;
  FormFieldController<String>? colaboradorSelectValueController;
  // State field(s) for dtAtendimento widget.
  FocusNode? dtAtendimentoFocusNode2;
  TextEditingController? dtAtendimentoController2;
  String? Function(BuildContext, String?)? dtAtendimentoController2Validator;
  // State field(s) for dropProjeto widget.
  String? dropProjetoValue;
  FormFieldController<String>? dropProjetoValueController;
  // State field(s) for dropClassificacao widget.
  String? dropClassificacaoValue;
  FormFieldController<String>? dropClassificacaoValueController;
  // State field(s) for checkRetrabalho widget.
  bool? checkRetrabalhoValue;
  // State field(s) for tempoInicio widget.
  FocusNode? tempoInicioFocusNode;
  TextEditingController? tempoInicioController;
  final tempoInicioMask = MaskTextInputFormatter(mask: '##:##');
  String? Function(BuildContext, String?)? tempoInicioControllerValidator;
  // State field(s) for tempoFinal widget.
  FocusNode? tempoFinalFocusNode;
  TextEditingController? tempoFinalController;
  final tempoFinalMask = MaskTextInputFormatter(mask: '##:##');
  String? Function(BuildContext, String?)? tempoFinalControllerValidator;
  // State field(s) for tempoResultado widget.
  FocusNode? tempoResultadoFocusNode;
  TextEditingController? tempoResultadoController;
  final tempoResultadoMask = MaskTextInputFormatter(mask: '##:##');
  String? Function(BuildContext, String?)? tempoResultadoControllerValidator;
  // State field(s) for textDescricao widget.
  FocusNode? textDescricaoFocusNode;
  TextEditingController? textDescricaoController;
  String? Function(BuildContext, String?)? textDescricaoControllerValidator;
  // State field(s) for checkAdicional widget.
  bool? checkAdicionalValue;
  // State field(s) for txtCobranca widget.
  FocusNode? txtCobrancaFocusNode;
  TextEditingController? txtCobrancaController;
  String? Function(BuildContext, String?)? txtCobrancaControllerValidator;
  // State field(s) for txtQtdkm widget.
  FocusNode? txtQtdkmFocusNode;
  TextEditingController? txtQtdkmController;
  final txtQtdkmMask = MaskTextInputFormatter(mask: '##:##');
  String? Function(BuildContext, String?)? txtQtdkmControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in btnFinalizar widget.
  MillPessoaRecord? outContato;
  // Stores action output result for [Firestore Query - Query a collection] action in btnFinalizar widget.
  MillPessoaRecord? outColaborador;
  // Stores action output result for [Firestore Query - Query a collection] action in btnFinalizar widget.
  MillClassificacaoAtendimentoRecord? outClassificacao;
  // Stores action output result for [Firestore Query - Query a collection] action in btnFinalizar widget.
  MillProjetoRecord? outProjeto;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    dtAtendimentoFocusNode1?.dispose();
    dtAtendimentoController1?.dispose();

    dtAtendimentoFocusNode2?.dispose();
    dtAtendimentoController2?.dispose();

    tempoInicioFocusNode?.dispose();
    tempoInicioController?.dispose();

    tempoFinalFocusNode?.dispose();
    tempoFinalController?.dispose();

    tempoResultadoFocusNode?.dispose();
    tempoResultadoController?.dispose();

    textDescricaoFocusNode?.dispose();
    textDescricaoController?.dispose();

    txtCobrancaFocusNode?.dispose();
    txtCobrancaController?.dispose();

    txtQtdkmFocusNode?.dispose();
    txtQtdkmController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
