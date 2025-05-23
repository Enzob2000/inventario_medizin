



import 'package:inventario_medizin/domain/entities/codeConfirmation.dart';

abstract class DatasourceVerificacion {
  Future<Codeconfirmation> fetchConfirmationData();
}
