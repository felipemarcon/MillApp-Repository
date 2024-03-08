import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'atendimento_list_widget.dart' show AtendimentoListWidget;
import 'package:flutter/material.dart';

class AtendimentoListModel extends FlutterFlowModel<AtendimentoListWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<MillAtendimentoRecord> simpleSearchResults = [];

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
