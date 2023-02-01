import 'package:@project/src/features/@name/data/datasources/@name_remote_data_source.dart';
import 'package:@project/src/features/@name/data/repositories/@name_repository_impl.dart';
import 'package:@project/src/features/@name/domain/repositories/@name_repository.dart';
import 'package:@project/src/features/@name/domain/usecases/@name_use_case.dart';
import 'package:@project/src/features/@name/presentation/stores/@name_store.dart';

class @NameServiceLocatorConfig
    implements ServiceLocatorConfigInternals, ServiceLocatorConfig {
  @override
  Future<void> configure(ServiceLocatorWrapper sl) async {
    registerManagerState(sl);
    registerUseCases(sl);
    registerRepositories(sl);
    registerDataSources(sl);
    registerServices(sl);
  }

  @override
  void registerManagerState(ServiceLocatorWrapper sl) {
    sl.registerFactory(() => @NameStore());
  }

  @override
  void registerDataSources(ServiceLocatorWrapper sl) {
    sl.registerLazySingleton<@NameRemoteDataSource>(
        () => @NameRemoteDataSourceImpl());
  }

  @override
  void registerRepositories(ServiceLocatorWrapper sl) {
    sl.registerLazySingleton<@NameRepository>(() =>
        @NameRepositoryImpl(remoteDataSource: sl<@NameRemoteDataSource>()));
  }

  @override
  void registerUseCases(ServiceLocatorWrapper sl) {
    sl.registerFactory(() => @NameUseCase(sl<@NameRepository>()));
  }

  @override
  void registerServices(ServiceLocatorWrapper sl) {
    sl.registerLazySingleton<@NameService>(() =>
        @NameService(sl<@NameRepository>()));
  }
}
