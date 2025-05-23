
import 'package:inventario_medizin/domain/entities/company.dart';

abstract class DatasourceInicio {
  Future<Company> fetchInicioData();
}
