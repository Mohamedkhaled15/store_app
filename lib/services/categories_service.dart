import 'package:store_api_app/helper/api.dart';
import 'package:store_api_app/models/product_model.dart';

class CategoriesService {
  Future<List<ProductModel>> getCategoriesProducts(
      {required String categoryName}) async {
   List<dynamic> data = await Api()
        .get(url: 'https://fakestoreapi.com/products/category/$categoryName', token: 'sk_test_51O7H2CI0L54bLw6DVga9G1w12ghwmmv42lky1M2c85RsghMB2a7fwPIfBqebCJAghL8TyJBKpxaL7SohxmsI5k2500pNcA9MUT');

   

    List<ProductModel> productsList = [];
    for (int i = 0; i < data.length; i++) {
      productsList.add(ProductModel.fromJson(data[i]));
    }

    return productsList;
  }
}
