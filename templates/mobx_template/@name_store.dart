import 'dart:developer';

import 'package:core/core.dart';

import '@name_state.dart';

part '@name_store.g.dart';

class @NameStore = _@NameStoreBase with _$@NameStore;

abstract class _@NameStoreBase with Store {
  late @NameUseCase useCase;

  @observable
  StateListProfiles state = StateListProfilesInitial();

  _@NameStoreBase() : useCase = @NameUseCase();

  @action
  setState(State@Name stateInput) {
    state = stateInput;
  }

  @action
  template() async {
    setState(State@NameLoading());
    try {
      await useCase.template();

      setState(State@NameSuccess());
    } catch (e) {
      setState(State@NameError(message: e.toString()));
    }
  }
}
