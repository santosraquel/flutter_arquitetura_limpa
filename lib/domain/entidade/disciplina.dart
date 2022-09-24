import 'dart:ffi';

import 'package:flutter_arquitetura_limpa/domain/entidade/aluno.dart';

class Disciplina {
  Aluno aluno;
  String nomeDisciplina;
  Double nota1;
  Double nota2;
  Double nota3;
  int quantidadeFrequencia;

  Disciplina(
      {required this.aluno,
      required this.nomeDisciplina,
      required this.nota1,
      required this.nota2,
      required this.nota3,
      required this.quantidadeFrequencia});

  Double calcularMedia(nota1, nota2, nota3) {
    Double resultado = (nota1 + nota2 + nota3) / 3;
    return resultado;
  }

  String verificarAprovacaoPorMedia(nota1, nota2, nota3) {
    var media = calcularMedia(nota1, nota2, nota3);
    if (media > 6.0) {
      return 'APROVADO';
    } else {
      return 'REPROVADO';
    }
  }

  String validarNotas(nota1, nota2, nota3) {
    var nota11 = nota1.replaceAll(RegExp(r'[\.\-\D]'), '');
    return nota1;
  }
}
