abstract class @NameRemoteDataSource {
  Future<bool?> template();
}

class @NameRemoteDataSourceImpl implements @NameRemoteDataSource {
  @NameRemoteDataSourceImpl();

  @override
  Future<bool?> template() {
    //@Remoteclient...
    return Future.value(true);
  }
}
