import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/instant_timer.dart';
import 'dart:ui';
import '/index.dart';
import 'novopagamento_widget.dart' show NovopagamentoWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NovopagamentoModel extends FlutterFlowModel<NovopagamentoWidget> {
  ///  Local state fields for this page.

  DocumentReference? novopagamento;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (enviarparamake)] action in Button widget.
  ApiCallResponse? apiResultjf2;
  InstantTimer? instantTimer;
  // Stores action output result for [Backend Call - API (BuscarpagamentosWebhook)] action in Button widget.
  ApiCallResponse? apiResultahr;
  // Stores action output result for [Backend Call - API (BuscarpagamentosWebhook)] action in Button widget.
  ApiCallResponse? apiResultjkn;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (enviarnovonumero)] action in Button widget.
  ApiCallResponse? apiResult13s;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    instantTimer?.cancel();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
