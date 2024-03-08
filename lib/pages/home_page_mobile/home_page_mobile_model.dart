import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_mobile_widget.dart' show HomePageMobileWidget;
import 'package:flutter/material.dart';

class HomePageMobileModel extends FlutterFlowModel<HomePageMobileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Autenticacao com JWT)] action in Button widget.
  ApiCallResponse? sqlJWT;
  // Stores action output result for [Backend Call - API (Lista Registros SQL)] action in Button widget.
  ApiCallResponse? sqlPessoas;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
