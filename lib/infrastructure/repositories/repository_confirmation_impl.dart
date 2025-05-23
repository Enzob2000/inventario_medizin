
import 'package:inventario_medizin/domain/datasources/datasource_verificacion.dart';
import 'package:inventario_medizin/domain/entities/codeConfirmation.dart';
import 'package:inventario_medizin/domain/repositories/repository_confirmation.dart';

class RepositoryConfirmationImpl implements RepositoryConfirmation {
  late final DatasourceVerificacion datasour;

  RepositoryConfirmationImpl({required this.datasour});

  @override
  Future<Codeconfirmation> getConfirmationData() async {
    return await datasour.fetchConfirmationData();
  }
}
