import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/colors.dart';
import 'package:food_delivery_app/utils/dimensions.dart';
import 'package:food_delivery_app/widgets/app_icon.dart';
import 'package:food_delivery_app/widgets/big_text.dart';
import 'package:food_delivery_app/widgets/expandable_text.dart';

class RecommendedFoodDetails extends StatelessWidget {
  const RecommendedFoodDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(preferredSize: Size.fromHeight(20),
              child: Container(
                child: Center(child: BigText(text: "Bird Valley",size: Dimensions.font26,)),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5,bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20)
                  )
                ),
              ),
              
            ),
            pinned: true,
            backgroundColor: Colors.blue,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("assets/image/food1.png",
              width: double.maxFinite,
              fit: BoxFit.cover,),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20),
                    child: ExpandableText(
                      text: "The first garden strawberry was grown in Brittany, France, during the late 18th century.[3] Prior to this, wild strawberries and cultivated selections from wild strawberry species were the common source of the fruit.The strawberry fruit was mentioned in ancient Roman literature in reference to its medicinal use. The French began taking the strawberry from the forest to their gardens for harvest in the 14th century. Charles V, France's king from 1364 to 1380, had 1,200 strawberry plants in his royal garden. In the early 15th century western European monks were using the wild strawberry in their illuminated manuscripts. The strawberry is found in Italian, Flemish, and German art, and in English miniatures.[citation needed] The entire strawberry plant was used to treat depressive illnesses.By the 16th century, references of cultivation of the strawberry became more common. People began using it for its supposed medicinal properties and botanists began naming the different species. In England the demand for regular strawberry farming had increased by the mid-16th century.The combination of strawberries and cream was created by Thomas Wolsey in the court of King Henry VIII.[5] Instructions for growing and harvesting strawberries showed up in writing in 1578. By the end of the 16th century three European species had been cited: F. vesca, F. moschata, and F. viridis. The garden strawberry was transplanted from the forests and then the plants would be propagated asexually by cutting off the runners.Two subspecies of F. vesca were identified: F. sylvestris alba and F. sylvestris semperflorens. The introduction of F. virginiana from eastern North America to Europe in the 17th century is an important part of history because it is one of the two species that gave rise to the modern strawberry. The new species gradually spread through the continent and did not become completely appreciated until the end of the 18th century. A French excursion journeyed to Chile in 1712, which led to the introduction of a strawberry plant with female flowers that resulted in the common strawberry.The Mapuche and Huilliche Indians of Chile cultivated the female strawberry species until 1551, when the Spanish came to conquer the land. In 1765, a European explorer recorded the cultivation of F. chiloensis, the Chilean strawberry. At first introduction to Europe, the plants grew vigorously, but produced no fruit. French gardeners in Brest and Cherbourg around the mid-18th century first noticed that when F. moschata and F. virginiana were planted in between rows of F. chiloensis, the Chilean strawberry would bear abundant and unusually large fruits. Soon after, Antoine Nicolas Duchesne began to study the breeding of strawberries and made several discoveries crucial to the science of plant breeding, such as the sexual reproduction of the strawberry which he published in 1766. Duchesne discovered that the female F. chiloensis plants could only be pollinated by male F. moschata or F. virginiana plants.[6] This is when the Europeans became aware that plants had the ability to produce male-only or female-only flowers.Duchesne determined F. ananassa to be a hybrid of F. chiloensis and F. virginiana. F. ananassa, which produces large fruits, is so named because it resembles the pineapple in smell, taste and berry shape. In England, many varieties of F. ananassa were produced, and they form the basis of modern varieties of strawberries currently cultivated and consumed.",
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(left: Dimensions.width20 * 2.5,right: Dimensions.width20 * 2.5,
            top: Dimensions.height10,bottom: Dimensions.height10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.remove,iconColor: Colors.white,backgroundColor: Colors.blue,iconSize: Dimensions.icon24,),
                BigText(text: "\$12.88 X 0 ",color: Colors.black,size: Dimensions.font26,),
                AppIcon(icon: Icons.add,backgroundColor: Colors.blue,iconColor: Colors.white,iconSize: Dimensions.icon24,),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20,
                top: Dimensions.height10,bottom: Dimensions.height10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(Dimensions.height10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: AppColors.buttonBackgroundColor
                  ),
                  child: Icon(Icons.favorite,color: Colors.blue,
                  size: Dimensions.icon24,)

                ),

                Container(
                  padding: EdgeInsets.only(top: Dimensions.height10,bottom: Dimensions.height10,left: Dimensions.width20, right: Dimensions.width20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: Colors.blue
                  ),
                  child: BigText(text: "\$28 | Add to cart",color: Colors.white,),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
