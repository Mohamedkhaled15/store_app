import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_api_app/helper/api.dart';

class GetAllCategoriesService{

 Future< List<dynamic>> getAllCategories()async{
  List<dynamic> data= 
            await Api()
        .get(url: 'https://fakestoreapi.com/products/categories', token: 'sk_test_51O7H2CI0L54bLw6DVga9G1w12ghwmmv42lky1M2c85RsghMB2a7fwPIfBqebCJAghL8TyJBKpxaL7SohxmsI5k2500pNcA9MUT');

  return data;
}
 }

