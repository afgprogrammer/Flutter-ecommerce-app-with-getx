import 'package:day59/controllers/products/ProductController.dart';
import 'package:day59/models/products/ProductModel.dart';
import 'package:day59/shared/constants/ColorConstants.dart';
import 'package:day59/shared/constants/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class ProductPage extends GetView<ProductController> {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Product build');
    print(Get.parameters['id']);

    if (Get.parameters['id'] == null) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }

    controller.fetchProduct(int.parse(Get.parameters['id']!));

    final theme = Theme.of(context);
    final isDarkMode = Get.isDarkMode;

    return controller.obx((state) {
      if (state == null) {
        return _isLoading(isDarkMode: isDarkMode);
      }

      return _build(
          context: context,
          product: state,
          theme: theme,
          isDarkMode: isDarkMode);
    }, onLoading: _isLoading(isDarkMode: isDarkMode));
  }

  Widget _build(
      {required BuildContext context,
      required ProductModel product,
      required ThemeData theme,
      required bool isDarkMode}) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(slivers: [
        SliverAppBar(
          expandedHeight: MediaQuery.of(context).size.height * 0.6,
          elevation: 0,
          snap: true,
          floating: true,
          stretch: true,
          backgroundColor: Colors.grey.shade50,
          flexibleSpace: FlexibleSpaceBar(
            stretchModes: [
              StretchMode.zoomBackground,
            ],
            background: Image.asset(
              product.image,
              fit: BoxFit.cover,
            ),
            // background: Image.network(product.image, fit: BoxFit.cover,)
          ),
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(45),
              child: Transform.translate(
                offset: Offset(0, 1),
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Center(
                      child: Container(
                    width: 50,
                    height: 8,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )),
                ),
              )),
        ),
        SliverList(
            delegate: SliverChildListDelegate([
          Container(
              height: MediaQuery.of(context).size.height * 0.55,
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        product.price.toString() + '.00',
                        style: theme.textTheme.subtitle1!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(60),
                          ),
                          height: getProportionateScreenWidth(60),
                          child: Row(
                            children: [
                              ZoomTapAnimation(
                                  onTap: () => controller.decrement(),
                                  child: Icon(Icons.bookmark_add,
                                      size: 50, color: kPrimaryColor)),
                            ],
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Take a break from jeans with the parker long straight pant. These lightweight, pleat front pants feature a flattering high waist and loose, straight legs.",
                    style: TextStyle(
                      height: 1.5,
                      color: Colors.grey.shade800,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Color",
                    style: TextStyle(color: Colors.grey.shade400, fontSize: 18),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // Container(
                  //   height: 60,
                  //   child: ListView.builder(
                  //     scrollDirection: Axis.horizontal,
                  //     itemCount: product.colors!.length,
                  //     itemBuilder: (context, index) {
                  //       return GestureDetector(
                  //         onTap: () {},
                  //         child: AnimatedContainer(
                  //           duration: Duration(milliseconds: 300),
                  //           margin: EdgeInsets.only(right: 10),
                  //           decoration: BoxDecoration(
                  //             color: _selectedColor == index ? colors[index] : colors[index].withOpacity(0.5),
                  //             shape: BoxShape.circle
                  //           ),
                  //           width: 40,
                  //           height: 40,
                  //           child: Center(
                  //             child: _selectedColor == index ? Icon(Icons.check, color: Colors.white,) : Container(),
                  //           ),
                  //         ),
                  //       );
                  //     },
                  //   ),
                  // ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Size',
                    style: TextStyle(color: Colors.grey.shade400, fontSize: 18),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // Container(
                  //   height: 60,
                  //   child: ListView.builder(
                  //     scrollDirection: Axis.horizontal,
                  //     itemCount: size.length,
                  //     itemBuilder: (context, index) {
                  //       return GestureDetector(
                  //         onTap: () {
                  //           setState(() {
                  //             _selectedSize = index;
                  //           });
                  //         },
                  //         child: AnimatedContainer(
                  //           duration: Duration(milliseconds: 500),
                  //           margin: EdgeInsets.only(right: 10),
                  //           decoration: BoxDecoration(
                  //             color: _selectedSize == index ? Colors.yellow[800] : Colors.grey.shade200,
                  //             shape: BoxShape.circle
                  //           ),
                  //           width: 40,
                  //           height: 40,
                  //           child: Center(
                  //             child: Text(size[index], style: TextStyle(color: _selectedSize == index ? Colors.white : Colors.black, fontSize: 15),),
                  //           ),
                  //         ),
                  //       );
                  //     },
                  //   ),
                  // ),
                  SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    height: 50,
                    elevation: 0,
                    splashColor: Colors.yellow[700],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Colors.yellow[800],
                    child: Center(
                      child: Text(
                        "Add to Cart",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  )
                ],
              ))
        ])),
      ]),
    );
  }

  Widget _isLoading({required bool isDarkMode}) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
