import 'package:inventario_medizin/domain/datasources/datasource_company.dart';
import 'package:inventario_medizin/domain/repositories/repository_company.dart';
import 'package:inventario_medizin/domain/entities/company.dart';

class RepositoryCompanyImpl implements RepositoryCompany {
  late final DatasourceCompany datasour;

  RepositoryCompanyImpl({required this.datasour});

  @override
  Future<Company> getCompanyData() async {
    return await datasour.fetchCompanyData();
  }
}
