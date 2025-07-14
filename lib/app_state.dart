import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _percentualparceiro = prefs
              .getStringList('ff_percentualparceiro')
              ?.map(double.parse)
              .toList() ??
          _percentualparceiro;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _countFinalizados = 0;
  int get countFinalizados => _countFinalizados;
  set countFinalizados(int value) {
    _countFinalizados = value;
  }

  int _puffPequenoCount = 0;
  int get puffPequenoCount => _puffPequenoCount;
  set puffPequenoCount(int value) {
    _puffPequenoCount = value;
  }

  DateTime? _iniciosemana;
  DateTime? get iniciosemana => _iniciosemana;
  set iniciosemana(DateTime? value) {
    _iniciosemana = value;
  }

  bool _mostrarbotao = false;
  bool get mostrarbotao => _mostrarbotao;
  set mostrarbotao(bool value) {
    _mostrarbotao = value;
  }

  bool _termosaceitos = false;
  bool get termosaceitos => _termosaceitos;
  set termosaceitos(bool value) {
    _termosaceitos = value;
  }

  bool _existeaguardando = false;
  bool get existeaguardando => _existeaguardando;
  set existeaguardando(bool value) {
    _existeaguardando = value;
  }

  String _termobusca = '';
  String get termobusca => _termobusca;
  set termobusca(String value) {
    _termobusca = value;
  }

  String _buscatexto = '';
  String get buscatexto => _buscatexto;
  set buscatexto(String value) {
    _buscatexto = value;
  }

  DocumentReference? _resultadoAlgolia;
  DocumentReference? get resultadoAlgolia => _resultadoAlgolia;
  set resultadoAlgolia(DocumentReference? value) {
    _resultadoAlgolia = value;
  }

  DocumentReference? _documentRefAguardando;
  DocumentReference? get documentRefAguardando => _documentRefAguardando;
  set documentRefAguardando(DocumentReference? value) {
    _documentRefAguardando = value;
  }

  List<double> _percentualparceiro = [];
  List<double> get percentualparceiro => _percentualparceiro;
  set percentualparceiro(List<double> value) {
    _percentualparceiro = value;
    prefs.setStringList(
        'ff_percentualparceiro', value.map((x) => x.toString()).toList());
  }

  void addToPercentualparceiro(double value) {
    percentualparceiro.add(value);
    prefs.setStringList('ff_percentualparceiro',
        _percentualparceiro.map((x) => x.toString()).toList());
  }

  void removeFromPercentualparceiro(double value) {
    percentualparceiro.remove(value);
    prefs.setStringList('ff_percentualparceiro',
        _percentualparceiro.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromPercentualparceiro(int index) {
    percentualparceiro.removeAt(index);
    prefs.setStringList('ff_percentualparceiro',
        _percentualparceiro.map((x) => x.toString()).toList());
  }

  void updatePercentualparceiroAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    percentualparceiro[index] = updateFn(_percentualparceiro[index]);
    prefs.setStringList('ff_percentualparceiro',
        _percentualparceiro.map((x) => x.toString()).toList());
  }

  void insertAtIndexInPercentualparceiro(int index, double value) {
    percentualparceiro.insert(index, value);
    prefs.setStringList('ff_percentualparceiro',
        _percentualparceiro.map((x) => x.toString()).toList());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
