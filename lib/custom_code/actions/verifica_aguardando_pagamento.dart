// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_firestore/cloud_firestore.dart';

Future<bool> verificaAguardandoPagamento(String cnpj) async {
  if (cnpj == null || cnpj.isEmpty) {
    print('CNPJ está vazio ou nulo!');
    return false;
  }

  final querySnapshot = await FirebaseFirestore.instance
      .collection('clientes')
      .where('status_pagamento', isEqualTo: 'aguardando')
      .where('aceito_por', isEqualTo: cnpj)
      .limit(1)
      .get();

  return querySnapshot.docs.isNotEmpty;
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
