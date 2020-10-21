part of '@name_bloc.dart';

class @NameState extends DefaultState {

  @NameState({
    bool isLoading,
    bool isEmpty,
    bool isError,
    String errorMessage,    
  }) : super(
          isLoading: isLoading,
          isEmpty: isEmpty,
          isError: isError,
          errorMessage: errorMessage,
        );

  factory @NameState.initial() {
    return @NameState(
      isEmpty: false,
      isError: false,
      isLoading: false,
      errorMessage: null,
    );
  }

  @NameState copyWith({
    bool isLoading,
    bool isEmpty,
    bool isError,
    String errorMessage,
  }) {
    return @NameState(
      isLoading: isLoading ?? this.isLoading,
      isEmpty: isEmpty ?? this.isEmpty,
      isError: isError ?? this.isError,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object> get props => [
    isLoading,
    isEmpty,
    isError,
    errorMessage,
  ];
}