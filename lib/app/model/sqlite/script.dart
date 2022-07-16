final criarTabelaReceita = '''
CREATE TABLE receita(
  id INTEGER NOT NULL PRIMARY KEY
  ,descricao VARCHAR(200) NOT NULL
  ,valor DECIMAL(9,2) NOT NULL
  ,data DATE NOT NULL
)
''';

final criarTabelaDespesa = '''
CREATE TABLE despesa(
  id INTEGER NOT NULL PRIMARY KEY
  ,descricao VARCHAR(200) NOT NULL
  ,valor DECIMAL(9,2) NOT NULL
  ,data DATE NOT NULL
)
''';
