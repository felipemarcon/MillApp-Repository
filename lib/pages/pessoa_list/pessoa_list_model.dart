import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'pessoa_list_widget.dart' show PessoaListWidget;
import 'package:flutter/material.dart';

class PessoaListModel extends FlutterFlowModel<PessoaListWidget> {
  ///  Local state fields for this page.

  int? contador;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (Autenticacao com JWT)] action in TextField widget.
  ApiCallResponse? apiResultuk9;
  // Stores action output result for [Backend Call - API (Lista Registros SQL)] action in TextField widget.
  ApiCallResponse? apiResultt7s;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<MillPessoaStruct>();

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
