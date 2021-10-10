import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:settings/view/pages/default_apps/default_apps_model.dart';
import 'package:settings/view/widgets/settings_row.dart';
import 'package:settings/view/widgets/settings_section.dart';

class DefaultAppsPage extends StatelessWidget {
  const DefaultAppsPage({Key? key}) : super(key: key);

  static Widget create(BuildContext context) {
    return ChangeNotifierProvider<DefaultAppsModel>(
      create: (_) => DefaultAppsModel(),
      child: const DefaultAppsPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final model = context.read<DefaultAppsModel>();
    return FutureBuilder<String>(
        future: model.defaultBrowserApp,
        builder: (context, snapshot) =>
            SettingsSection(headline: 'Default Applications', children: [
              SettingsRow(
                  trailingWidget: const Text('Default Browser'),
                  actionWidget: Text(snapshot.data!))
            ]));
  }
}
