import 'package:sqflite/sqflite.dart';

/// BEGIN INSERTPESSOA
Future performInsertPessoa(
  Database database, {
  String? nome,
  String? nomefantasia,
  String? email,
  String? dtcadastro,
  String? logradouro,
  String? numero,
  String? complemento,
  String? bairro,
  String? cep,
  String? tipopessoa,
  String? documento,
  String? dtsinc,
  String? bloqueiacredito,
  String? bloqueiadias,
}) {
  final query = '''
INSERT INTO "mill_pessoa" (
    "nome",
    "nomefantasia",
    "email",
    "dtcadastro",
    "logradouro",
    "numero",
    "complemento",
    "bairro",
    "cep",
    "tipopessoa",
    "documento",
    "dtsinc",
    "bloqueiacredito",
    "bloqueiadias"
) VALUES (
'$nome', '$nomefantasia', '$email', '$dtcadastro', '$logradouro', '$numero', '$complemento','$bairro','$cep','$tipopessoa','$documento',
'$dtsinc','$bloqueiacredito','$bloqueiadias'
);

''';
  return database.rawQuery(query);
}

/// END INSERTPESSOA

/// BEGIN OPSDELETE
Future performOpsDelete(
  Database database,
) {
  const query = '''
Delete from "mill_pessoa";
''';
  return database.rawQuery(query);
}

/// END OPSDELETE
