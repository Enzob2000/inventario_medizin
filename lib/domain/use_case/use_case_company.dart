

import 'package:inventario_medizin/domain/repositories/repository_company.dart';
import 'package:inventario_medizin/domain/entities/company.dart';

class UseCaseCompany {
  final RepositoryCompany repository;

  UseCaseCompany({required this.repository});

  Future<Company> getCompanyData() async {
    return repository.getCompanyData();
  }
}
