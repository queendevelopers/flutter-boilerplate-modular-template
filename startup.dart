// ignore_for_file: avoid_print

import 'dart:io';

void main(List<String> arguments) {
  if (arguments.isNotEmpty) {
    print('Usage: dart startup.dart');
    return;
  }

  stdout.write('package name (com.example.domain) : ');
  String replacementText = stdin.readLineSync()!;
  stdout.write('app name (App Name) : ');
  String newAppName = stdin.readLineSync()!;
  findAndReplace(directory: '.',oldPackageName: 'com.example.flutterBoilerplateModularTemplate', newPackageName: replacementText, oldAppName: 'AppName',newAppName: newAppName);
}

void findAndReplace({required String directory, required String oldPackageName,required String newPackageName,required String oldAppName,required String newAppName}) {
  Directory.current.list(recursive: true).listen((FileSystemEntity entity) {
    if (entity is File) {
      entity.readAsString().then((String contents) {
        if (contents.contains(oldPackageName)) {
          String modifiedContents = contents.replaceAll(oldPackageName, newPackageName);
          entity.writeAsString(modifiedContents).then((_) {
            print('Replaced "$oldPackageName" with "$newPackageName" in: ${entity.path}');
          }).catchError((error) {
            print('Error writing to file ${entity.path}: $error');
          });
        } 
        if (contents.contains(oldAppName)) {
          String modifiedContents = contents.replaceAll(oldAppName, newAppName);
          entity.writeAsString(modifiedContents).then((_) {
            print('Replaced "$oldAppName" with "$newAppName" in: ${entity.path}');
          }).catchError((error) {
            print('Error writing to file ${entity.path}: $error');
          });
        }

      }).catchError((error) {
        // print('Error reading file ${entity.path}: $error');
      });
    }
  });
}
