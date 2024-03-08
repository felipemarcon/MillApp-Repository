import '/backend/sqlite/queries/sqlite_row.dart';
import 'package:sqflite/sqflite.dart';

Future<List<T>> _readQuery<T>(
  Database database,
  String query,
  T Function(Map<String, dynamic>) create,
) =>
    database.rawQuery(query).then((r) => r.map((e) => create(e)).toList());

/// BEGIN SELECTPESSOA
Future<List<SelectPessoaRow>> performSelectPessoa(
  Database database,
) {
  const query = '''
select * from mill_pessoa 
''';
  return _readQuery(database, query, (d) => SelectPessoaRow(d));
}

class SelectPessoaRow extends SqliteRow {
  SelectPessoaRow(super.data);

  int get id => data['id'] as int;
  String? get nome => data['nome'] as String?;
  String? get nomefantasia => data['nomefantasia'] as String?;
  String? get email => data['email'] as String?;
  String? get dtcadastro => data['dtcadastro'] as String?;
  String? get logradouro => data['logradouro'] as String?;
  String? get numero => data['numero'] as String?;
  String? get complemento => data['complemento'] as String?;
  String? get bairro => data['bairro'] as String?;
  String? get cep => data['cep'] as String?;
  String? get tipopessoa => data['tipopessoa'] as String?;
  String? get documento => data['documento'] as String?;
  String? get dtsinc => data['dtsinc'] as String?;
  String? get bloqueiacredito => data['bloqueiacredito'] as String?;
  String? get bloqueiadias => data['bloqueiadias'] as String?;
}

/// END SELECTPESSOA
