import 'package:flutter/material.dart';
import 'package:flutter_custom_tabs/flutter_custom_tabs.dart';
import 'package:quick_internet_client/logger.dart';

extension BuildContextExt on BuildContext {
  Future<void> launchUrl(String url) async {
    try {
      await launch(
        url,
        customTabsOption: CustomTabsOption(
          toolbarColor: Theme.of(this).primaryColor,
          enableDefaultShare: true,
          enableUrlBarHiding: true,
        ),
        safariVCOption: SafariViewControllerOption(
          preferredBarTintColor: Theme.of(this).primaryColor,
          preferredControlTintColor: Colors.white,
          barCollapsingEnabled: true,
          entersReaderIfAvailable: false,
          dismissButtonStyle: SafariViewControllerDismissButtonStyle.close,
        ),
      );
    } on Exception catch (e) {
      logger.e(e);
    }
  }
}
