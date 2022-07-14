import 'package:mobx/mobx.dart';
import 'package:@project/src/features/@name/domain/usecases/@name_use_case.dart';

import '@name_state.dart';

part '@name_store.g.dart';

class @NameStore = _@NameStoreBase with _$@NameStore;

abstract class _@NameStoreBase with Store {
  late @NameUseCase useCase;

  @observable
  State@Name state = State@NameInitial();

  _@NameStoreBase() : useCase = @NameUseCase(@NameRepositoryImpl(remoteDataSource: @NameRemoteDataSourceImpl(),),);

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
