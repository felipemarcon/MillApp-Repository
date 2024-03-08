import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/sqlite/sqlite_manager.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'pessoa_list_model.dart';
export 'pessoa_list_model.dart';

class PessoaListWidget extends StatefulWidget {
  const PessoaListWidget({super.key});

  @override
  State<PessoaListWidget> createState() => _PessoaListWidgetState();
}

class _PessoaListWidgetState extends State<PessoaListWidget> {
  late PessoaListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PessoaListModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.sqlJWT = await AutenticacaoComJWTCall.call();
      _model.sqlPessoas = await ListaRegistrosSQLCall.call(
        authToken: AutenticacaoComJWTCall.codeJWT(
          (_model.sqlJWT?.jsonBody ?? ''),
        ),
      );
      if ((_model.sqlPessoas?.succeeded ?? true)) {
        setState(() {
          FFAppState().apiRequest = RequestAPIStruct.maybeFromMap(
              (_model.sqlPessoas?.jsonBody ?? ''))!;
        });
      }
    });

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
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
              context.pop();
            },
          ),
          title: Text(
            'Lista de Pessoas',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                child: Material(
                  color: Colors.transparent,
                  elevation: 3.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40.0),
                      border: Border.all(
                        color: const Color(0xFFEDE8DF),
                      ),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 12.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const Icon(
                            Icons.search_rounded,
                            color: Color(0xFF57636C),
                            size: 24.0,
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  4.0, 0.0, 0.0, 0.0),
                              child: SizedBox(
                                width: 200.0,
                                child: TextFormField(
                                  controller: _model.textController,
                                  focusNode: _model.textFieldFocusNode,
                                  onFieldSubmitted: (_) async {
                                    _model.apiResultuk9 =
                                        await AutenticacaoComJWTCall.call();
                                    if ((_model.apiResultuk9?.succeeded ??
                                        true)) {
                                      _model.apiResultt7s =
                                          await ListaRegistrosSQLCall.call(
                                        consulta: _model.textController.text,
                                        authToken:
                                            AutenticacaoComJWTCall.codeJWT(
                                          (_model.apiResultuk9?.jsonBody ?? ''),
                                        ),
                                      );
                                      if ((_model.apiResultt7s?.succeeded ??
                                          true)) {
                                        setState(() {
                                          FFAppState().apiRequest =
                                              RequestAPIStruct.maybeFromMap(
                                                  (_model.apiResultt7s
                                                          ?.jsonBody ??
                                                      ''))!;
                                        });
                                      }
                                    }

                                    setState(() {});
                                  },
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Pesquisar por pessoas...',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          color: const Color(0xFF57636C),
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          color: const Color(0xFF57636C),
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    focusedErrorBorder: InputBorder.none,
                                    filled: true,
                                    fillColor: Colors.white,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        color: const Color(0xFF101518),
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                  validator: _model.textControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: FutureBuilder<List<SelectPessoaRow>>(
                    future: SQLiteManager.instance.selectPessoa(),
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
                      final containerSelectPessoaRowList = snapshot.data!;
                      return Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Builder(
                          builder: (context) {
                            final mostrarDataType = containerSelectPessoaRowList
                                .map((e) => e)
                                .toList();
                            return FlutterFlowDataTable<SelectPessoaRow>(
                              controller: _model.paginatedDataTableController,
                              data: mostrarDataType,
                              columnsBuilder: (onSortChanged) => [
                                DataColumn2(
                                  label: DefaultTextStyle.merge(
                                    softWrap: true,
                                    child: Text(
                                      'Informações:',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .override(
                                            fontFamily: 'Outfit',
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                  fixedWidth: 200.0,
                                ),
                                DataColumn2(
                                  label: DefaultTextStyle.merge(
                                    softWrap: true,
                                    child: Text(
                                      'Id',
                                      style: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .override(
                                            fontFamily: 'Outfit',
                                            fontSize: 18.0,
                                          ),
                                    ),
                                  ),
                                ),
                                DataColumn2(
                                  label: DefaultTextStyle.merge(
                                    softWrap: true,
                                    child: Opacity(
                                      opacity: 0.0,
                                      child: Text(
                                        '',
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Outfit',
                                              fontSize: 18.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                              dataRowBuilder: (mostrarDataTypeItem,
                                      mostrarDataTypeIndex,
                                      selected,
                                      onSelectChanged) =>
                                  DataRow(
                                color: MaterialStateProperty.all(
                                  mostrarDataTypeIndex % 2 == 0
                                      ? FlutterFlowTheme.of(context)
                                          .secondaryBackground
                                      : FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                ),
                                cells: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        valueOrDefault<String>(
                                          mostrarDataTypeItem.nome,
                                          'nome',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              fontSize: 13.0,
                                            ),
                                      ),
                                      Text(
                                        valueOrDefault<String>(
                                          mostrarDataTypeItem.email,
                                          'email',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              fontSize: 11.0,
                                            ),
                                      ),
                                      Text(
                                        valueOrDefault<String>(
                                          mostrarDataTypeItem.documento,
                                          'documento',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              fontSize: 11.0,
                                            ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    mostrarDataTypeItem.id.toString(),
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(1.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(1.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {},
                                              child: Icon(
                                                Icons.edit_square,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(1.0, 0.0),
                                            child: Icon(
                                              Icons.delete,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ].map((c) => DataCell(c)).toList(),
                              ),
                              paginated: true,
                              selectable: false,
                              hidePaginator: false,
                              showFirstLastButtons: false,
                              headingRowHeight: 46.0,
                              dataRowHeight: 90.0,
                              columnSpacing: 20.0,
                              headingRowColor: const Color(0xFFF1F4F8),
                              borderRadius: BorderRadius.circular(8.0),
                              addHorizontalDivider: true,
                              addTopAndBottomDivider: false,
                              hideDefaultHorizontalDivider: true,
                              horizontalDividerColor:
                                  FlutterFlowTheme.of(context)
                                      .primaryBackground,
                              horizontalDividerThickness: 1.0,
                              addVerticalDivider: false,
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
