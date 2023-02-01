import 'package:@project/src/features/@name/data/datasources/@name_remote_data_source.dart';

abstract class @NameRepository {
    Future<Either<bool?, Exception>> template();
}

class @NameRepositoryImpl implements @NameRepository {
  @NameRepositoryImpl({
    required this.remoteDataSource,
  });

  final @NameRemoteDataSource remoteDataSource;

    @override
  Future<Either<bool?, Exception>> template() async {
    try {
      var _response = await remoteDataSource.template();
      return Left<bool?, Exception>(_response);
    } on dynamic catch (e) {
      return Right<bool, Exception>(
          (e is Exception) ? e : Exception(e.toString()));
    }
  }
}
