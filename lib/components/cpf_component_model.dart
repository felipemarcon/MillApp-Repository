import '/flutter_flow/flutter_flow_util.dart';
import 'cpf_component_widget.dart' show CpfComponentWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CpfComponentModel extends FlutterFlowModel<CpfComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txtCPF widget.
  FocusNode? txtCPFFocusNode;
  TextEditingController? txtCPFController;
  final txtCPFMask = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)? txtCPFControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtCPFFocusNode?.dispose();
    txtCPFController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
