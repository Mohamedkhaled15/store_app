import 'package:store_api_app/helper/api.dart';
import 'package:store_api_app/models/product_model.dart';

class AddProduct{

  Future<ProductModel> addProduct(
      {required String title,
      required String price,
      required String desc,
      required String image,
      required String category}) async {
   Map<String ,dynamic> data =await Api().post(
        url: 'https://fakestoreapi.com/products', 
        body: {
            'title': title,
            'price': price,
            'description': desc,
            'image': image,
            'category': category,
          }, token: 'sk_test_51O7H2CI0L54bLw6DVga9G1w12ghwmmv42lky1M2c85RsghMB2a7fwPIfBqebCJAghL8TyJBKpxaL7SohxmsI5k2500pNcA9MUT',
           );
       return ProductModel.fromJson(data); 
  }

  
}