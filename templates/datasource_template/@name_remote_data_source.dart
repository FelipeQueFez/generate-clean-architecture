import 'package:@project/core/network/hasura_wrapper.dart';
import 'package:flutter/material.dart';

abstract class @NameRemoteDataSource {
  //TODO:implement methods here
}

class @NameRemoteDataSourceImpl implements @NameRemoteDataSource {
  @NameRemoteDataSourceImpl({@required this.client});

  final HasuraWrapper client;
}
