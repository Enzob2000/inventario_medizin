// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider_users.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userDataHash() => r'602055469abd297022884cf3a992e99f90e79aed';

/// See also [userData].
@ProviderFor(userData)
final userDataProvider = FutureProvider<User>.internal(
  userData,
  name: r'userDataProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$userDataHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef UserDataRef = FutureProviderRef<User>;
String _$notificationHash() => r'6b927f925f5bb5b41d59b7b13b6f432adbe1f05f';

/// See also [notification].
@ProviderFor(notification)
final notificationProvider = Provider<bool>.internal(
  notification,
  name: r'notificationProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$notificationHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef NotificationRef = ProviderRef<bool>;
String _$actionsMenuHash() => r'2fd2b9d5f8b8d8b34de88ab642dd3762c8bd0ef3';

/// See also [ActionsMenu].
@ProviderFor(ActionsMenu)
final actionsMenuProvider = NotifierProvider<ActionsMenu, int>.internal(
  ActionsMenu.new,
  name: r'actionsMenuProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$actionsMenuHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ActionsMenu = Notifier<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
