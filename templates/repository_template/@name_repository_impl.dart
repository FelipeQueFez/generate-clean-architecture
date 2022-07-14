import 'package:@project/features/@name/data/datasources/@name_remote_data_source.dart';
import 'package:@project/features/@name/domain/repositories/@name_repository.dart';
import 'package:flutter/material.dart';
import 'package:dartz/dartz.dart';

class @NameRepositoryImpl implements @NameRepository {
  @NameRepositoryImpl({
    required this.remoteDataSource,
  });

  final @NameRemoteDataSource remoteDataSource;

    @override
  Future<Either<bool?, Exception>> template(
      String? coupleId, AddTaskCalendar? model) async {
    try {
      //invoke the datasource here.
      return Left<bool?, Exception>(true);
    } on dynamic catch (e) {
      return Right<bool, Exception>(
          (e is Exception) ? e : Exception(e.toString()));
    }
  }
}
