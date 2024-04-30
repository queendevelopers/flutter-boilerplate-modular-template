import 'dart:io';

void main(List<String> arguments) {
  if (arguments.isNotEmpty) {
    print('Usage: dart startup.dart');
    return;
  }

  stdout.write('package name (com.example.domain) : ');
  String replacementText = stdin.readLineSync()!;
  findAndReplace('.','com.example.flutterBoilerplateModularTemplate', replacementText);
}

void findAndReplace(String directory, String searchText, String replacementText) {
  Directory.current.list(recursive: true).listen((FileSystemEntity entity) {
    if (entity is File) {
      entity.readAsString().then((String contents) {
        if (contents.contains(searchText)) {
          String modifiedContents = contents.replaceAll(searchText, replacementText);
          entity.writeAsString(modifiedContents).then((_) {
            print('Replaced "$searchText" with "$replacementText" in: ${entity.path}');
          }).catchError((error) {
            // debugPrint('Error writing to file ${entity.path}: $error');
          });
        }
      }).catchError((error) {
        // print('Error reading file ${entity.path}: $error');
      });
    }
  });
}
