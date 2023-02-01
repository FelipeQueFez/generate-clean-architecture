import 'package:flutter/material.dart';
import 'package:@project/src/features/@name/presentation/stores/@name_state.dart';
import 'package:@project/src/features/@name/presentation/stores/@name_store.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class @NameScreen extends StatefulWidget {
  const @NameScreen({super.key});

  @override
  _@NameScreenState createState() =>
      _@NameScreenState();
}

class _@NameScreenState extends State<@NameScreen> {
  late @NameCubit controller;

  @override
  void initState() {
    super.initState();
    controller = locator<@NameCubit>();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return _body(size: size);
  }

  Widget _body({required size}) {
    return BlocBuilder<@NameCubit, @NameState>(
      bloc: controller,
      builder: (context, state) {
        if (state.loading == BaseLoadingState.loading) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            showLoading(context, "Aguarde.");
          });
        } else if (state.loading == BaseLoadingState.error) {
          hideLoading(context);
        } else if (state.loading == BaseLoadingState.validationSuccess) {
          hideLoading(context);
          controller.nextScreen();

          WidgetsBinding.instance.addPostFrameCallback((_) {
            Navigator.of(context).pushReplacementNamed(
              Routes.homePI,
            );
          });
        }
        return Text('Clean Architecture');
      },
    );
  }
}
