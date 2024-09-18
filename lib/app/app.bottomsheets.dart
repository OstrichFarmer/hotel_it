// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedBottomsheetGenerator
// **************************************************************************

import 'package:stacked_services/stacked_services.dart';

import 'app.locator.dart';
import '../views/profile/language_view.dart';

enum BottomSheetType {
  languageView,
}

void setupBottomSheetUi() {
  final bottomsheetService = locator<BottomSheetService>();

  final Map<BottomSheetType, SheetBuilder> builders = {
    BottomSheetType.languageView: (context, request, completer) =>
        LanguageView(request: request, completer: completer),
  };

  bottomsheetService.setCustomSheetBuilders(builders);
}
