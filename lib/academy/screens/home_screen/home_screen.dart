import 'package:flutter/material.dart';
import 'package:teachblox/academy/store/auth_store/auth_store.dart';
import 'package:teachblox/l10n/locals.dart';
import 'package:teachblox/utils.dart';
import 'package:teachblox/widgets/main_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = getLocale(context);

    return Scaffold(
      appBar: MainAppBar(
        actions: [
          IconButton(
            onPressed: () => authStore.signOut(),
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: Center(
        child: SizedBox(
          width: getAdaptiveValue(
            context,
            mobile: 200.0,
            tablet: 400.0,
            desktop: 700.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                locale.comingSoon_title,
                textAlign: TextAlign.center,
                style: getHeadlineLarge(context),
              ),
              Text(
                locale.comingSoon_description,
                textAlign: TextAlign.center,
                style: getDisplayMedium(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
