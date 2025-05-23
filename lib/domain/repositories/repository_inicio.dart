
import 'package:inventario_medizin/domain/entities/company.dart';

abstract class RepositoryInicio<company> {
  Future<Company> getInicioData();
}
