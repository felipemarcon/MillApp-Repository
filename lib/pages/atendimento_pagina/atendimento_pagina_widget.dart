import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:collection/collection.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'atendimento_pagina_model.dart';
export 'atendimento_pagina_model.dart';

class AtendimentoPaginaWidget extends StatefulWidget {
  const AtendimentoPaginaWidget({super.key});

  @override
  State<AtendimentoPaginaWidget> createState() =>
      _AtendimentoPaginaWidgetState();
}

class _AtendimentoPaginaWidgetState extends State<AtendimentoPaginaWidget> {
  late AtendimentoPaginaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AtendimentoPaginaModel());

    _model.dtAtendimentoController1 ??= TextEditingController();
    _model.dtAtendimentoFocusNode1 ??= FocusNode();

    _model.dtAtendimentoController2 ??= TextEditingController();
    _model.dtAtendimentoFocusNode2 ??= FocusNode();

    _model.tempoInicioController ??= TextEditingController();
    _model.tempoInicioFocusNode ??= FocusNode();

    _model.tempoFinalController ??= TextEditingController();
    _model.tempoFinalFocusNode ??= FocusNode();
    _model.tempoFinalFocusNode!.addListener(
      () async {
        if (_model.tempoInicioController.text != '') {
          setState(() {
            _model.tempoResultadoController?.text = functions.calcularTempo(
                _model.tempoInicioController.text,
                _model.tempoFinalController.text)!;
          });
        }
      },
    );
    _model.tempoResultadoController ??= TextEditingController();
    _model.tempoResultadoFocusNode ??= FocusNode();

    _model.textDescricaoController ??= TextEditingController();
    _model.textDescricaoFocusNode ??= FocusNode();

    _model.txtCobrancaController ??= TextEditingController();
    _model.txtCobrancaFocusNode ??= FocusNode();

    _model.txtQtdkmController ??= TextEditingController();
    _model.txtQtdkmFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFFFBF9F5),
        appBar: AppBar(
          backgroundColor: const Color(0xFF090721),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: const Icon(
              Icons.chevron_left_outlined,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pushNamed('HomePageMobile');
            },
          ),
          title: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
            child: Text(
              'Pagina Atendimento',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Outfit',
                    color: Colors.white,
                    fontSize: 22.0,
                  ),
            ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16.0, 20.0, 16.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 10.0),
                          child: TextFormField(
                            controller: _model.dtAtendimentoController1,
                            focusNode: _model.dtAtendimentoFocusNode1,
                            textCapitalization: TextCapitalization.none,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Data do Atendimento',
                              hintText: 'Digite a data...',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Inter',
                                    color: const Color(0xFF101518),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFF101518),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              contentPadding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 32.0, 20.0, 12.0),
                              suffixIcon: const Icon(
                                Icons.date_range,
                              ),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  color: const Color(0xFF101518),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.normal,
                                ),
                            keyboardType: TextInputType.datetime,
                            validator: _model.dtAtendimentoController1Validator
                                .asValidator(context),
                            inputFormatters: [_model.dtAtendimentoMask1],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Text(
                      'Contato:',
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                    child: StreamBuilder<List<MillPessoaRecord>>(
                      stream: queryMillPessoaRecord(),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                            ),
                          );
                        }
                        List<MillPessoaRecord>
                            contatoSelectMillPessoaRecordList = snapshot.data!;
                        return FlutterFlowDropDown<String>(
                          controller: _model.contatoSelectValueController ??=
                              FormFieldController<String>(null),
                          options: contatoSelectMillPessoaRecordList
                              .map((e) => e.nome)
                              .toList(),
                          onChanged: (val) =>
                              setState(() => _model.contatoSelectValue = val),
                          width: double.infinity,
                          height: 50.0,
                          searchHintTextStyle:
                              FlutterFlowTheme.of(context).labelMedium,
                          searchTextStyle:
                              FlutterFlowTheme.of(context).bodyMedium,
                          textStyle: FlutterFlowTheme.of(context).bodyMedium,
                          hintText: 'Seleciona o contato...',
                          searchHintText: 'Pesquise pelo contatto...',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 2.0,
                          borderColor: FlutterFlowTheme.of(context).alternate,
                          borderWidth: 2.0,
                          borderRadius: 8.0,
                          margin: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 4.0, 16.0, 4.0),
                          hidesUnderline: true,
                          isOverButton: true,
                          isSearchable: true,
                          isMultiSelect: false,
                        );
                      },
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Text(
                      'Colaborador:',
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                    child: StreamBuilder<List<MillPessoaRecord>>(
                      stream: queryMillPessoaRecord(),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                            ),
                          );
                        }
                        List<MillPessoaRecord>
                            colaboradorSelectMillPessoaRecordList =
                            snapshot.data!;
                        return FlutterFlowDropDown<String>(
                          controller:
                              _model.colaboradorSelectValueController ??=
                                  FormFieldController<String>(null),
                          options: colaboradorSelectMillPessoaRecordList
                              .map((e) => e.nome)
                              .toList(),
                          onChanged: (val) => setState(
                              () => _model.colaboradorSelectValue = val),
                          width: double.infinity,
                          height: 50.0,
                          searchHintTextStyle:
                              FlutterFlowTheme.of(context).labelMedium,
                          searchTextStyle:
                              FlutterFlowTheme.of(context).bodyMedium,
                          textStyle: FlutterFlowTheme.of(context).bodyMedium,
                          hintText: 'Seleciona o colaborador...',
                          searchHintText: 'Pesquise pelo colaborador..',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 2.0,
                          borderColor: FlutterFlowTheme.of(context).alternate,
                          borderWidth: 2.0,
                          borderRadius: 8.0,
                          margin: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 4.0, 16.0, 4.0),
                          hidesUnderline: true,
                          isOverButton: true,
                          isSearchable: true,
                          isMultiSelect: false,
                        );
                      },
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 10.0),
                          child: TextFormField(
                            controller: _model.dtAtendimentoController2,
                            focusNode: _model.dtAtendimentoFocusNode2,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Pessoa',
                              hintText: 'Digite a pessoa...',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Inter',
                                    color: const Color(0xFF101518),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFF101518),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              contentPadding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 32.0, 20.0, 12.0),
                              suffixIcon: const Icon(
                                Icons.person,
                              ),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  color: const Color(0xFF101518),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.normal,
                                ),
                            validator: _model.dtAtendimentoController2Validator
                                .asValidator(context),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 0.0),
                            child: StreamBuilder<List<MillProjetoRecord>>(
                              stream: queryMillProjetoRecord(),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                List<MillProjetoRecord>
                                    dropProjetoMillProjetoRecordList =
                                    snapshot.data!;
                                return FlutterFlowDropDown<String>(
                                  controller:
                                      _model.dropProjetoValueController ??=
                                          FormFieldController<String>(null),
                                  options: dropProjetoMillProjetoRecordList
                                      .map((e) => e.nome)
                                      .toList(),
                                  onChanged: (val) => setState(
                                      () => _model.dropProjetoValue = val),
                                  width: 300.0,
                                  height: 50.0,
                                  textStyle:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                  hintText: 'Selecione o projeto...',
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24.0,
                                  ),
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  elevation: 2.0,
                                  borderColor:
                                      FlutterFlowTheme.of(context).alternate,
                                  borderWidth: 2.0,
                                  borderRadius: 8.0,
                                  margin: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 4.0, 16.0, 4.0),
                                  hidesUnderline: true,
                                  isOverButton: true,
                                  isSearchable: false,
                                  isMultiSelect: false,
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 0.0),
                            child: StreamBuilder<
                                List<MillClassificacaoAtendimentoRecord>>(
                              stream: queryMillClassificacaoAtendimentoRecord(),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                List<MillClassificacaoAtendimentoRecord>
                                    dropClassificacaoMillClassificacaoAtendimentoRecordList =
                                    snapshot.data!;
                                return FlutterFlowDropDown<String>(
                                  controller: _model
                                          .dropClassificacaoValueController ??=
                                      FormFieldController<String>(null),
                                  options:
                                      dropClassificacaoMillClassificacaoAtendimentoRecordList
                                          .map((e) => e.nome)
                                          .toList(),
                                  onChanged: (val) => setState(() =>
                                      _model.dropClassificacaoValue = val),
                                  width: 300.0,
                                  height: 50.0,
                                  textStyle:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                  hintText: 'Selecione a classificação...',
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24.0,
                                  ),
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  elevation: 2.0,
                                  borderColor:
                                      FlutterFlowTheme.of(context).alternate,
                                  borderWidth: 2.0,
                                  borderRadius: 8.0,
                                  margin: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 4.0, 16.0, 4.0),
                                  hidesUnderline: true,
                                  isOverButton: true,
                                  isSearchable: false,
                                  isMultiSelect: false,
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ].divide(const SizedBox(width: 10.0)),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Theme(
                        data: ThemeData(
                          checkboxTheme: CheckboxThemeData(
                            visualDensity: VisualDensity.standard,
                            materialTapTargetSize: MaterialTapTargetSize.padded,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                          ),
                          unselectedWidgetColor:
                              FlutterFlowTheme.of(context).secondaryText,
                        ),
                        child: Checkbox(
                          value: _model.checkRetrabalhoValue ??= true,
                          onChanged: (newValue) async {
                            setState(
                                () => _model.checkRetrabalhoValue = newValue!);
                          },
                          activeColor: FlutterFlowTheme.of(context).primaryText,
                          checkColor: FlutterFlowTheme.of(context).info,
                        ),
                      ),
                      Text(
                        'Retrabalho',
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 0.0),
                          child: TextFormField(
                            controller: _model.tempoInicioController,
                            focusNode: _model.tempoInicioFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.tempoInicioController',
                              const Duration(milliseconds: 2000),
                              () async {
                                if (_model.tempoFinalController.text != '') {
                                  setState(() {
                                    _model.tempoResultadoController?.text =
                                        functions.calcularTempo(
                                            _model.tempoInicioController.text,
                                            _model.tempoFinalController.text)!;
                                  });
                                }
                              },
                            ),
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Hora Inicial',
                              hintText: 'Digite a hora',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Inter',
                                    color: const Color(0xFF101518),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFF101518),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              contentPadding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 32.0, 20.0, 12.0),
                              suffixIcon: const Icon(
                                Icons.access_time_rounded,
                              ),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  color: const Color(0xFF101518),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.normal,
                                ),
                            keyboardType: TextInputType.number,
                            validator: _model.tempoInicioControllerValidator
                                .asValidator(context),
                            inputFormatters: [_model.tempoInicioMask],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 0.0),
                          child: TextFormField(
                            controller: _model.tempoFinalController,
                            focusNode: _model.tempoFinalFocusNode,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Hora Final',
                              hintText: 'Digite a hora',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Inter',
                                    color: const Color(0xFF101518),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFF101518),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              contentPadding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 32.0, 20.0, 12.0),
                              suffixIcon: const Icon(
                                Icons.access_time_rounded,
                              ),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  color: const Color(0xFF101518),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.normal,
                                ),
                            keyboardType: TextInputType.number,
                            validator: _model.tempoFinalControllerValidator
                                .asValidator(context),
                            inputFormatters: [_model.tempoFinalMask],
                          ),
                        ),
                      ),
                    ].divide(const SizedBox(width: 10.0)),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                      child: Text(
                        'Tempo:',
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: SizedBox(
                                width: 200.0,
                                child: TextFormField(
                                  controller: _model.tempoResultadoController,
                                  focusNode: _model.tempoResultadoFocusNode,
                                  readOnly: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Tempo:',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Inter',
                                          color: const Color(0xFF101518),
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFF101518),
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0x00000000),
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0x00000000),
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0x00000000),
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    contentPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            20.0, 32.0, 20.0, 12.0),
                                    suffixIcon: const Icon(
                                      Icons.access_time_rounded,
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        color: const Color(0xFF101518),
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                  keyboardType: TextInputType.number,
                                  validator: _model
                                      .tempoResultadoControllerValidator
                                      .asValidator(context),
                                  inputFormatters: [_model.tempoResultadoMask],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 5.0),
                    child: TextFormField(
                      controller: _model.textDescricaoController,
                      focusNode: _model.textDescricaoFocusNode,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Descrição do Atendimento',
                        hintText: 'Digite aqui a descrição do atendimento...',
                        hintStyle:
                            FlutterFlowTheme.of(context).bodyLarge.override(
                                  fontFamily: 'Inter',
                                  color: const Color(0xFF101518),
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.normal,
                                ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xFF101518),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0x00000000),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0x00000000),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0x00000000),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        contentPadding: const EdgeInsetsDirectional.fromSTEB(
                            20.0, 32.0, 20.0, 12.0),
                        suffixIcon: const Icon(
                          Icons.description_rounded,
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            color: const Color(0xFF101518),
                            fontSize: 14.0,
                            fontWeight: FontWeight.normal,
                          ),
                      maxLines: 4,
                      validator: _model.textDescricaoControllerValidator
                          .asValidator(context),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Theme(
                        data: ThemeData(
                          checkboxTheme: CheckboxThemeData(
                            visualDensity: VisualDensity.standard,
                            materialTapTargetSize: MaterialTapTargetSize.padded,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                          ),
                          unselectedWidgetColor:
                              FlutterFlowTheme.of(context).secondaryText,
                        ),
                        child: Checkbox(
                          value: _model.checkAdicionalValue ??= true,
                          onChanged: (newValue) async {
                            setState(
                                () => _model.checkAdicionalValue = newValue!);
                          },
                          activeColor: FlutterFlowTheme.of(context).primaryText,
                          checkColor: FlutterFlowTheme.of(context).info,
                        ),
                      ),
                      Text(
                        'Cobrança Adicional',
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 0.0),
                          child: TextFormField(
                            controller: _model.txtCobrancaController,
                            focusNode: _model.txtCobrancaFocusNode,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Valor Cobrança',
                              hintText: 'Digite o valor da cobrança...',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Inter',
                                    color: const Color(0xFF101518),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFF101518),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              contentPadding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 32.0, 20.0, 12.0),
                              suffixIcon: const Icon(
                                Icons.attach_money_rounded,
                              ),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  color: const Color(0xFF101518),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.normal,
                                ),
                            keyboardType: const TextInputType.numberWithOptions(
                                decimal: true),
                            validator: _model.txtCobrancaControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 0.0),
                          child: TextFormField(
                            controller: _model.txtQtdkmController,
                            focusNode: _model.txtQtdkmFocusNode,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Quantidade de KM',
                              hintText: 'Km rodados...',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Inter',
                                    color: const Color(0xFF101518),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFF101518),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              contentPadding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 32.0, 20.0, 12.0),
                              suffixIcon: const Icon(
                                Icons.route,
                              ),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  color: const Color(0xFF101518),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.normal,
                                ),
                            keyboardType: const TextInputType.numberWithOptions(
                                decimal: true),
                            validator: _model.txtQtdkmControllerValidator
                                .asValidator(context),
                            inputFormatters: [_model.txtQtdkmMask],
                          ),
                        ),
                      ),
                    ].divide(const SizedBox(width: 10.0)),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 20.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              _model.outContato =
                                  await queryMillPessoaRecordOnce(
                                queryBuilder: (millPessoaRecord) =>
                                    millPessoaRecord.where(
                                  'nome',
                                  isEqualTo: _model.contatoSelectValue,
                                ),
                                singleRecord: true,
                              ).then((s) => s.firstOrNull);
                              _model.outColaborador =
                                  await queryMillPessoaRecordOnce(
                                queryBuilder: (millPessoaRecord) =>
                                    millPessoaRecord.where(
                                  'nome',
                                  isEqualTo: _model.colaboradorSelectValue,
                                ),
                                singleRecord: true,
                              ).then((s) => s.firstOrNull);
                              _model.outClassificacao =
                                  await queryMillClassificacaoAtendimentoRecordOnce(
                                queryBuilder:
                                    (millClassificacaoAtendimentoRecord) =>
                                        millClassificacaoAtendimentoRecord
                                            .where(
                                  'nome',
                                  isEqualTo: _model.dropClassificacaoValue,
                                ),
                                singleRecord: true,
                              ).then((s) => s.firstOrNull);
                              _model.outProjeto =
                                  await queryMillProjetoRecordOnce(
                                queryBuilder: (millProjetoRecord) =>
                                    millProjetoRecord.where(
                                  'nome',
                                  isEqualTo: _model.dropProjetoValue,
                                ),
                                singleRecord: true,
                              ).then((s) => s.firstOrNull);

                              await MillAtendimentoRecord.collection
                                  .doc()
                                  .set(createMillAtendimentoRecordData(
                                    nomeSolicitante:
                                        _model.dtAtendimentoController2.text,
                                    dtAtendimento: functions.retornarData(
                                        _model.dtAtendimentoController1.text),
                                    contatoId: _model.outContato?.reference,
                                    colaboradorId:
                                        _model.outColaborador?.reference,
                                    horaInicial:
                                        _model.tempoInicioController.text,
                                    horaFinal: _model.tempoFinalController.text,
                                    tempoAtendimento: functions.calcularTempo(
                                        _model.tempoInicioController.text,
                                        _model.tempoFinalController.text),
                                    retrabalho: _model.checkRetrabalhoValue,
                                    projetoId: _model.outProjeto?.reference,
                                    classificacaoId:
                                        _model.outClassificacao?.reference,
                                    descricao:
                                        _model.textDescricaoController.text,
                                    vlCobrancaDespesa: double.tryParse(
                                        _model.txtCobrancaController.text),
                                    qteKm: double.tryParse(
                                        _model.txtQtdkmController.text),
                                    cobrancaAdicional:
                                        _model.checkAdicionalValue,
                                  ));
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: const Text('Sucesso'),
                                    content: const Text(
                                        'Os dados foram cadastrados com sucesso!'),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(alertDialogContext),
                                        child: const Text('Ok'),
                                      ),
                                    ],
                                  );
                                },
                              );

                              setState(() {});
                            },
                            text: 'Finalizar',
                            options: FFButtonOptions(
                              width: double.infinity,
                              height: 55.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).secondary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                              elevation: 2.0,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 20.0),
                          child: FFButtonWidget(
                            onPressed: () {
                              print('btnLimpar pressed ...');
                            },
                            text: 'Limpar',
                            options: FFButtonOptions(
                              width: double.infinity,
                              height: 55.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: const Color(0xFF507583),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                              elevation: 2.0,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                    ].divide(const SizedBox(width: 5.0)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
