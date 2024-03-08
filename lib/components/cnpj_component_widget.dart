import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'cnpj_component_model.dart';
export 'cnpj_component_model.dart';

class CnpjComponentWidget extends StatefulWidget {
  const CnpjComponentWidget({super.key});

  @override
  State<CnpjComponentWidget> createState() => _CnpjComponentWidgetState();
}

class _CnpjComponentWidgetState extends State<CnpjComponentWidget> {
  late CnpjComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CnpjComponentModel());

    _model.txtCnpjController ??= TextEditingController();
    _model.txtCnpjFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, -1.0),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
        child: TextFormField(
          controller: _model.txtCnpjController,
          focusNode: _model.txtCnpjFocusNode,
          autofocus: true,
          obscureText: false,
          decoration: InputDecoration(
            labelText: 'CNPJ',
            labelStyle: FlutterFlowTheme.of(context).labelMedium,
            hintText: 'Digite o cnpj',
            hintStyle: FlutterFlowTheme.of(context).labelMedium,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: FlutterFlowTheme.of(context).secondaryText,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: FlutterFlowTheme.of(context).primary,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: FlutterFlowTheme.of(context).error,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: FlutterFlowTheme.of(context).error,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          style: FlutterFlowTheme.of(context).bodyMedium,
          keyboardType: TextInputType.number,
          validator: _model.txtCnpjControllerValidator.asValidator(context),
          inputFormatters: [_model.txtCnpjMask],
        ),
      ),
    );
  }
}
