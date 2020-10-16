import 'package:@project/features/@name/domain/entities/@name.dart';

class @NameModel extends @Name {
  
  const @NameModel();
  // const @NameModel(
  //     {})
  //     : super();

  factory @NameModel.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic> data = <String, dynamic>{};
    data = json;
    
    return @NameModel(
      
    );
  }

  @override
  String toString() {
    return '''
    ''';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    return data;
  }

  @NameModel copyWith() {
    return @NameModel();
  }
}
