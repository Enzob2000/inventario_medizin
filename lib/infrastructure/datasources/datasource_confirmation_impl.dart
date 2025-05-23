



import 'package:inventario_medizin/domain/datasources/datasource_verificacion.dart';
import 'package:inventario_medizin/domain/entities/codeConfirmation.dart';

class DatasourceVerificacionImpl implements DatasourceVerificacion {
  @override
  Future<Codeconfirmation> fetchConfirmationData() async {

    await Future.delayed(const Duration(seconds: 1));

    return Codeconfirmation(email: "denieldiaz06@gmail.com", code: "1234");
  }
}
