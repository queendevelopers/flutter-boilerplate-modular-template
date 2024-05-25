// ignore_for_file: avoid_print

import 'dart:io';

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    showManPage();
    return;
  }

  switch(arguments[0]){
    case "--package_name":
    case "-p":
       return findAndReplace(directory: '.',oldText: 'com.example.flutterBoilerplateModularTemplate', newText: arguments[1]);
    case "--app_name":
    case "-n":
      return findAndReplace(directory: '.', oldText: "ModularApp", newText: arguments[1]);
    default:
      return showManPage();
  }
}

void showManPage() {
    print('Usage: dart startup.dart --help');
}

void findAndReplace({required String directory, required String oldText,required String newText}) {
  Directory.current.list(recursive: true).listen((FileSystemEntity entity) {
    if (entity is File) {
      entity.readAsString().then((String contents) {
        if (contents.contains(oldText)) {
          String modifiedContents = contents.replaceAll(oldText, newText);
          entity.writeAsString(modifiedContents).then((_) {
            print('Replaced "$oldText" with "$newText" in: ${entity.path}');
          }).catchError((error) {
            print('Error renaming $oldText to $newText to file ${entity.path}: $error');
          });
        } 
      }).catchError((error) {
        // print('Error reading file ${entity.path}: $error');
      });
    }
  });
}
