import '/components/category_pill_widget.dart';
import '/components/dish_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'cardapio_model.dart';
export 'cardapio_model.dart';

/// crie uma tela de cardapio bonito, baseado em comida mineira,  quero que
/// todas as funções funcionam e quero animação tbm
class CardapioWidget extends StatefulWidget {
  const CardapioWidget({super.key});

  static String routeName = 'cardapio';
  static String routePath = '/cardapio';

  @override
  State<CardapioWidget> createState() => _CardapioWidgetState();
}

class _CardapioWidgetState extends State<CardapioWidget> {
  late CardapioModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CardapioModel());
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
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 220.0,
              child: Stack(
                alignment: AlignmentDirectional(-1.0, -1.0),
                children: [
                  CachedNetworkImage(
                    fadeInDuration: Duration(milliseconds: 0),
                    fadeOutDuration: Duration(milliseconds: 0),
                    imageUrl:
                        'https://dimg.dreamflow.cloud/v1/image/rustic%20brazilian%20kitchen%20background',
                    height: 200.0,
                    fit: BoxFit.cover,
                    alignment: Alignment(0.0, 0.0),
                  ),
                  Container(
                    height: 200.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.transparent,
                          FlutterFlowTheme.of(context).primaryBackground
                        ],
                        stops: [0.0, 1.0],
                        begin: AlignmentDirectional(0.0, -1.0),
                        end: AlignmentDirectional(0, 1.0),
                      ),
                      shape: BoxShape.rectangle,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1.0, 1.0),
                    child: Padding(
                      padding: EdgeInsets.all(24.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Sabor Local',
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  font: GoogleFonts.interTight(
                                    fontWeight: FontWeight.w900,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .fontStyle,
                                  ),
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w900,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .fontStyle,
                                  lineHeight: 1.4,
                                ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.location_on_rounded,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 16.0,
                              ),
                              Text(
                                'O melhor tempero mineiro',
                                style: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontStyle,
                                      lineHeight: 1.4,
                                    ),
                              ),
                            ].divide(SizedBox(width: 4.0)),
                          ),
                        ].divide(SizedBox(height: 4.0)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: Container(
                child: Container(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    child: Container(
                      child: Container(
                        width: 0.0,
                        height: 0.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 50.0,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      child: Container(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            wrapWithModel(
                              model: _model.categoryPillModel1,
                              updateCallback: () => safeSetState(() {}),
                              child: CategoryPillWidget(
                                active: true,
                                icon: Icon(
                                  Icons.restaurant_menu_rounded,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 18.0,
                                ),
                                label: 'Típicos',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.categoryPillModel2,
                              updateCallback: () => safeSetState(() {}),
                              child: CategoryPillWidget(
                                active: false,
                                icon: Icon(
                                  Icons.local_bar_rounded,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 18.0,
                                ),
                                label: 'Porções',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.categoryPillModel3,
                              updateCallback: () => safeSetState(() {}),
                              child: CategoryPillWidget(
                                active: false,
                                icon: Icon(
                                  Icons.icecream_rounded,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 18.0,
                                ),
                                label: 'Doces',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.categoryPillModel4,
                              updateCallback: () => safeSetState(() {}),
                              child: CategoryPillWidget(
                                active: false,
                                icon: Icon(
                                  Icons.local_drink_rounded,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 18.0,
                                ),
                                label: 'Bebidas',
                              ),
                            ),
                          ].divide(SizedBox(width: 16.0)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: SingleChildScrollView(
                  primary: false,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(24.0),
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Destaques da Casa',
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      font: GoogleFonts.interTight(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontStyle,
                                      lineHeight: 1.4,
                                    ),
                              ),
                              wrapWithModel(
                                model: _model.dishCardModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: DishCardWidget(
                                  imageDesc:
                                      'https://dimg.dreamflow.cloud/v1/image/brazilian%20feijao%20tropeiro%20dish',
                                  tag: '',
                                  price: 'R\$ 42,00',
                                  title: 'Feijão Tropeiro',
                                  desc:
                                      'Feijão com bacon, linguiça, ovos, farinha de mandioca e couve fresquinha.',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.dishCardModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: DishCardWidget(
                                  imageDesc:
                                      'https://dimg.dreamflow.cloud/v1/image/chicken%20with%20okra%20brazilian%20food',
                                  tag: 'Tradicional',
                                  price: 'R\$ 38,50',
                                  title: 'Frango com Quiabo',
                                  desc:
                                      'Frango caipira ensopado com quiabo, servido com angu e arroz branco.',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.dishCardModel3,
                                updateCallback: () => safeSetState(() {}),
                                child: DishCardWidget(
                                  imageDesc:
                                      'https://dimg.dreamflow.cloud/v1/image/pork%20ribs%20with%20polenta',
                                  tag: '',
                                  price: 'R\$ 45,90',
                                  title: 'Costelinha Mineira',
                                  desc:
                                      'Costelinha de porco frita, acompanhada de canjiquinha cremosa e couve.',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.dishCardModel4,
                                updateCallback: () => safeSetState(() {}),
                                child: DishCardWidget(
                                  imageDesc:
                                      'https://dimg.dreamflow.cloud/v1/image/caramel%20pudding%20dessert',
                                  tag: 'Sobremesa',
                                  price: 'R\$ 15,00',
                                  title: 'Pudim de Leite',
                                  desc:
                                      'O clássico pudim de leite condensado com calda de caramelo artesanal.',
                                ),
                              ),
                            ].divide(SizedBox(height: 8.0)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                shape: BoxShape.rectangle,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 1.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).alternate,
                      shape: BoxShape.rectangle,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 16.0),
                    child: Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Total do Pedido',
                                style: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontStyle,
                                      lineHeight: 1.4,
                                    ),
                              ),
                              Text(
                                'R\$ 0,00',
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      font: GoogleFonts.interTight(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontStyle,
                                      lineHeight: 1.4,
                                    ),
                              ),
                            ].divide(SizedBox(height: 4.0)),
                          ),
                          Container(
                            width: 160.0,
                            height: 0.0,
                            child: Container(
                              width: 0.0,
                              height: 0.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
