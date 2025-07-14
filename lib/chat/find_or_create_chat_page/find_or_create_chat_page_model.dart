import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'find_or_create_chat_page_widget.dart' show FindOrCreateChatPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FindOrCreateChatPageModel
    extends FlutterFlowModel<FindOrCreateChatPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in FindOrCreateChatPage widget.
  ChatsRecord? existingChat;
  // Stores action output result for [Backend Call - Create Document] action in FindOrCreateChatPage widget.
  ChatsRecord? newChat;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
