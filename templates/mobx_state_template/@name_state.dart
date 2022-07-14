abstract class State@Name {}

class State@NameInitial extends State@Name {}

class State@NameLoading extends State@Name {}

class State@NameSuccess extends State@Name {  
}

class State@NameError extends State@Name {
  final String message;

  State@NameError({required this.message});
}
