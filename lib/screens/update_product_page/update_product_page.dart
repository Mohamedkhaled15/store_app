import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store_api_app/models/product_model.dart';
import 'package:store_api_app/services/update_product.dart';
import 'package:store_api_app/widgets/custom_text_field.dart';
import '../../widgets/custome_app_bar.dart';
import '../../widgets/custome_button.dart';

class UpdateProductPage extends StatefulWidget {
  UpdateProductPage({Key? key}) : super(key: key);

  static String id = 'updateProduct';

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  String? productName, desc, image;

  String? price;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: buildAppBar(
            title: 'Update Product',
            bgColor: Colors.white,
            iconColor: Colors.white,
            onTap: () {}),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                CustomTextField(
                  onChanged: (value) {
                    productName = value;
                  },
                  hintText: 'Product Name',
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  onChanged: (value) {
                    desc = value;
                  },
                  hintText: 'description',
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  inputType: TextInputType.number,
                  onChanged: (value) {
                    price = value;
                  },
                  hintText: 'price',
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  onChanged: (value) {
                    image = value;
                  },
                  hintText: 'image',
                ),
                const SizedBox(
                  height: 100,
                ),
                CustomButon(
                  text: 'Update ',
                  onTap: () async {
                    isLoading = true;
                    setState(() {});
                    try {
                      await updateProduct(product);
                      print('success');
                    } catch (e) {
                      print(e.toString());
                    }
                    isLoading = false;
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> updateProduct(ProductModel product) async {
    await UpdateProductService().UpdateProduct(
        id: product.id,
        title: productName == null ? product.title : productName!,
        price: price == null ? product.price.toString() : price!,
        desc: desc == null ? product.description : desc!,
        image: image == null ? product.image : desc!,
        category: product.category);
  }
}
