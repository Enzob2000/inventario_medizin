// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider_inicio.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$companyDataHash() => r'51b7af162fa58f7e0e088629f8eabeb8b6e00051';

/// See also [companyData].
@ProviderFor(companyData)
final companyDataProvider = FutureProvider<Company>.internal(
  companyData,
  name: r'companyDataProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$companyDataHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CompanyDataRef = FutureProviderRef<Company>;
String _$authControllerHash() => r'4057788b45c90beb7708a776adcd1202b9a2364a';

/// See also [AuthController].
@ProviderFor(AuthController)
final authControllerProvider =
    AsyncNotifierProvider<AuthController, bool>.internal(
      AuthController.new,
      name: r'authControllerProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$authControllerHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$AuthController = AsyncNotifier<bool>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
