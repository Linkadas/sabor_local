import '/components/category_pill_widget.dart';
import '/components/dish_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cardapio_widget.dart' show CardapioWidget;
import 'package:flutter/material.dart';

class CardapioModel extends FlutterFlowModel<CardapioWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for CategoryPill.
  late CategoryPillModel categoryPillModel1;
  // Model for CategoryPill.
  late CategoryPillModel categoryPillModel2;
  // Model for CategoryPill.
  late CategoryPillModel categoryPillModel3;
  // Model for CategoryPill.
  late CategoryPillModel categoryPillModel4;
  // Model for DishCard.
  late DishCardModel dishCardModel1;
  // Model for DishCard.
  late DishCardModel dishCardModel2;
  // Model for DishCard.
  late DishCardModel dishCardModel3;
  // Model for DishCard.
  late DishCardModel dishCardModel4;

  @override
  void initState(BuildContext context) {
    categoryPillModel1 = createModel(context, () => CategoryPillModel());
    categoryPillModel2 = createModel(context, () => CategoryPillModel());
    categoryPillModel3 = createModel(context, () => CategoryPillModel());
    categoryPillModel4 = createModel(context, () => CategoryPillModel());
    dishCardModel1 = createModel(context, () => DishCardModel());
    dishCardModel2 = createModel(context, () => DishCardModel());
    dishCardModel3 = createModel(context, () => DishCardModel());
    dishCardModel4 = createModel(context, () => DishCardModel());
  }

  @override
  void dispose() {
    categoryPillModel1.dispose();
    categoryPillModel2.dispose();
    categoryPillModel3.dispose();
    categoryPillModel4.dispose();
    dishCardModel1.dispose();
    dishCardModel2.dispose();
    dishCardModel3.dispose();
    dishCardModel4.dispose();
  }
}
