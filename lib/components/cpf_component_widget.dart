import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'cpf_component_model.dart';
export 'cpf_component_model.dart';

class CpfComponentWidget extends StatefulWidget {
  const CpfComponentWidget({super.key});

  @override
  State<CpfComponentWidget> createState() => _CpfComponentWidgetState();
}

class _CpfComponentWidgetState extends State<CpfComponentWidget> {
  late CpfComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpfComponentModel());

    _model.txtCPFController ??= TextEditingController();
    _model.txtCPFFocusNode ??= FocusNode();

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
          controller: _model.txtCPFController,
          focusNode: _model.txtCPFFocusNode,
          autofocus: true,
          obscureText: false,
          decoration: InputDecoration(
            labelText: 'CPF',
            labelStyle: FlutterFlowTheme.of(context).labelMedium,
            hintText: 'Digite o cpf',
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
          validator: _model.txtCPFControllerValidator.asValidator(context),
          inputFormatters: [_model.txtCPFMask],
        ),
      ),
    );
  }
}
