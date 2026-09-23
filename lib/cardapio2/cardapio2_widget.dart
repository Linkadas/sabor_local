import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'cardapio2_model.dart';
export 'cardapio2_model.dart';

class Cardapio2Widget extends StatefulWidget {
  const Cardapio2Widget({super.key});

  static String routeName = 'cardapio2';
  static String routePath = '/cardapio2';

  @override
  State<Cardapio2Widget> createState() => _Cardapio2WidgetState();
}

class _Cardapio2WidgetState extends State<Cardapio2Widget> {
  late Cardapio2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Cardapio2Model());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
