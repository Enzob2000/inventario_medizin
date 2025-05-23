import 'package:inventario_medizin/config/services/service_locator.dart';
import 'package:inventario_medizin/domain/entities/codeConfirmation.dart';
import 'package:inventario_medizin/domain/repositories/repository_confirmation.dart';
import 'package:inventario_medizin/domain/use_case/use_case_confirmation.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'provider_confirmation.g.dart';

@riverpod
Future<Codeconfirmation> confirmationData(ConfirmationDataRef ref) async {
  final repository = getIt<RepositoryConfirmation>();
  final useCase = UseCaseConfirmation(repository: repository);
  Codeconfirmation code = await useCase.getConfirmationData();

  return code;
}
