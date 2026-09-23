import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import '/flutter_flow/custom_functions.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/uploaded_file.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/auth/custom_auth/auth_util.dart';

bool validadorCPF(String cpf) {
  final entrada = cpf.trim();

  // CPF vazio não é um CPF válido.
  if (entrada.isEmpty) {
    return false;
  }

  // Rejeita letras e símbolos diferentes de ponto, hífen e espaço.
  if (RegExp(r'[^0-9.\-\s]').hasMatch(entrada)) {
    return false;
  }

  // Remove a formatação, mantendo somente os números.
  final numeros = entrada.replaceAll(RegExp(r'[^0-9]'), '');

  // O CPF deve ter exatamente 11 dígitos.
  if (numeros.length != 11) {
    return false;
  }

  // Rejeita sequências com todos os números iguais.
  if (numeros.split('').every((digito) => digito == numeros[0])) {
    return false;
  }

  // Valida o primeiro e o segundo dígitos verificadores.
  for (int tamanho = 9; tamanho <= 10; tamanho++) {
    int soma = 0;

    for (int i = 0; i < tamanho; i++) {
      soma += int.parse(numeros[i]) * (tamanho + 1 - i);
    }

    final resto = soma % 11;
    final digitoEsperado = resto < 2 ? 0 : 11 - resto;

    if (int.parse(numeros[tamanho]) != digitoEsperado) {
      return false;
    }
  }

  return true;
}
