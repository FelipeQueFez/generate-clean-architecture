import 'package:@project/features/@name/data/datasources/@name_remote_data_source.dart';
import 'package:@project/features/@name/domain/repositories/@name_repository.dart';
import 'package:flutter/material.dart';

class @NameRepositoryImpl implements @NameRepository {
  @NameRepositoryImpl({
    @required this.remoteDataSource,
  });

  final @NameRemoteDataSource remoteDataSource;
}
