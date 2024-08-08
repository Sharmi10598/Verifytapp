import 'package:flutter/material.dart';

import '../../../Constant/Screen.dart';

class SearchScreenPage extends StatefulWidget {
  const SearchScreenPage({super.key});

  @override
  State<SearchScreenPage> createState() => _SearchScreenPageState();
}

class _SearchScreenPageState extends State<SearchScreenPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            AppBar(
              foregroundColor: Colors.white,
              backgroundColor: Colors.blue,
              centerTitle: true,
              automaticallyImplyLeading: false,
              title: const Text('Search'),
            ),
            Container(
              height: Screens.padingHeight(context),
              child: Center(
                child: Text('No data to load..!!!'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
