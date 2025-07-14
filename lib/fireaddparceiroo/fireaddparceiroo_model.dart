import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'fireaddparceiroo_widget.dart' show FireaddparceirooWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class FireaddparceirooModel extends FlutterFlowModel<FireaddparceirooWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for nomeempresa widget.
  FocusNode? nomeempresaFocusNode;
  TextEditingController? nomeempresaTextController;
  String? Function(BuildContext, String?)? nomeempresaTextControllerValidator;
  // State field(s) for cnpj widget.
  FocusNode? cnpjFocusNode;
  TextEditingController? cnpjTextController;
  late MaskTextInputFormatter cnpjMask;
  String? Function(BuildContext, String?)? cnpjTextControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for senha widget.
  FocusNode? senhaFocusNode;
  TextEditingController? senhaTextController;
  late bool senhaVisibility;
  String? Function(BuildContext, String?)? senhaTextControllerValidator;
  // State field(s) for confirmasenha widget.
  FocusNode? confirmasenhaFocusNode;
  TextEditingController? confirmasenhaTextController;
  late bool confirmasenhaVisibility;
  String? Function(BuildContext, String?)? confirmasenhaTextControllerValidator;
  // State field(s) for telefone widget.
  FocusNode? telefoneFocusNode;
  TextEditingController? telefoneTextController;
  String? Function(BuildContext, String?)? telefoneTextControllerValidator;
  // State field(s) for estado widget.
  FocusNode? estadoFocusNode;
  TextEditingController? estadoTextController;
  String? Function(BuildContext, String?)? estadoTextControllerValidator;
  // State field(s) for cidade widget.
  FocusNode? cidadeFocusNode;
  TextEditingController? cidadeTextController;
  String? Function(BuildContext, String?)? cidadeTextControllerValidator;

  @override
  void initState(BuildContext context) {
    senhaVisibility = false;
    confirmasenhaVisibility = false;
  }

  @override
  void dispose() {
    nomeempresaFocusNode?.dispose();
    nomeempresaTextController?.dispose();

    cnpjFocusNode?.dispose();
    cnpjTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    senhaFocusNode?.dispose();
    senhaTextController?.dispose();

    confirmasenhaFocusNode?.dispose();
    confirmasenhaTextController?.dispose();

    telefoneFocusNode?.dispose();
    telefoneTextController?.dispose();

    estadoFocusNode?.dispose();
    estadoTextController?.dispose();

    cidadeFocusNode?.dispose();
    cidadeTextController?.dispose();
  }
}
