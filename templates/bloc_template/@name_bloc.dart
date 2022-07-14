import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import 'package:bloc/bloc.dart';
import 'package:@project/features/@name/domain/repositories/@name_repository.dart';
import 'package:@project/views/shared/blocs/default_state.dart';

part '@name_event.dart';
part '@name_state.dart';

class @NameBloc extends Bloc<@NameEvent, @NameState> {
  @NameBloc({required @NameRepository @nameRepository})
      : assert(@nameRepository != null),
        _@nameRepository = @nameRepository,
        super(@NameState.initial());

  final @NameRepository _@nameRepository;

  @override
  Stream<@NameState> mapEventToState(
    @NameEvent event,
  ) async* {
  }
}