

import 'package:inventario_medizin/domain/datasources/datasource_inicio.dart';
import 'package:inventario_medizin/domain/entities/company.dart';
import 'package:inventario_medizin/domain/repositories/repository_inicio.dart';

class RepositoryInicioImpl implements RepositoryInicio {
  late final DatasourceInicio datasour;

  RepositoryInicioImpl({required this.datasour});

  @override
  Future<Company> getInicioData() async {
    return await datasour.fetchInicioData();
  }
}
