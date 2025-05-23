
import 'package:inventario_medizin/domain/entities/company.dart';
import 'package:inventario_medizin/domain/repositories/repository_inicio.dart';

class UseCaseInicio {
  final RepositoryInicio repository;

  UseCaseInicio({required this.repository});

  Future<Company> getInicioData() async {
    return repository.getInicioData();
  }
}
