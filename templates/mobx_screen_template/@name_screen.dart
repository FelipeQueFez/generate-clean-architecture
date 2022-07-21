import 'package:flutter/material.dart';
import 'package:@project/src/features/@name/presentation/stores/@name_state.dart';
import 'package:@project/src/features/@name/presentation/stores/@name_store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class @NameScreen extends StatefulWidget {
  @override
  _HelloScreenState createState() => _HelloScreenState();
}

class _HelloScreenState extends State<HelloScreen> {
  late @NameStore controller;

  @override
  void initState() {
    super.initState();

    controller = @NameStore();
    controller.template();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Responsive(
        mobile: Container(),
        desktop: _body(size: size, resposiveType: 'desktop'),
        tablet: _body(size: size, resposiveType: 'tablet'),
      ),
    );
  }

  Widget _body({required size, required String resposiveType}) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 550,
            child: Observer(builder: ((context) {
              if (controller.state is State@NameLoading) {
                return const Center(
                  child: SizedBox(
                    height: 50,
                    width: 150,
                    child: LoadingWidget(),
                  ),
                );
              } else if (controller.state is State@NameError) {
                final State@NameError stateError =
                    controller.state as State@NameError;
                return Center(
                  child: SizedBox(
                    height: 150,
                    width: 150,
                    child: Text(stateError.message),
                  ),
                );
              } else if (controller.state is State@NameSuccess) {
                return Center(
                  child: Text(
                    'Clean architecture implementado com sucesso',
                    style: CoreFonts.ubunturegular14black,
                  ),
                );
              }
              return Container();
            })),
          ),
        ],
      ),
    );
  }
}
