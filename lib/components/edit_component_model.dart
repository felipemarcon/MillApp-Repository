import '/components/cnpj_component_widget.dart';
import '/components/cpf_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/menu_lateral/menu_lateral_widget.dart';
import 'edit_component_widget.dart' show EditComponentWidget;
import 'package:flutter/material.dart';

class EditComponentModel extends FlutterFlowModel<EditComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for MenuLateral component.
  late MenuLateralModel menuLateralModel;
  // State field(s) for txtNome widget.
  FocusNode? txtNomeFocusNode;
  TextEditingController? txtNomeController;
  String? Function(BuildContext, String?)? txtNomeControllerValidator;
  // State field(s) for txtFantasia widget.
  FocusNode? txtFantasiaFocusNode;
  TextEditingController? txtFantasiaController;
  String? Function(BuildContext, String?)? txtFantasiaControllerValidator;
  // State field(s) for tipoPessoa widget.
  String? tipoPessoaValue;
  FormFieldController<String>? tipoPessoaValueController;
  // Model for cpfComponent component.
  late CpfComponentModel cpfComponentModel;
  // Model for cnpjComponent component.
  late CnpjComponentModel cnpjComponentModel;
  // State field(s) for txtEmail widget.
  FocusNode? txtEmailFocusNode;
  TextEditingController? txtEmailController;
  String? Function(BuildContext, String?)? txtEmailControllerValidator;
  // State field(s) for txtCep widget.
  FocusNode? txtCepFocusNode;
  TextEditingController? txtCepController;
  String? Function(BuildContext, String?)? txtCepControllerValidator;
  // State field(s) for txtLogradouro widget.
  FocusNode? txtLogradouroFocusNode;
  TextEditingController? txtLogradouroController;
  String? Function(BuildContext, String?)? txtLogradouroControllerValidator;
  // State field(s) for txtBairro widget.
  FocusNode? txtBairroFocusNode;
  TextEditingController? txtBairroController;
  String? Function(BuildContext, String?)? txtBairroControllerValidator;
  // State field(s) for txtNumero widget.
  FocusNode? txtNumeroFocusNode;
  TextEditingController? txtNumeroController;
  String? Function(BuildContext, String?)? txtNumeroControllerValidator;
  // State field(s) for txtComplemento widget.
  FocusNode? txtComplementoFocusNode;
  TextEditingController? txtComplementoController;
  String? Function(BuildContext, String?)? txtComplementoControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    menuLateralModel = createModel(context, () => MenuLateralModel());
    cpfComponentModel = createModel(context, () => CpfComponentModel());
    cnpjComponentModel = createModel(context, () => CnpjComponentModel());
  }

  @override
  void dispose() {
    menuLateralModel.dispose();
    txtNomeFocusNode?.dispose();
    txtNomeController?.dispose();

    txtFantasiaFocusNode?.dispose();
    txtFantasiaController?.dispose();

    cpfComponentModel.dispose();
    cnpjComponentModel.dispose();
    txtEmailFocusNode?.dispose();
    txtEmailController?.dispose();

    txtCepFocusNode?.dispose();
    txtCepController?.dispose();

    txtLogradouroFocusNode?.dispose();
    txtLogradouroController?.dispose();

    txtBairroFocusNode?.dispose();
    txtBairroController?.dispose();

    txtNumeroFocusNode?.dispose();
    txtNumeroController?.dispose();

    txtComplementoFocusNode?.dispose();
    txtComplementoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
