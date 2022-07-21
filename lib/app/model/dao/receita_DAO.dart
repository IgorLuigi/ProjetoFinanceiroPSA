import '../entidades/receita.dart';

abstract class ReceitaDAO {
  save(Receita receita);

  remove(int id);

  Future<List<Receita>> find();
}
