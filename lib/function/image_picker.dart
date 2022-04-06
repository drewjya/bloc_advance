import 'dart:io';
import 'package:file_picker/file_picker.dart';

Future<List?> pickImage() async {
  final result = await FilePicker.platform.pickFiles(
    allowMultiple: false,
    type: FileType.image,
    allowCompression: true,
  );
  if (result != null && result.files.first.path != null) {
    return [File(result.files.first.path!), result.files.first.path!];
  }
  return null;
}
