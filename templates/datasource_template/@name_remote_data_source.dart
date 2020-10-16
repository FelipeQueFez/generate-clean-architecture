import 'package:@project/modules/shared/remote_client_repository.dart';

abstract class @NameRemoteDataSource {
  //TODO:implement methods here
}

class @NameRemoteDataSourceImpl implements @NameRemoteDataSource {
  @NameRemoteDataSourceImpl(this.remoteClientRepository);

  final RemoteClientRepository remoteClientRepository;
}
