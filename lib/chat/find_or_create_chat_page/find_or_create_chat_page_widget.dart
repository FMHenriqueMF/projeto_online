import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'find_or_create_chat_page_model.dart';
export 'find_or_create_chat_page_model.dart';

class FindOrCreateChatPageWidget extends StatefulWidget {
  const FindOrCreateChatPageWidget({super.key});

  static String routeName = 'FindOrCreateChatPage';
  static String routePath = '/findOrCreateChatPage';

  @override
  State<FindOrCreateChatPageWidget> createState() =>
      _FindOrCreateChatPageWidgetState();
}

class _FindOrCreateChatPageWidgetState
    extends State<FindOrCreateChatPageWidget> {
  late FindOrCreateChatPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FindOrCreateChatPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.existingChat = await queryChatsRecordOnce(
        queryBuilder: (chatsRecord) => chatsRecord.where(
          'users',
          arrayContains: currentUserReference,
        ),
        singleRecord: true,
      ).then((s) => s.firstOrNull);
      if (_model.existingChat != null) {
        context.pushNamed(
          ChatPageWidget.routeName,
          queryParameters: {
            'chatRef': serializeParam(
              _model.existingChat?.reference,
              ParamType.DocumentReference,
            ),
          }.withoutNulls,
        );
      } else {
        var chatsRecordReference = ChatsRecord.collection.doc();
        await chatsRecordReference.set({
          ...mapToFirestore(
            {
              'users': [currentUserReference],
            },
          ),
        });
        _model.newChat = ChatsRecord.getDocumentFromData({
          ...mapToFirestore(
            {
              'users': [currentUserReference],
            },
          ),
        }, chatsRecordReference);

        context.pushNamed(
          ChatPageWidget.routeName,
          queryParameters: {
            'chatRef': serializeParam(
              _model.newChat?.reference,
              ParamType.DocumentReference,
            ),
          }.withoutNulls,
        );
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
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      ),
    );
  }
}
