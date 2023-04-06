// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
// import 'package:starter_template_app/app/theme/app_theme.dart' as _i3;
//import 'package:starter_template_app/core/clients/client_modules.dart' as _i6;
//import 'package:starter_template_app/core/clients/network/network_client.dart' as _i5;
import '../src/shared/clients/client_modules.dart' as _i6;
import '../src/shared/clients/network/network_client.dart' as _i5;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final clientModules = _$ClientModules();
    //gh.lazySingleton<_i3.AppTheme>(() => _i3.AppTheme());
    gh.factory<_i4.Dio>(() => clientModules.dio);
    gh.lazySingleton<_i5.NetworkClient>(() => _i5.NetworkClient(dio: gh<_i4.Dio>()));
    return this;
  }
}

class _$ClientModules extends _i6.ClientModules {}
