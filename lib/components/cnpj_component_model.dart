import '/flutter_flow/flutter_flow_util.dart';
import 'cnpj_component_widget.dart' show CnpjComponentWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CnpjComponentModel extends FlutterFlowModel<CnpjComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txtCnpj widget.
  FocusNode? txtCnpjFocusNode;
  TextEditingController? txtCnpjController;
  final txtCnpjMask = MaskTextInputFormatter(mask: '##.###.###/####-##');
  String? Function(BuildContext, String?)? txtCnpjControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtCnpjFocusNode?.dispose();
    txtCnpjController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
