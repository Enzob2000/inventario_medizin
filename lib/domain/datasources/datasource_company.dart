


import 'package:inventario_medizin/domain/entities/company.dart';

abstract class DatasourceCompany {
  Future<Company> fetchCompanyData();
}
