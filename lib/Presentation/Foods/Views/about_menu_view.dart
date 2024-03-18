import 'package:flash_food/Core/app_colors.dart';
import 'package:flash_food/Core/assets_constantes.dart';
import 'package:flash_food/Core/font_size.dart';
import 'package:flash_food/Core/response_conf.dart';
import 'package:flash_food/Core/text_styles.dart';
import 'package:flash_food/Presentation/Auth/screens/default_button.dart';
import 'package:flash_food/Presentation/Base/base.dart';
import 'package:flash_food/Presentation/Models/food_item_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

// class AboutMenuView extends StatelessWidget {
//   final String imageUrl;
//   final String title;
//   final String price;
//   final String deliveryTime;
//   final String rating;
//   final String description;

//   const AboutMenuView({
//     Key? key,
//     required this.imageUrl,
//     required this.title,
//     required this.price,
//     required this.deliveryTime,
//     required this.rating,
//     required this.description,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     MathUtils.init(context);
//     return Scaffold(
//       appBar:
//           buildAppBar(buildContext: context, screenTitle: "About This Menu"),
//       body: Padding(
//         padding: EdgeInsets.symmetric(horizontal: getWidth(24)),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Gap(8),
//             Container(
//               width: double.infinity,
//               height: getHeight(295),
//               padding: EdgeInsets.all(getSize(16)),
//               decoration: ShapeDecoration(
//                 image: const DecorationImage(
//                   image: AssetImage(AssetsConstants.ordinaryBurger),
//                   fit: BoxFit.fill,
//                 ),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(16),
//                 ),
//               ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 children: [
//                   Container(
//                       width: getHeight(30),
//                       height: getHeight(30),
//                       padding: EdgeInsets.all(getSize(5)),
//                       decoration: const BoxDecoration(
//                         color: Colors.white,
//                         shape: BoxShape.circle,
//                       ),
//                       child: Icon(
//                         Icons.favorite,
//                         color: Pallete.pureError,
//                         size: getSize(20),
//                       )),
//                   Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: List.generate(
//                           3,
//                           (index) => Padding(
//                                 padding: EdgeInsets.only(left: getWidth(4)),
//                                 child: Container(
//                                   width: 32,
//                                   height: 4,
//                                   decoration: ShapeDecoration(
//                                     color: index == 0
//                                         ? Pallete.orangePrimary
//                                         : Colors.white,
//                                     shape: RoundedRectangleBorder(
//                                         borderRadius: BorderRadius.circular(2)),
//                                   ),
//                                 ),
//                               )))
//                 ],
//               ),
//             ),
//             const Gap(16),
//             Text(
//               "Burger With Meat 🍔",
//               style: TextStyles.headingH5SemiBold.copyWith(
//                   color: Pallete.neutral100,
//                   fontSize: getFontSize(FontSizes.h5)),
//             ),
//             const Gap(8),
//             Text(
//               "\$ 12,230",
//               style: TextStyles.headingH6Bold.copyWith(
//                   color: Pallete.orangePrimary,
//                   fontSize: getFontSize(FontSizes.h6)),
//             ),
//             const Gap(16),
//             Container(
//                 height: getHeight(39),
//                 width: double.infinity,
//                 padding: EdgeInsets.all(getSize(8)),
//                 decoration: BoxDecoration(
//                     color: const Color(0xFFFE8C00).withOpacity(0.04)),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Row(
//                       children: [
//                         Icon(
//                           Icons.attach_money_sharp,
//                           size: getSize(14),
//                           color: Pallete.orangePrimary,
//                         ),
//                         const Gap(8),
//                         Text(
//                           "Free Delivery",
//                           style: TextStyles.bodyMediumRegular.copyWith(
//                               color: Pallete.neutral60,
//                               fontSize: getFontSize(FontSizes.medium)),
//                         )
//                       ],
//                     ),
//                     Row(
//                       children: [
//                         Icon(
//                           Icons.access_time_filled_rounded,
//                           size: getSize(14),
//                           color: Pallete.orangePrimary,
//                         ),
//                         const Gap(8),
//                         Text(
//                           "20-30",
//                           style: TextStyles.bodyMediumRegular.copyWith(
//                               color: Pallete.neutral60,
//                               fontSize: getFontSize(FontSizes.medium)),
//                         )
//                       ],
//                     ),
//                     Row(
//                       children: [
//                         Icon(
//                           Icons.star,
//                           size: getSize(14),
//                           color: Pallete.orangePrimary,
//                         ),
//                         const Gap(8),
//                         Text(
//                           "4.5",
//                           style: TextStyles.bodyMediumRegular.copyWith(
//                               color: Pallete.neutral60,
//                               fontSize: getFontSize(FontSizes.medium)),
//                         )
//                       ],
//                     ),
//                   ],
//                 )),
//             const Gap(16),
//             Container(
//               width: double.infinity,
//               height: 2,
//               color: const Color(0xFFEDEDED),
//             ),
//             const Gap(16),
//             Text(
//               "Description",
//               style: TextStyles.headingH5SemiBold.copyWith(
//                   color: Pallete.neutral100,
//                   fontSize: getFontSize(FontSizes.h5)),
//             ),
//             const Gap(8),
//             Text(
//               "Burger With Meat is a typical food from our restaurant that is much in demand by many people, this is very recommended for you.",
//               style: TextStyles.bodyMediumRegular.copyWith(
//                   color: const Color(0xFF878787),
//                   fontSize: getFontSize(FontSizes.medium)),
//             ),
//             const Gap(18),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   "Recomended For You",
//                   style: TextStyles.bodyLargeSemiBold.copyWith(
//                       color: Pallete.neutral100,
//                       fontSize: getFontSize(FontSizes.large)),
//                 ),
//                 Text(
//                   "See Al",
//                   style: TextStyles.bodyMediumMedium.copyWith(
//                       color: Pallete.orangePrimary,
//                       fontSize: getFontSize(FontSizes.medium)),
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//       bottomSheet: Container(
//         padding: EdgeInsets.symmetric(horizontal: getWidth(24))
//             .copyWith(top: getHeight(16), bottom: getHeight(32)),
//         height: getHeight(100),
//         width: double.infinity,
//         decoration: const BoxDecoration(
//           color: Colors.white,
//         ),
//         child: Row(
//           children: [
//             Row(
//               children: [
//                 Container(
//                   height: getSize(40),
//                   width: getSize(40),
//                   decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       border:
//                           Border.all(color: const Color(0xFFEAEAEA), width: 1)),
//                   child: Icon(
//                     Icons.remove,
//                     size: getSize(24),
//                     color: Pallete.neutral100,
//                   ),
//                 ),
//                 const Gap(8),
//                 Text('2',
//                     style: TextStyles.bodyLargeBold
//                         .copyWith(color: Pallete.neutral100)),
//                 const Gap(16),
//                 Container(
//                   height: getSize(40),
//                   width: getSize(40),
//                   decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       border:
//                           Border.all(color: const Color(0xFFEAEAEA), width: 1)),
//                   child: Icon(Icons.add,
//                       size: getSize(24), color: Pallete.neutral100),
//                 ),
//               ],
//             ),
//             const Gap(26),
//             Expanded(
//                 child: DefaultButton(
//               btnContent: "Add to Cart",
//               btnIcon: Icons.shopping_cart_outlined,
//             ))
//           ],
//         ),
//       ),
//     );
//   }
// }

