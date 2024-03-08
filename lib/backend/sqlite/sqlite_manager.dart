import 'package:flutter/foundation.dart';

import '/backend/sqlite/init.dart';
import 'queries/read.dart';
import 'queries/update.dart';

import 'package:sqflite/sqflite.dart';
export 'queries/read.dart';
export 'queries/update.dart';

class SQLiteManager {
  SQLiteManager._();

  static SQLiteManager? _instance;
  static SQLiteManager get instance => _instance ??= SQLiteManager._();

  static late Database _database;
  Database get database => _database;

  static Future initialize() async {
    if (kIsWeb) {
      return;
    }
    _database = await initializeDatabaseFromDbFile(
      'mill_app_banco',
      'millAppBanco.db',
    );
  }

  /// START READ QUERY CALLS

  Future<List<SelectPessoaRow>> selectPessoa() => performSelectPessoa(
        _database,
      );

  /// END READ QUERY CALLS

  /// START UPDATE QUERY CALLS

  Future insertPessoa({
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
  }) =>
      performInsertPessoa(
        _database,
        nome: nome,
        nomefantasia: nomefantasia,
        email: email,
        dtcadastro: dtcadastro,
        logradouro: logradouro,
        numero: numero,
        complemento: complemento,
        bairro: bairro,
        cep: cep,
        tipopessoa: tipopessoa,
        documento: documento,
        dtsinc: dtsinc,
        bloqueiacredito: bloqueiacredito,
        bloqueiadias: bloqueiadias,
      );

  Future opsDelete() => performOpsDelete(
        _database,
      );

  /// END UPDATE QUERY CALLS
}
