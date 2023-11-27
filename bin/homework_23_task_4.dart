import 'package:homework_23_task_4/homework_23_task_4.dart' as homework_23_task_4;
import 'models/shopping.dart';
import 'services/network_service.dart';
void main() async{
String data = await NetworkService.getData(NetworkService.apiShopping);
List<Shopping> list = shoppingListFromData(data);
list.forEach((element) {
  print(element.type.count[0]);
});
}
