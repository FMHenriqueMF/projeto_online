import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'verificacao_pagamento_widget.dart' show VerificacaoPagamentoWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VerificacaoPagamentoModel
    extends FlutterFlowModel<VerificacaoPagamentoWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - extractDocumentIdFromReference] action in verificacaoPagamento widget.
  String? idExtraido;
  // Stores action output result for [Custom Action - verificaAguardandoPagamento] action in verificacaoPagamento widget.
  bool? resultadoAguardando;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
