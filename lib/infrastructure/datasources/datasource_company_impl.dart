
import 'package:inventario_medizin/domain/datasources/datasource_company.dart';
import 'package:inventario_medizin/domain/entities/company.dart';

class DatasourceCompanyImpl implements DatasourceCompany {
  @override
  Future<Company> fetchCompanyData() async {
    // Simulamos un retraso de red
    //await Future.delayed(const Duration(seconds: 0));

    // Retornamos una lista de usuarios de ejemplo
    return Company(company: "", email: "", password: "");
  }
}
