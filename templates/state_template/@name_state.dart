@immutable
class @NameState extends BaseState {
  final @NameDatabinding databinding;
  @NameState({
    required BaseLoadingState loading,
    required String? errorMessage,
    required this.databinding,
  }) : super(loading: loading, errorMessage: errorMessage);

  factory @NameState.initial() {
    return @NameState(
        errorMessage: null,
        loading: BaseLoadingState.initial,
        databinding: @NameDatabinding.initial());
  }

  @NameState copyWith(
      {BaseLoadingState? loading,
      String? errorMessage,
      @NameDatabinding? databinding}) {
    return @NameState(
      errorMessage: errorMessage ?? this.errorMessage,
      loading: loading ?? this.loading,
      databinding: databinding ?? this.databinding,
    );
  }
}