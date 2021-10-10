import 'package:process_run/shell.dart';
import 'package:safe_change_notifier/safe_change_notifier.dart';

class DefaultAppsModel extends SafeChangeNotifier {
  late final Shell _shell;

  DefaultAppsModel() : _shell = Shell();

  Future<String> get defaultBrowserApp async =>
      (await _shell.run('xdg-settings get default-web-browser')).outLines.first;
}

//  enum BrowserDesktopFileString {
//     'firefox_firefox.desktop',
    

//   }