import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'direcionamentodelogin_widget.dart' show DirecionamentodeloginWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DirecionamentodeloginModel
    extends FlutterFlowModel<DirecionamentodeloginWidget> {
  ///  Local state fields for this page.

  DocumentReference? referenciadocodigoaguardando;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
