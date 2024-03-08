import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/sqlite/sqlite_manager.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'person_list_widget.dart' show PersonListWidget;
import 'package:flutter/material.dart';

class PersonListModel extends FlutterFlowModel<PersonListWidget> {
  ///  Local state fields for this page.

  int? contagemLoop = 0;

  int? nmrPaginas;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - checarConexaoInternet] action in PersonList widget.
  bool? checkNet;
  // Stores action output result for [Backend Call - API (Autenticacao com JWT)] action in PersonList widget.
  ApiCallResponse? sqlJWT;
  // Stores action output result for [Backend Call - API (Lista Registros SQL)] action in PersonList widget.
  ApiCallResponse? sqlPessoas;
  // Stores action output result for [Backend Call - SQLite (selectPessoa)] action in PersonList widget.
  List<SelectPessoaRow>? selectPessoa;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<MillPessoaRecord> simpleSearchResults = [];

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
