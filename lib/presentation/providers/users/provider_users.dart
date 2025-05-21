import "dart:ffi";
import "package:flutter/cupertino.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:inventario_medizin/config/services/service_locator.dart";
import "package:inventario_medizin/domain/datasources/datasour_users.dart";
import "package:inventario_medizin/domain/repositories/repository_users.dart";
import "package:inventario_medizin/domain/use_case/use_case_users.dart";
import "package:inventario_medizin/infrastructure/datasources/datasour_user_impl.dart";
import "package:inventario_medizin/infrastructure/repositories/repository_user_impl.dart";
import "package:riverpod/riverpod.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

part 'provider_users.g.dart';

@Riverpod(keepAlive: true)
// ignore: deprecated_member_use_from_same_package
Future<User> userData(Ref ref) async {
  final repository = getIt<UserRepository>();
  final usceCase = UseCaseUsers(repository: repository);
  User user = await usceCase.getUserData();

  return user;
}

@Riverpod(keepAlive: true)
// ignore: deprecated_member_use_from_same_package
bool notification(Ref ref) {
  return true;
}

@Riverpod(keepAlive: true)
class ActionsMenu extends _$ActionsMenu {
  @override
  int build() {
    return 0;
  }

  void setIndex(int index) {
    state = index;
  }
  
}