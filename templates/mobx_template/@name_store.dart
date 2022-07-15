import 'package:mobx/mobx.dart';
import 'package:@project/src/features/@name/domain/usecases/@name_use_case.dart';
import 'package:@project/src/features/@name/data/datasources/@name_remote_data_source.dart';
import 'package:@project/src/features/@name/data/repositories/@name_repository_impl.dart';

import '@name_state.dart';

part '@name_store.g.dart';

class @NameStore = _@NameStoreBase with _$@NameStore;

abstract class _@NameStoreBase with Store {
  late @NameUseCase useCase;

  @observable
  State@Name state = State@NameInitial();

  _@NameStoreBase() : useCase = sl.get<@NameUseCase>();

  @action
  setState(State@Name stateInput) {
    state = stateInput;
  }

  @action
  template() async {
    setState(State@NameLoading());
    try {
      await useCase.execute();

      setState(State@NameSuccess());
    } catch (e) {
      setState(State@NameError(message: e.toString()));
    }
  }
}
