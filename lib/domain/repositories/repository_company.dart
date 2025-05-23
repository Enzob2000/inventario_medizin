
import 'package:inventario_medizin/domain/entities/company.dart';


abstract class RepositoryCompany <company> {
  Future<Company> getCompanyData();
}
