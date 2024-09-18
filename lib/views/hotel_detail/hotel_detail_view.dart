import 'package:flutter/material.dart';
import 'package:hotel_it/views/hotel_detail/hotel_detail_viewmodel.dart';
import 'package:stacked/stacked.dart';

class HotelDetailView extends StatelessWidget {
  const HotelDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HotelDetailViewModel>.reactive(
      viewModelBuilder: () => HotelDetailViewModel(),
      builder: (
        BuildContext context,
        HotelDetailViewModel model,
        Widget? child,
      ) {
        return const Scaffold(
          body: Center(
            child: Text(
              'HotelDetailView',
            ),
          ),
        );
      },
    );
  }
}
