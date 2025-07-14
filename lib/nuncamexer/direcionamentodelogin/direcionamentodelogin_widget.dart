import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'direcionamentodelogin_model.dart';
export 'direcionamentodelogin_model.dart';

class DirecionamentodeloginWidget extends StatefulWidget {
  const DirecionamentodeloginWidget({
    super.key,
    this.atendimentoId,
  });

  final DocumentReference? atendimentoId;

  static String routeName = 'DIRECIONAMENTODELOGIN';
  static String routePath = '/direcionamentodelogin';

  @override
  State<DirecionamentodeloginWidget> createState() =>
      _DirecionamentodeloginWidgetState();
}

class _DirecionamentodeloginWidgetState
    extends State<DirecionamentodeloginWidget> {
  late DirecionamentodeloginModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DirecionamentodeloginModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (valueOrDefault(currentUserDocument?.role, '') == 'escritorio') {
        context.pushNamed(DashboardLellaoWidget.routeName);
      } else if (valueOrDefault(currentUserDocument?.role, '') == 'parceiro') {
        context.pushNamed(PrincipalParceirosWidget.routeName);
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<UsuariosRecord>>(
      stream: queryUsuariosRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
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
        List<UsuariosRecord> direcionamentodeloginUsuariosRecordList =
            snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final direcionamentodeloginUsuariosRecord =
            direcionamentodeloginUsuariosRecordList.isNotEmpty
                ? direcionamentodeloginUsuariosRecordList.first
                : null;

        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          ),
        );
      },
    );
  }
}
