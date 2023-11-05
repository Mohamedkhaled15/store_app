import 'dart:convert';

import 'package:http/http.dart' as http;

class GetAllCategoriesService{

 Future< List<dynamic>> getAllCategories()async{
  http.Response response= 
            await http.get(Uri.parse('https://fakestoreapi.com/products/categories'));
            
  response.statusCode;

 if (response.statusCode==200) {
  List<dynamic>data =jsonDecode(response.body);
  return data;
}else{
  throw Exception('there is a problem with status code ${response.statusCode} ');
}
 }

}