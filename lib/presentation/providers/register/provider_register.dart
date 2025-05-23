import 'package:inventario_medizin/config/services/service_locator.dart';
import 'package:inventario_medizin/domain/repositories/repository_company.dart';
import 'package:inventario_medizin/domain/use_case/use_case_company.dart';
import 'package:inventario_medizin/domain/entities/company.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider_register.g.dart';

@Riverpod(keepAlive: true)
Future<Company> companyData(CompanyDataRef ref) async {
  final repository = getIt<RepositoryCompany>();
  final useCase = UseCaseCompany(repository: repository);
  Company company = await useCase.getCompanyData();

  return company;
}
