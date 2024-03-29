import 'package:@project/src/features/@name/domain/repositories/@name_repository.dart';

class @NameUseCase extends UseCase<bool?> {
  @NameUseCase(this.repository);

  final @NameRepository repository;

  @override
  Future<Either<bool?, dynamic>> execute() async {
    return await repository.template();
  }
}
