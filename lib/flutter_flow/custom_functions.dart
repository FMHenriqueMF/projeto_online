import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

String? formatdate(DateTime date) {
  final day = date.day.toString().padLeft(2, '0');
  final month = date.month.toString().padLeft(2, '0');
  final year = date.year.toString();
  return '$day/$month/$year'; // Exemplo de formato: 06/9/2024
}

String agerarDatasAgendamento() {
  {
    final List<String> diasSemana = [
      'Domingo',
      'Segunda',
      'Terça',
      'Quarta',
      'Quinta',
      'Sexta',
      'Sábado'
    ];

    DateTime data = DateTime.now().add(Duration(days: 2));

    // Se for domingo, pula para o próximo dia útil (segunda)
    if (data.weekday == DateTime.sunday) {
      data = data.add(Duration(days: 1));
    }

    final nomeDia = diasSemana[data.weekday % 7];
    final formatada =
        '$nomeDia (${data.day.toString().padLeft(2, '0')}/${data.month.toString().padLeft(2, '0')})';
    return formatada;
  }
}

String bgerarDatasAgendamentoCopy() {
  {
    final List<String> diasSemana = [
      'Domingo',
      'Segunda',
      'Terça',
      'Quarta',
      'Quinta',
      'Sexta',
      'Sábado'
    ];

    DateTime data = DateTime.now().add(Duration(days: 3));

    // Se for domingo, pula para o próximo dia útil (segunda)
    if (data.weekday == DateTime.sunday) {
      data = data.add(Duration(days: 1));
    }

    final nomeDia = diasSemana[data.weekday % 7];
    final formatada =
        '$nomeDia (${data.day.toString().padLeft(2, '0')}/${data.month.toString().padLeft(2, '0')})';
    return formatada;
  }
}

String cgerarDatasAgendamentoCopyCopy() {
  {
    final List<String> diasSemana = [
      'Domingo',
      'Segunda',
      'Terça',
      'Quarta',
      'Quinta',
      'Sexta',
      'Sábado'
    ];

    DateTime data = DateTime.now().add(Duration(days: 4));

    // Se for domingo, pula para o próximo dia útil (segunda)
    if (data.weekday == DateTime.sunday) {
      data = data.add(Duration(days: 1));
    }

    final nomeDia = diasSemana[data.weekday % 7];
    final formatada =
        '$nomeDia (${data.day.toString().padLeft(2, '0')}/${data.month.toString().padLeft(2, '0')})';
    return formatada;
  }
}

String dgerarDatasAgendamentoCopyCopyCopy() {
  {
    final List<String> diasSemana = [
      'Domingo',
      'Segunda',
      'Terça',
      'Quarta',
      'Quinta',
      'Sexta',
      'Sábado'
    ];

    DateTime data = DateTime.now().add(Duration(days: 5));

    // Se for domingo, pula para o próximo dia útil (segunda)
    if (data.weekday == DateTime.sunday) {
      data = data.add(Duration(days: 1));
    }

    final nomeDia = diasSemana[data.weekday % 7];
    final formatada =
        '$nomeDia (${data.day.toString().padLeft(2, '0')}/${data.month.toString().padLeft(2, '0')})';
    return formatada;
  }
}

String egerarDatasAgendamentoCopyCopyCopyCopy() {
  {
    final List<String> diasSemana = [
      'Domingo',
      'Segunda',
      'Terça',
      'Quarta',
      'Quinta',
      'Sexta',
      'Sábado'
    ];

    DateTime data = DateTime.now().add(Duration(days: 6));

    // Se for domingo, pula para o próximo dia útil (segunda)
    if (data.weekday == DateTime.sunday) {
      data = data.add(Duration(days: 1));
    }

    final nomeDia = diasSemana[data.weekday % 7];
    final formatada =
        '$nomeDia (${data.day.toString().padLeft(2, '0')}/${data.month.toString().padLeft(2, '0')})';
    return formatada;
  }
}

