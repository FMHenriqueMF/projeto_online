import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'editarcontato_widget.dart' show EditarcontatoWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class EditarcontatoModel extends FlutterFlowModel<EditarcontatoWidget> {
  ///  Local state fields for this page.

  double? percentualdosparceiros;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for cep widget.
  FocusNode? cepFocusNode;
  TextEditingController? cepTextController;
  String? Function(BuildContext, String?)? cepTextControllerValidator;
  // Stores action output result for [Backend Call - API (BuscarEnderecoPorCEP)] action in cep widget.
  ApiCallResponse? apiResult8op;
  // State field(s) for Estado widget.
  FocusNode? estadoFocusNode;
  TextEditingController? estadoTextController;
  String? Function(BuildContext, String?)? estadoTextControllerValidator;
  // State field(s) for cidade widget.
  FocusNode? cidadeFocusNode;
  TextEditingController? cidadeTextController;
  String? Function(BuildContext, String?)? cidadeTextControllerValidator;
  // State field(s) for bairro widget.
  FocusNode? bairroFocusNode;
  TextEditingController? bairroTextController;
  String? Function(BuildContext, String?)? bairroTextControllerValidator;
  // State field(s) for rua widget.
  FocusNode? ruaFocusNode1;
  TextEditingController? ruaTextController1;
  String? Function(BuildContext, String?)? ruaTextController1Validator;
  // State field(s) for rua widget.
  FocusNode? ruaFocusNode2;
  TextEditingController? ruaTextController2;
  String? Function(BuildContext, String?)? ruaTextController2Validator;
  // State field(s) for Vagadegaragem widget.
  FocusNode? vagadegaragemFocusNode;
  TextEditingController? vagadegaragemTextController;
  String? Function(BuildContext, String?)? vagadegaragemTextControllerValidator;
  // State field(s) for voltage widget.
  FocusNode? voltageFocusNode;
  TextEditingController? voltageTextController;
  String? Function(BuildContext, String?)? voltageTextControllerValidator;
  // State field(s) for valor widget.
  FocusNode? valorFocusNode;
  TextEditingController? valorTextController;
  String? Function(BuildContext, String?)? valorTextControllerValidator;
  // Stores action output result for [Custom Action - extrairQuarentaPorCento] action in valor widget.
  double? percentualparceiro;
  // State field(s) for Observacoes widget.
  FocusNode? observacoesFocusNode;
  TextEditingController? observacoesTextController;
  String? Function(BuildContext, String?)? observacoesTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController14;
  late MaskTextInputFormatter textFieldMask4;
  String? Function(BuildContext, String?)? textController14Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController15;
  late MaskTextInputFormatter textFieldMask5;
  String? Function(BuildContext, String?)? textController15Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    cepFocusNode?.dispose();
    cepTextController?.dispose();

    estadoFocusNode?.dispose();
    estadoTextController?.dispose();

    cidadeFocusNode?.dispose();
    cidadeTextController?.dispose();

    bairroFocusNode?.dispose();
    bairroTextController?.dispose();

    ruaFocusNode1?.dispose();
    ruaTextController1?.dispose();

    ruaFocusNode2?.dispose();
    ruaTextController2?.dispose();

    vagadegaragemFocusNode?.dispose();
    vagadegaragemTextController?.dispose();

    voltageFocusNode?.dispose();
    voltageTextController?.dispose();

    valorFocusNode?.dispose();
    valorTextController?.dispose();

    observacoesFocusNode?.dispose();
    observacoesTextController?.dispose();

    textFieldFocusNode4?.dispose();
    textController14?.dispose();

    textFieldFocusNode5?.dispose();
    textController15?.dispose();
  }
}
