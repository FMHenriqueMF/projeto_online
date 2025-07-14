import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/instant_timer.dart';
import 'dart:ui';
import '/index.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'novopagamento_model.dart';
export 'novopagamento_model.dart';

class NovopagamentoWidget extends StatefulWidget {
  const NovopagamentoWidget({
    super.key,
    required this.atendimentoId,
  });

  final DocumentReference? atendimentoId;

  static String routeName = 'NOVOPAGAMENTO';
  static String routePath = '/novopagamento';

  @override
  State<NovopagamentoWidget> createState() => _NovopagamentoWidgetState();
}

class _NovopagamentoWidgetState extends State<NovopagamentoWidget> {
  late NovopagamentoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NovopagamentoModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ClientesRecord>(
      stream: ClientesRecord.getDocument(widget!.atendimentoId!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }

        final novopagamentoClientesRecord = snapshot.data!;

        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              automaticallyImplyLeading: false,
              title: Text(
                'Pagamento',
                style: FlutterFlowTheme.of(context).titleLarge.override(
                      font: GoogleFonts.interTight(
                        fontWeight: FontWeight.w600,
                        fontStyle:
                            FlutterFlowTheme.of(context).titleLarge.fontStyle,
                      ),
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                      fontStyle:
                          FlutterFlowTheme.of(context).titleLarge.fontStyle,
                    ),
              ),
              actions: [],
              centerTitle: true,
              elevation: 0.0,
            ),
            body: SafeArea(
              top: true,
              child: Padding(
                padding: EdgeInsets.all(24.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 200.0,
                            height: 200.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 7.0,
                                  color: Color(0x33000000),
                                  offset: Offset(
                                    0.0,
                                    2.0,
                                  ),
                                )
                              ],
                              borderRadius: BorderRadius.circular(16.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 2.0,
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset(
                                'assets/images/Untitled_design.gif',
                                width: 197.32,
                                height: 201.8,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          if (novopagamentoClientesRecord.statusPagamento ==
                              'aguardando')
                            Text(
                              'Aguardando Pagamento',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontStyle,
                                  ),
                            ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              if (novopagamentoClientesRecord.statusPagamento ==
                                  'aguardando')
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed(
                                        VerificacaoPagamentoWidget.routeName,
                                        queryParameters: {
                                          'atendimentoId': serializeParam(
                                            novopagamentoClientesRecord
                                                .reference,
                                            ParamType.DocumentReference,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    child: Text(
                                      'NÃO FECHE O APLICATIVO',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.inter(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            fontSize: 20.0,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                          if (novopagamentoClientesRecord.statusPagamento ==
                              'falha')
                            Text(
                              'Não Aprovado',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontStyle,
                                    ),
                                    color: Color(0xFFFF0000),
                                    fontSize: 30.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontStyle,
                                  ),
                            ),
                          if (novopagamentoClientesRecord.statusPagamento ==
                              'approved')
                            Text(
                              'Pagamento Aprovado!',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF1FFF00),
                                    fontSize: 30.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontStyle,
                                  ),
                            ),
                        ].divide(SizedBox(height: 24.0)),
                      ),
                      if (novopagamentoClientesRecord.statusPagamento !=
                          'approved')
                        Text(
                          'O link será enviado para o WhatsApp do cliente ao apertar em \"Enviar Link de Pagamento\".\n\nA confirmação pode demorar até 2 minutos após a conclusão do pagamento.',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).labelLarge.override(
                            font: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .fontStyle,
                            ),
                            fontSize: 12.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                            fontStyle: FlutterFlowTheme.of(context)
                                .labelLarge
                                .fontStyle,
                            shadows: [
                              Shadow(
                                color: FlutterFlowTheme.of(context).alternate,
                                offset: Offset(1.0, 1.0),
                                blurRadius: 1.0,
                              )
                            ],
                          ),
                        ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          if (novopagamentoClientesRecord.status ==
                              'aguardando')
                            FFButtonWidget(
                              onPressed: () async {
                                _model.apiResultjf2 =
                                    await EnviarparamakeCall.call(
                                  nomeCliente:
                                      novopagamentoClientesRecord.nomeCliente,
                                  telefoneCliente: novopagamentoClientesRecord
                                      .telefoneCliente,
                                  codigoCliente:
                                      novopagamentoClientesRecord.reference.id,
                                  valorTotal:
                                      novopagamentoClientesRecord.valorTotalNUM,
                                );

                                await widget!.atendimentoId!
                                    .update(createClientesRecordData(
                                  status: 'aguardandopagamento',
                                ));
                                await Future.delayed(
                                    const Duration(milliseconds: 30000));
                                _model.instantTimer = InstantTimer.periodic(
                                  duration: Duration(milliseconds: 30000),
                                  callback: (timer) async {
                                    _model.apiResultahr =
                                        await BuscarpagamentosWebhookCall.call(
                                      codigoCliente: novopagamentoClientesRecord
                                          .reference.id,
                                    );

                                    await widget!.atendimentoId!
                                        .update(createClientesRecordData(
                                      statusPagamento:
                                          BuscarpagamentosWebhookCall
                                              .retornostatuspagamento(
                                        (_model.apiResultahr?.jsonBody ?? ''),
                                      ),
                                    ));
                                  },
                                  startImmediately: true,
                                );

                                safeSetState(() {});
                              },
                              text: 'Enviar Link de Pagamento',
                              icon: Icon(
                                Icons.credit_card_outlined,
                                size: 15.0,
                              ),
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 50.0,
                                padding: EdgeInsets.all(8.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      font: GoogleFonts.interTight(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context).info,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                elevation: 0.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                            ),
                          if (novopagamentoClientesRecord.statusPagamento !=
                              'approved')
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 8.0, 0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  _model.apiResultjkn =
                                      await BuscarpagamentosWebhookCall.call(
                                    codigoCliente: novopagamentoClientesRecord
                                        .reference.id,
                                  );

                                  await novopagamentoClientesRecord.reference
                                      .update(createClientesRecordData(
                                    statusPagamento: BuscarpagamentosWebhookCall
                                        .retornostatuspagamento(
                                      (_model.apiResultjkn?.jsonBody ?? ''),
                                    ),
                                  ));

                                  context.pushNamed(
                                    NovopagamentoWidget.routeName,
                                    queryParameters: {
                                      'atendimentoId': serializeParam(
                                        widget!.atendimentoId,
                                        ParamType.DocumentReference,
                                      ),
                                    }.withoutNulls,
                                  );

                                  safeSetState(() {});
                                },
                                text: 'Verificar Pagamento',
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).alternate,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        font: GoogleFonts.interTight(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                          if ((novopagamentoClientesRecord.status ==
                                  'aguardandopagamento') &&
                              (novopagamentoClientesRecord.statusPagamento !=
                                  'approved'))
                            Opacity(
                              opacity: 0.8,
                              child: Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 6.0,
                                        color: Color(0x33000000),
                                        offset: Offset(
                                          0.0,
                                          2.0,
                                        ),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(16.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Voce pode enviar o link para outro número.\nLembre-se de colocar o DDD (Ex. 119999...)',
                                          style: FlutterFlowTheme.of(context)
                                              .labelLarge
                                              .override(
                                            font: GoogleFonts.inter(
                                              fontWeight: FontWeight.w600,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLarge
                                                      .fontStyle,
                                            ),
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge
                                                    .fontStyle,
                                            shadows: [
                                              Shadow(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                offset: Offset(1.0, 1.0),
                                                blurRadius: 1.0,
                                              )
                                            ],
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Container(
                                            width: double.infinity,
                                            child: TextFormField(
                                              controller: _model.textController,
                                              focusNode:
                                                  _model.textFieldFocusNode,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.textController',
                                                Duration(milliseconds: 2000),
                                                () => safeSetState(() {}),
                                              ),
                                              autofocus: false,
                                              textInputAction:
                                                  TextInputAction.done,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                hintText: '(11) 99999-9999',
                                                hintStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font: GoogleFonts.inter(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                contentPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(16.0, 12.0,
                                                            16.0, 12.0),
                                                prefixIcon: Icon(
                                                  FontAwesomeIcons.whatsapp,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 20.0,
                                                ),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                              textAlign: TextAlign.start,
                                              keyboardType: TextInputType.phone,
                                              cursorColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              validator: _model
                                                  .textControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              _model.apiResult13s =
                                                  await EnviarnovonumeroCall
                                                      .call(
                                                telefoneCliente:
                                                    _model.textController.text,
                                                codigoCliente:
                                                    novopagamentoClientesRecord
                                                        .reference.id,
                                              );

                                              safeSetState(() {});
                                            },
                                            text:
                                                'Enviar link para outro número',
                                            options: FFButtonOptions(
                                              width: double.infinity,
                                              height: 50.0,
                                              padding: EdgeInsets.all(8.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .titleSmall
                                                  .override(
                                                    font:
                                                        GoogleFonts.interTight(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontSize: 12.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmall
                                                            .fontStyle,
                                                  ),
                                              elevation: 0.0,
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(4.0),
                                            ),
                                          ),
                                        ),
                                      ].divide(SizedBox(height: 12.0)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          if (novopagamentoClientesRecord.statusPagamento ==
                              'approved')
                            StreamBuilder<ClientesRecord>(
                              stream: ClientesRecord.getDocument(
                                  widget!.atendimentoId!),
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

                                final buttonClientesRecord = snapshot.data!;

                                return FFButtonWidget(
                                  onPressed: () async {
                                    await widget!.atendimentoId!
                                        .update(createClientesRecordData(
                                      status: 'finalizado',
                                      dataFinalizado: getCurrentTimestamp,
                                    ));
                                    _model.instantTimer?.cancel();
                                    await Future.delayed(
                                        const Duration(milliseconds: 2000));

                                    context.pushNamed(
                                        DirecionamentodeloginWidget.routeName);
                                  },
                                  text: 'Finalizar',
                                  icon: Icon(
                                    Icons.exit_to_app_rounded,
                                    size: 15.0,
                                  ),
                                  options: FFButtonOptions(
                                    width: double.infinity,
                                    height: 50.0,
                                    padding: EdgeInsets.all(8.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: Color(0xFF39EF6E),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          font: GoogleFonts.interTight(
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontStyle,
                                          ),
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontStyle,
                                        ),
                                    elevation: 0.0,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                );
                              },
                            ),
                        ].divide(SizedBox(height: 16.0)),
                      ),
                      Container(
                        width: double.infinity,
                        height: 1.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).alternate,
                        ),
                      ),
                    ].divide(SizedBox(height: 32.0)),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
