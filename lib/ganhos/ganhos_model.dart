import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'ganhos_widget.dart' show GanhosWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GanhosModel extends FlutterFlowModel<GanhosWidget> {
  ///  Local state fields for this page.

  double? totalMes = 0.0;

  DateTime? inicioSemana;

  DateTime? fimSemana;

  double? totalsemanal = 0.0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
