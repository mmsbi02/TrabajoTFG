import 'package:image_picker/image_picker.dart';


Future<XFile?> getImage() async{
  final ImagePicker picker = ImagePicker();

  final XFile? image = await picker.pickImage(source: ImageSource.gallery);


  return image;
}
Future<XFile?> setImage() async{
  final ImagePicker picker = ImagePicker();

  final XFile? image = await picker.pickImage(source: ImageSource.gallery);
  

  return image;
}