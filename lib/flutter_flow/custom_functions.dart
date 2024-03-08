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
import '/backend/schema/structs/index.dart';
import '/backend/sqlite/sqlite_manager.dart';

List<MillPessoaRecord> pegarListaPessoas(
  List<MillPessoaRecord> lista,
  List<MillPessoaRecord> resultadoBusca,
) {
  return resultadoBusca.length > 0 ? resultadoBusca : lista;
}

String? calcularTempo(
  String horaInicial,
  String horaFinal,
) {
  //  function to calculate time between two strings ex hour (23:40, 3:29)
// In order to calculate the time difference between two strings representing hours, we need to convert them to DateTime objects first.

  // Let's assume we have two strings representing hours:

  // We need to convert them to DateTime objects:
  DateTime horaInicialDateTime = DateTime.parse('2022-01-01 $horaInicial:00');
  DateTime horaFinalDateTime = DateTime.parse('2022-01-01 $horaFinal:00');

  // If the final time is before the initial time, it means that the final time is on the next day, so we need to add one day to the final time:
  if (horaFinalDateTime.isBefore(horaInicialDateTime)) {
    horaFinalDateTime = horaFinalDateTime.add(Duration(days: 1));
  }

  // Now we can calculate the time difference between the two times:
  Duration timeDifference = horaFinalDateTime.difference(horaInicialDateTime);

  // We can convert the time difference to a string in the format "HH:mm:ss":
  String timeDifferenceString =
      '${timeDifference.inHours.remainder(24).toString().padLeft(2, '0')}:${(timeDifference.inMinutes.remainder(60)).toString().padLeft(2, '0')}:${(timeDifference.inSeconds.remainder(60)).toString().padLeft(2, '0')}';

  // Finally, we can return the time difference string:
  return timeDifferenceString;
}

List<MillAtendimentoRecord> pegarListaAtendimento(
  List<MillAtendimentoRecord> lista,
  List<MillAtendimentoRecord> resultadoBusca,
) {
  return resultadoBusca.length > 0 ? resultadoBusca : lista;
}

DateTime? retornarData(String dataString) {
  List<String> dataSplit = dataString.split('/');
  if (dataSplit.length != 3) {
    return null;
  }
  int dia = int.tryParse(dataSplit[0]) ?? 1;
  int mes = int.tryParse(dataSplit[1]) ?? 1;
  int ano = int.tryParse(dataSplit[2]) ?? 2022;
  return DateTime(ano, mes, dia);
}

String formatarData(DateTime dateTime) {
  // receba um elemento do tipo dateTime e retorne somente a data sem o horario em dia/mes/ano

  String formattedDate = DateFormat('dd/MM/yyyy').format(dateTime);
  return formattedDate;
}
