import 'package:inventario_medizin/config/services/service_locator.dart';
import 'package:inventario_medizin/domain/entities/company.dart';
import 'package:inventario_medizin/domain/repositories/repository_inicio.dart';
import 'package:inventario_medizin/domain/use_case/use_case_inicio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider_inicio.g.dart';

@Riverpod(keepAlive: true)
Future<Company> companyData(CompanyDataRef ref) async {
  final repository = getIt<RepositoryInicio>();
  final useCase = UseCaseInicio(repository: repository);
  Company company = await useCase.getInicioData();
  return company;
}

@Riverpod(keepAlive: true)
class AuthController extends _$AuthController {
  @override
  FutureOr<bool> build() {
    return true;
  }

  Future<void> login(String email, String password) async {
    state = const AsyncLoading();
    try {
      final repository = getIt<RepositoryInicio>();
      final useCase = UseCaseInicio(repository: repository);

      // 1. Obtener los datos de la compañía
      final company = await useCase.getInicioData();

      // 2. Validar credenciales
      if (company.email == email && company.password == password) {
        state = AsyncData(true); // Autenticación exitosa
      } else {
        state = AsyncData(false); // Credenciales incorrectas
        throw Exception('Credenciales incorrectas');
      }
    } catch (e) {
      state = AsyncError(e, StackTrace.current);
      rethrow;
    }
  }

  AsyncValue<bool> status(){
    return state;
  }

  void logout() {
    state = const AsyncData(false);
  }
}
