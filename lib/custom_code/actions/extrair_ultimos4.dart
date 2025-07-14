// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

String extrairUltimos4(String telefone) {
  if (telefone.length < 4) return telefone;
  return telefone.substring(telefone.length - 4);
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
