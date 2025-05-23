

import 'package:inventario_medizin/domain/entities/codeConfirmation.dart';

abstract class RepositoryConfirmation<codeconfirmation> {
  Future<Codeconfirmation> getConfirmationData();
}
