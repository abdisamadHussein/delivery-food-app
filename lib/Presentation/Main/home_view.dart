import 'package:flash_food/Core/Routes/routes_name.dart';
import 'package:flash_food/Core/app_colors.dart';
import 'package:flash_food/Core/assets_constantes.dart';
import 'package:flash_food/Core/font_size.dart';
import 'package:flash_food/Core/response_conf.dart';
import 'package:flash_food/Core/text_styles.dart';
import 'package:flash_food/Presentation/Base/food_item.dart';
import 'package:flash_food/Presentation/Foods/Views/about_menu_view.dart';
import 'package:flash_food/Presentation/Models/category_model.dart';
import 'package:flash_food/Presentation/Models/food_item_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

List<FoodItemData> foodItems = [
  FoodItemData(
      imageUrl: AssetsConstants.ordinaryBurger,
      itemName: "Ordinary Burgers",
      rating: 4.9,
      distance: 190,
      price: 17230,
      deliveryInfo: "Free Delivery",
      preparationTime: 30,
      description: "Delicious burgers with fresh ingredients, served hot.",
      modelInfo: ModelInfo(
        Delivery_person_Ratings: 4.6,
        Vehicle_condition: 2,
        distance: 0.2,
        multiple_deliveries: 1,
        Weatherconditions: 'Sunny',
        Road_traffic_density: 'Jam ',
        Festival: 'No',
        City: 'Urban ',
      )),
  FoodItemData(
      imageUrl: AssetsConstants.chips,
      itemName: "Potato Chips",
      rating: 4.5,
      distance: 100,
      price: 500,
      deliveryInfo: "Free Delivery",
      preparationTime: 10,
      description: "Crunchy potato chips lightly salted.",
      modelInfo: ModelInfo(
        Delivery_person_Ratings: 4.4,
        Vehicle_condition: 3,
        distance: 0.1,
        multiple_deliveries: 1,
        Weatherconditions: 'Fog',
        Road_traffic_density: 'Medium ',
        Festival: 'No',
        City: 'Uburban ',
      )),
  FoodItemData(
      imageUrl: AssetsConstants.coffee,
      itemName: "Cappuccino",
      rating: 4.7,
      distance: 200,
      price: 800,
      deliveryInfo: "Free Delivery",
      preparationTime: 5,
      description: "A creamy cappuccino with a hint of cinnamon.",
      modelInfo: ModelInfo(
        Delivery_person_Ratings: 5.9,
        Vehicle_condition: 1,
        distance: 0.02,
        multiple_deliveries: 0,
        Weatherconditions: 'Sunny',
        Road_traffic_density: 'Low',
        Festival: 'No',
        City: 'Urbarn ',
      )),
];

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: getHeight(250),
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              horizontal: getWidth(24),
            ).copyWith(
              top: MediaQuery.of(context).viewPadding.top,
            ),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AssetsConstants.homeTopBackgroundImage),
                    fit: BoxFit.fill)),
            child: Padding(
              padding:
                  EdgeInsets.only(top: getHeight(20), bottom: getHeight(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Your Location",
                                style: TextStyles.bodyMediumRegular.copyWith(
                                    color: Colors.white,
                                    fontSize: getFontSize(FontSizes.medium)),
                              ),
                              const Gap(8),
                              const Icon(
                                Icons.keyboard_arrow_down_outlined,
                                color: Colors.white,
                                size: 16,
                              )
                            ],
                          ),
                          const Gap(8),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: Colors.white,
                                size: getSize(24),
                              ),
                              const Gap(8),
                              Text(
                                "New York City",
                                style: TextStyles.bodyMediumSemiBold.copyWith(
                                    color: Colors.white,
                                    fontSize: getFontSize(FontSizes.medium)),
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () =>
                                Navigator.pushNamed(context, RoutesName.search),
                            child: Container(
                              height: getSize(40),
                              width: getSize(40),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.white, width: 1)),
                              child: Icon(
                                Icons.search,
                                color: Colors.white,
                                size: getSize(24),
                              ),
                            ),
                          ),
                          const Gap(16),
                          InkWell(
                            onTap: () => Navigator.pushNamed(
                                context, RoutesName.notification),
                            child: Container(
                              height: getSize(40),
                              width: getSize(40),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.white, width: 1)),
                              child: Icon(
                                Icons.notifications_none_rounded,
                                color: Colors.white,
                                size: getSize(24),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  const Gap(16),
                  Text(
                    "Provide the best \nfood for you",
                    style: TextStyles.headingH4SemiBold.copyWith(
                        color: Pallete.neutral10,
                        fontSize: getFontSize(FontSizes.h4)),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: getWidth(24)),
            child: Column(
              children: [
                const Gap(26),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Find by Category",
                      style: TextStyles.bodyLargeSemiBold.copyWith(
                          color: Pallete.neutral100,
                          fontSize: getFontSize(FontSizes.large)),
                    ),
                    Text(
                      "See All",
                      style: TextStyles.bodyMediumMedium.copyWith(
                          color: Pallete.orangePrimary,
                          fontSize: getFontSize(FontSizes.medium)),
                    )
                  ],
                ),
                const Gap(18),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: categories
                        .asMap()
                        .map((key, category) => MapEntry(
                            key,
                            Container(
                              width: getSize(65),
                              height: getSize(65),
                              padding: const EdgeInsets.all(8),
                              decoration: ShapeDecoration(
                                shadows: const [
                                  BoxShadow(
                                    color: Color(0x0A111111),
                                    blurRadius: 24,
                                    offset: Offset(0, 4),
                                    spreadRadius: 0,
                                  )
                                ],
                                color: key == 0
                                    ? Pallete.orangePrimary
                                    : Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(category.link),
                                  const Gap(4),
                                  Text(
                                    category.designation.toString(),
                                    style: TextStyles.bodyMediumMedium.copyWith(
                                        color: key == 0
                                            ? Colors.white
                                            : Pallete.neutral60),
                                  )
                                ],
                              ),
                            )))
                        .values
                        .toList()),

                Column(
                  children: [
                    // Your existing code for the category section here...

                    const Gap(24),

                    // Food items section
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: (foodItems.length / 2).ceil(),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 16.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: FoodItem(
                                  foodItem: foodItems[index * 2],
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => AboutMenuView(
                                          imageUrl:
                                              foodItems[index * 2].imageUrl,
                                          title: foodItems[index * 2].itemName,
                                          price: foodItems[index * 2].price,
                                          deliveryTime: foodItems[index * 2]
                                              .preparationTime,
                                          rating: foodItems[index * 2].rating,
                                          description:
                                              foodItems[index * 2].description,
                                          modelInfo:
                                              foodItems[index * 2].modelInfo,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),

                              const SizedBox(
                                  width: 16), // Adjust spacing between items
                              Expanded(
                                child: index * 2 + 1 < foodItems.length
                                    ? FoodItem(
                                        foodItem: foodItems[index * 2 + 1],
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  AboutMenuView(
                                                imageUrl: foodItems[index * 2]
                                                    .imageUrl,
                                                title: foodItems[index * 2 + 1]
                                                    .itemName,
                                                price: foodItems[index * 2 + 1]
                                                    .price,

                                                deliveryTime:
                                                    foodItems[index * 2 + 1]
                                                        .preparationTime,
                                                rating: foodItems[index * 2 + 1]
                                                    .rating,
                                                description:
                                                    foodItems[index * 2 + 1]
                                                        .description,
                                                modelInfo:
                                                    foodItems[index * 2 + 1]
                                                        .modelInfo,
                                                // Pass other properties here
                                              ),
                                            ),
                                          );
                                        },
                                      )
                                    : Container(), // To handle odd number of items
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),

                // Padding(
                //   padding: EdgeInsets.symmetric(horizontal: getWidth(24)),
                //   child: Column(
                //     children: [
                //       // Your existing code for the category section here...

                //       const Gap(24),

                //       // Food items section
                //       ListView.builder(
                //         shrinkWrap: true,
                //         physics: NeverScrollableScrollPhysics(),
                //         itemCount: foodItems.length,
                //         itemBuilder: (context, index) {
                //           return Padding(
                //             padding: const EdgeInsets.only(bottom: 16.0),
                //             child: FoodItem(foodItem: foodItems[index]),
                //           );
                //         },
                //       ),
                //     ],
                //   ),
                // )
                // const Gap(24),
                // const Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     FoodItem(),
                //     FoodItem(),
                //   ],
                // ),
                // const Gap(16),
              ],
            ),
          )
        ],
      ),
    );
  }
}
