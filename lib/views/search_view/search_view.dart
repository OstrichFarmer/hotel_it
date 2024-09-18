import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_it/views/search_view/search_viewmodel.dart';
import 'package:stacked/stacked.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SearchViewModel>.reactive(
      viewModelBuilder: () => SearchViewModel(),
      builder: (
        BuildContext context,
        SearchViewModel model,
        Widget? child,
      ) {
        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            backgroundColor: Theme.of(context).colorScheme.primary,
            appBar: AppBar(
              backgroundColor: Theme.of(context).colorScheme.primary,
              centerTitle: true,
              title: Text(
                "Available Hotels",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    onChanged: (value) => model.onSearchQueryChanged(value),
                    decoration: InputDecoration(
                      hintText: 'Search hotels...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: model.filteredHotels.length,
                    itemBuilder: (context, index) {
                      final hotel = model.filteredHotels[index];
                      return ListTile(
                        leading: Image.asset(hotel.imageUrl,
                            width: 50, height: 50, fit: BoxFit.cover),
                        title: Text(hotel.name,
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600)),
                        subtitle: Text(hotel.location),
                        trailing: Text('\$${hotel.price.toStringAsFixed(2)}'),
                        onTap: () {
                          // Handle hotel item tap here
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
