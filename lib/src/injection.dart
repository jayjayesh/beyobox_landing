import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
//import 'package:starter_template_app/injection.config.dart';
import '../src/injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() => getIt.init();
