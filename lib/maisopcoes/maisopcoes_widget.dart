import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'maisopcoes_model.dart';
export 'maisopcoes_model.dart';

/// quero uma pagina escrito MAIS OPÇÕES
/// e alguns botoes
class MaisopcoesWidget extends StatefulWidget {
  const MaisopcoesWidget({
    super.key,
    required this.atendimentoId,
  });

  final DocumentReference? atendimentoId;

  static String routeName = 'MAISOPCOES';
  static String routePath = '/maisopcoes';

  @override
  State<MaisopcoesWidget> createState() => _MaisopcoesWidgetState();
}

class _MaisopcoesWidgetState extends State<MaisopcoesWidget> {
  late MaisopcoesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MaisopcoesModel());

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

        final maisopcoesClientesRecord = snapshot.data!;

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
              leading: FlutterFlowIconButton(
                borderColor: FlutterFlowTheme.of(context).alternate,
                borderRadius: 20.0,
                borderWidth: 1.0,
                buttonSize: 40.0,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 24.0,
                ),
                onPressed: () async {
                  context.safePop();
                },
              ),
              actions: [],
              centerTitle: true,
              elevation: 0.0,
            ),
            body: SafeArea(
              top: true,
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Text(
                        'MAIS OPÇÕES',
                        textAlign: TextAlign.center,
                        style:
                            FlutterFlowTheme.of(context).headlineLarge.override(
                                  font: GoogleFonts.interTight(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineLarge
                                        .fontStyle,
                                  ),
                                  fontSize: 28.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .fontStyle,
                                ),
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        FFButtonWidget(
                          onPressed: () async {
                            _model.apiResultdxz =
                                await LigacaoClienteParceiroCall.call(
                              telefoneParceiro: valueOrDefault(
                                  currentUserDocument?.telefone, ''),
                              telefoneCliente:
                                  maisopcoesClientesRecord.telefoneCliente,
                            );

                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: Text('Chamada Solicitada!'),
                                  content: Text(
                                      'Em alguns segundos você recebera uma ligação para falar com o cliente. '),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(alertDialogContext),
                                      child: Text('Ok'),
                                    ),
                                  ],
                                );
                              },
                            );

                            safeSetState(() {});
                          },
                          text: 'Ligar Para o Cliente',
                          icon: Icon(
                            Icons.call,
                            size: 24.0,
                          ),
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 56.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconColor: Colors.white,
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  font: GoogleFonts.interTight(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontStyle,
                                ),
                            elevation: 2.0,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            await launchURL('http://wa.me/558004000022');
                          },
                          text: 'Suporte Extrema',
                          icon: FaIcon(
                            FontAwesomeIcons.whatsapp,
                            size: 24.0,
                          ),
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 56.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconColor: Colors.white,
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  font: GoogleFonts.interTight(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontStyle,
                                ),
                            elevation: 2.0,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
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
                    if (maisopcoesClientesRecord.status == 'aceito')
                      FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed(
                            CancelaclienteWidget.routeName,
                            queryParameters: {
                              'pagcancelacliente': serializeParam(
                                maisopcoesClientesRecord.reference,
                                ParamType.DocumentReference,
                              ),
                            }.withoutNulls,
                          );
                        },
                        text: 'Cancelar Cliente',
                        icon: Icon(
                          Icons.mood_bad_sharp,
                          size: 24.0,
                        ),
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 56.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconColor: FlutterFlowTheme.of(context).error,
                          color: Colors.transparent,
                          textStyle:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).error,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                          elevation: 0.0,
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                  ]
                      .divide(SizedBox(height: 24.0))
                      .addToStart(SizedBox(height: 32.0)),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