// class AboutMenuView extends StatelessWidget {
//   final String imageUrl;
//   final String title;
//   final double price;
//   final int deliveryTime;
//   final double rating;
//   final String description;
//   final ModelInfo modelInfo;

//   const AboutMenuView({
//     Key? key,
//     required this.imageUrl,
//     required this.title,
//     required this.price,
//     required this.deliveryTime,
//     required this.rating,
//     required this.description,
//     required this.modelInfo,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     MathUtils.init(context);
//     return Scaffold(
//       appBar:
//           buildAppBar(buildContext: context, screenTitle: "About This Menu"),
//       body: Padding(
//         padding: EdgeInsets.symmetric(horizontal: getWidth(24)),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Gap(8),
//             Container(
//               width: double.infinity,
//               height: getHeight(295),
//               padding: EdgeInsets.all(getSize(16)),
//               decoration: ShapeDecoration(
//                 image: DecorationImage(
//                   image: AssetImage(imageUrl),
//                   fit: BoxFit.fill,
//                 ),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(16),
//                 ),
//               ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 children: [
//                   Container(
//                     width: getHeight(30),
//                     height: getHeight(30),
//                     padding: EdgeInsets.all(getSize(5)),
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       shape: BoxShape.circle,
//                     ),
//                     child: Icon(
//                       Icons.favorite,
//                       color: Pallete.pureError,
//                       size: getSize(20),
//                     ),
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: List.generate(
//                       3,
//                       (index) => Padding(
//                         padding: EdgeInsets.only(left: getWidth(4)),
//                         child: Container(
//                           width: 32,
//                           height: 4,
//                           decoration: ShapeDecoration(
//                             color: index == 0
//                                 ? Pallete.orangePrimary
//                                 : Colors.white,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(2),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const Gap(16),
//             Text(
//               title,
//               style: TextStyles.headingH5SemiBold.copyWith(
//                 color: Pallete.neutral100,
//                 fontSize: getFontSize(FontSizes.h5),
//               ),
//             ),
//             const Gap(8),
//             Text(
//               "\$ $price",
//               style: TextStyles.headingH6Bold.copyWith(
//                 color: Pallete.orangePrimary,
//                 fontSize: getFontSize(FontSizes.h6),
//               ),
//             ),
//             const Gap(16),
//             Container(
//               height: getHeight(39),
//               width: double.infinity,
//               padding: EdgeInsets.all(getSize(8)),
//               decoration: BoxDecoration(
//                 color: const Color(0xFFFE8C00).withOpacity(0.04),
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Row(
//                     children: [
//                       Icon(
//                         Icons.attach_money_sharp,
//                         size: getSize(14),
//                         color: Pallete.orangePrimary,
//                       ),
//                       const Gap(8),
//                       Text(
//                         "Free Delivery",
//                         style: TextStyles.bodyMediumRegular.copyWith(
//                           color: Pallete.neutral60,
//                           fontSize: getFontSize(FontSizes.medium),
//                         ),
//                       ),
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Icon(
//                         Icons.access_time_filled_rounded,
//                         size: getSize(14),
//                         color: Pallete.orangePrimary,
//                       ),
//                       const Gap(8),
//                       Text(
//                         "${deliveryTime}",
//                         style: TextStyles.bodyMediumRegular.copyWith(
//                           color: Pallete.neutral60,
//                           fontSize: getFontSize(FontSizes.medium),
//                         ),
//                       ),
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Icon(
//                         Icons.star,
//                         size: getSize(14),
//                         color: Pallete.orangePrimary,
//                       ),
//                       const Gap(8),
//                       Text(
//                         "${rating}",
//                         style: TextStyles.bodyMediumRegular.copyWith(
//                           color: Pallete.neutral60,
//                           fontSize: getFontSize(FontSizes.medium),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             const Gap(16),
//             Container(
//               width: double.infinity,
//               height: 2,
//               color: const Color(0xFFEDEDED),
//             ),
//             const Gap(16),
//             Text(
//               "Description",
//               style: TextStyles.headingH5SemiBold.copyWith(
//                 color: Pallete.neutral100,
//                 fontSize: getFontSize(FontSizes.h5),
//               ),
//             ),
//             const Gap(8),
//             Text(
//               description,
//               style: TextStyles.bodyMediumRegular.copyWith(
//                 color: const Color(0xFF878787),
//                 fontSize: getFontSize(FontSizes.medium),
//               ),
//             ),
//             const Gap(18),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   "Recomended For You",
//                   style: TextStyles.bodyLargeSemiBold.copyWith(
//                     color: Pallete.neutral100,
//                     fontSize: getFontSize(FontSizes.large),
//                   ),
//                 ),
//                 Text(
//                   "See All",
//                   style: TextStyles.bodyMediumMedium.copyWith(
//                     color: Pallete.orangePrimary,
//                     fontSize: getFontSize(FontSizes.medium),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//       bottomSheet: Container(
//         padding: EdgeInsets.symmetric(horizontal: getWidth(24)).copyWith(
//           top: getHeight(16),
//           bottom: getHeight(32),
//         ),
//         height: getHeight(100),
//         width: double.infinity,
//         decoration: const BoxDecoration(
//           color: Colors.white,
//         ),
//         child: Row(
//           children: [
//             Row(
//               children: [
//                 Container(
//                   height: getSize(40),
//                   width: getSize(40),
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     border: Border.all(
//                       color: const Color(0xFFEAEAEA),
//                       width: 1,
//                     ),
//                   ),
//                   child: Icon(
//                     Icons.remove,
//                     size: getSize(24),
//                     color: Pallete.neutral100,
//                   ),
//                 ),
//                 const Gap(8),
//                 Text(
//                   '2',
//                   style: TextStyles.bodyLargeBold.copyWith(
//                     color: Pallete.neutral100,
//                   ),
//                 ),
//                 const Gap(16),
//                 Container(
//                   height: getSize(40),
//                   width: getSize(40),
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     border: Border.all(
//                       color: const Color(0xFFEAEAEA),
//                       width: 1,
//                     ),
//                   ),
//                   child: Icon(
//                     Icons.add,
//                     size: getSize(24),
//                     color: Pallete.neutral100,
//                   ),
//                 ),
//               ],
//             ),
//             const Gap(26),
//             Expanded(
//               child: DefaultButton(
//                 btnContent: "Add to Cart",
//                 btnIcon: Icons.shopping_cart_outlined,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AboutMenuView extends StatefulWidget {
  final String imageUrl;
  final String title;
  final double price;
  final int deliveryTime;
  final double rating;
  final String description;
  final ModelInfo modelInfo;

  const AboutMenuView({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.deliveryTime,
    required this.rating,
    required this.description,
    required this.modelInfo,
  }) : super(key: key);

  @override
  _AboutMenuViewState createState() => _AboutMenuViewState();
}

class _AboutMenuViewState extends State<AboutMenuView> {
  String _responseData = '';
  double? deliveryTime2;

  @override
  void initState() {
    super.initState();

    fetchData();
  }

  Future<void> fetchData() async {
    try {
      var url =
          Uri.parse('http://ec2-18-209-104-41.compute-1.amazonaws.com/predict');

      var response = await http.post(
        url,
        body: jsonEncode({
          "Delivery_person_Ratings": widget.modelInfo.Delivery_person_Ratings,
          "Vehicle_condition": widget.modelInfo.Vehicle_condition,
          "distance": widget.modelInfo.distance,
          "multiple_deliveries": widget.modelInfo.multiple_deliveries,
          "Weatherconditions": widget.modelInfo.Weatherconditions,
          "Road_traffic_density": widget.modelInfo.Road_traffic_density,
          "Festival": widget.modelInfo.Festival,
          "City": widget.modelInfo.City
        }),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        setState(() {
          _responseData = response.body;
          deliveryTime2 = double.parse(
              jsonDecode(_responseData)['estimated_delivery_time']
                  .toStringAsFixed(2));
        });

        print("----------------------");

        print(deliveryTime2 = double.parse(
            jsonDecode(_responseData)['estimated_delivery_time']
                .toStringAsFixed(2)));
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          buildAppBar(buildContext: context, screenTitle: "About This Menu"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: getWidth(24)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(8),
            Container(
              width: double.infinity,
              height: getHeight(295),
              padding: EdgeInsets.all(getSize(16)),
              decoration: ShapeDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.imageUrl),
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    width: getHeight(30),
                    height: getHeight(30),
                    padding: EdgeInsets.all(getSize(5)),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.favorite,
                      color: Pallete.pureError,
                      size: getSize(20),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      3,
                      (index) => Padding(
                        padding: EdgeInsets.only(left: getWidth(4)),
                        child: Container(
                          width: 32,
                          height: 4,
                          decoration: ShapeDecoration(
                            color: index == 0
                                ? Pallete.orangePrimary
                                : Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Gap(16),
            Text(
              widget.title,
              style: TextStyles.headingH5SemiBold.copyWith(
                color: Pallete.neutral100,
                fontSize: getFontSize(FontSizes.h5),
              ),
            ),
            const Gap(8),
            Text(
              "\$ ${widget.price}",
              style: TextStyles.headingH6Bold.copyWith(
                color: Pallete.orangePrimary,
                fontSize: getFontSize(FontSizes.h6),
              ),
            ),
            const Gap(16),
            Container(
              height: getHeight(39),
              width: double.infinity,
              padding: EdgeInsets.all(getSize(8)),
              decoration: BoxDecoration(
                color: const Color(0xFFFE8C00).withOpacity(0.04),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.attach_money_sharp,
                        size: getSize(14),
                        color: Pallete.orangePrimary,
                      ),
                      const Gap(8),
                      Text(
                        "Free Delivery",
                        style: TextStyles.bodyMediumRegular.copyWith(
                          color: Pallete.neutral60,
                          fontSize: getFontSize(FontSizes.medium),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.access_time_filled_rounded,
                        size: getSize(14),
                        color: Pallete.orangePrimary,
                      ),
                      const Gap(8),
                      Text(
                        "${deliveryTime2}",
                        style: TextStyles.bodyMediumRegular.copyWith(
                          color: Pallete.neutral60,
                          fontSize: getFontSize(FontSizes.medium),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: getSize(14),
                        color: Pallete.orangePrimary,
                      ),
                      const Gap(8),
                      Text(
                        "${widget.rating}",
                        style: TextStyles.bodyMediumRegular.copyWith(
                          color: Pallete.neutral60,
                          fontSize: getFontSize(FontSizes.medium),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Gap(16),
            Container(
              width: double.infinity,
              height: 2,
              color: const Color(0xFFEDEDED),
            ),
            const Gap(16),
            Text(
              "Description",
              style: TextStyles.headingH5SemiBold.copyWith(
                color: Pallete.neutral100,
                fontSize: getFontSize(FontSizes.h5),
              ),
            ),
            const Gap(8),
            Text(
              widget.description,
              style: TextStyles.bodyMediumRegular.copyWith(
                color: const Color(0xFF878787),
                fontSize: getFontSize(FontSizes.medium),
              ),
            ),
            const Gap(18),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recommended For You",
                  style: TextStyles.bodyLargeSemiBold.copyWith(
                    color: Pallete.neutral100,
                    fontSize: getFontSize(FontSizes.large),
                  ),
                ),
                Text(
                  "See All",
                  style: TextStyles.bodyMediumMedium.copyWith(
                    color: Pallete.orangePrimary,
                    fontSize: getFontSize(FontSizes.medium),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        padding: EdgeInsets.symmetric(horizontal: getWidth(24)).copyWith(
          top: getHeight(16),
          bottom: getHeight(32),
        ),
        height: getHeight(100),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          children: [
            Row(
              children: [
                Container(
                  height: getSize(40),
                  width: getSize(40),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color(0xFFEAEAEA),
                      width: 1,
                    ),
                  ),
                  child: Icon(
                    Icons.remove,
                    size: getSize(24),
                    color: Pallete.neutral100,
                  ),
                ),
                const Gap(8),
                Text(
                  '2',
                  style: TextStyles.bodyLargeBold.copyWith(
                    color: Pallete.neutral100,
                  ),
                ),
                const Gap(16),
                Container(
                  height: getSize(40),
                  width: getSize(40),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color(0xFFEAEAEA),
                      width: 1,
                    ),
                  ),
                  child: Icon(
                    Icons.add,
                    size: getSize(24),
                    color: Pallete.neutral100,
                  ),
                ),
              ],
            ),
            const Gap(26),
            Expanded(
              child: DefaultButton(
                btnContent: "Add to Cart",
                btnIcon: Icons.shopping_cart_outlined,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