String fgerarDatasAgendamentoCopyCopyCopyCopyCopy() {
  {
    final List<String> diasSemana = [
      'Domingo',
      'Segunda',
      'Terça',
      'Quarta',
      'Quinta',
      'Sexta',
      'Sábado'
    ];

    DateTime data = DateTime.now().add(Duration(days: 7));

    // Se for domingo, pula para o próximo dia útil (segunda)
    if (data.weekday == DateTime.sunday) {
      data = data.add(Duration(days: 1));
    }

    final nomeDia = diasSemana[data.weekday % 7];
    final formatada =
        '$nomeDia (${data.day.toString().padLeft(2, '0')}/${data.month.toString().padLeft(2, '0')})';
    return formatada;
  }
}

String ggerarDatasAgendamentoCopyCopyCopyCopyCopyCopy() {
  {
    final List<String> diasSemana = [
      'Domingo',
      'Segunda',
      'Terça',
      'Quarta',
      'Quinta',
      'Sexta',
      'Sábado'
    ];

    DateTime data = DateTime.now().add(Duration(days: 8));

    // Se for domingo, pula para o próximo dia útil (segunda)
    if (data.weekday == DateTime.sunday) {
      data = data.add(Duration(days: 1));
    }

    final nomeDia = diasSemana[data.weekday % 7];
    final formatada =
        '$nomeDia (${data.day.toString().padLeft(2, '0')}/${data.month.toString().padLeft(2, '0')})';
    return formatada;
  }
}

String listadeoquequerCliente(List<String> itens) {
  {
    return itens.join(', ');
  }
}

String? extractLinkMP(String? bodyString) {
  String extractLinkMP(String bodyString) {
    try {
      final data = jsonDecode(bodyString);
      return data['linkmp'] ?? '';
    } catch (e) {
      return '';
    }
  }
}

DateTime? getInicioDoMes() {
  DateTime getInicioDoMes() {
    final now = DateTime.now();
    return DateTime(now.year, now.month, 1);
  }
}

DateTime? getInicioSemanaPassada() {
  DateTime getInicioSemanaPassada() {
    final now = DateTime.now();
    final segundaEstaSemana = now.subtract(Duration(days: now.weekday - 1));
    return segundaEstaSemana.subtract(const Duration(days: 7));
  }
}

List<DateTime>? getInicioEFimSemanaAtual() {
  List<DateTime> getInicioEFimSemanaAtual() {
    final hoje = DateTime.now();
    final diaSemana = hoje.weekday;
    final segunda = DateTime(hoje.year, hoje.month, hoje.day)
        .subtract(Duration(days: diaSemana - 1));
    final domingo = segunda.add(Duration(days: 6));
    return [segunda, domingo];
  }
}

List<String>? somarServicosMesAtual() {
  String somarServicosMesAtual(List<dynamic> lista) {
    final hoje = DateTime.now();
    final inicioMes = DateTime(hoje.year, hoje.month, 1);

    double total = 0;

    for (final item in lista) {
      final dataFinalizado = item['dataFinalizado'];
      final valor = item['valor_servico'] ?? 0;

      if (dataFinalizado is Timestamp) {
        final data = dataFinalizado.toDate();
        if (data.isAfter(inicioMes.subtract(Duration(seconds: 1))) &&
            data.isBefore(hoje.add(Duration(days: 1)))) {
          total += valor is int ? valor.toDouble() : valor;
        }
      }
    }

    return 'R\$ ${total.toStringAsFixed(2)}';
  }
}

double? calcular40PorCento(double? valor) {
  double calcular40PorCento(double valor) {
    return double.parse((valor * 0.4).toStringAsFixed(2));
  }
}

String? somaPercentualParceiro() {
  double somaPercentualParceiro(List<dynamic> docs) {
    double soma = 0;
    for (var doc in docs) {
      // tenta converter, protege contra nulo
      var valor =
          double.tryParse(doc['percentualparceiro']?.toString() ?? '0') ?? 0;
      soma += valor;
    }
    return soma;
  }
}
