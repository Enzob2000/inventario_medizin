

import 'package:inventario_medizin/domain/entities/codeConfirmation.dart';
import 'package:inventario_medizin/domain/repositories/repository_confirmation.dart';

class UseCaseConfirmation {
  final RepositoryConfirmation repository;

  UseCaseConfirmation({required this.repository});

  Future<Codeconfirmation> getConfirmationData() async {
    return repository.getConfirmationData();
  }
}
