

import 'package:inventario_medizin/domain/datasources/datasource_inicio.dart';
import 'package:inventario_medizin/domain/entities/company.dart';

class DatasourceInicioImpl implements DatasourceInicio {
  
  @override
  Future<Company> fetchInicioData() async {
    
    return Company(company: "", email: "", password: "");
  }
  
  
}
