import 'package:file_picker/file_picker.dart';

Future<String?> pickImage() async {
  final result = await FilePicker.platform.pickFiles(
    allowMultiple: false,
    type: FileType.image,
    allowCompression: true,
  );
  if (result != null && result.files.first.path != null) {
    return result.files.first.path!;
  }
  return null;
}
