import 'package:donation_app/Model/category_model.dart';
import 'package:donation_app/Model/dishes_model.dart';
import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  List<CategoryModel> categories = [];
  List<DietModel> diets = [];

  void _getCategories() {
    categories = CategoryModel.getCategories();
    diets = DietModel.getDiets();
  }

  @override
  Widget build(BuildContext context) {
    _getCategories();
    return MaterialApp(
      home: Scaffold(
        appBar: AppbarView(),
        body: DietView(categories: categories, diets: diets),
      ),
    );
  }
}

class DietView extends StatelessWidget {
  const DietView({
    super.key,
    required this.categories,
    required this.diets,
  });

  final List<CategoryModel> categories;
  final List<DietModel> diets;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppSearchBar(),
        SizedBox(height: 10),
        CategoriesView(categories: categories),
        Container(
          height: 300,
          color: Colors.white,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  height: 200,
                  width: 200,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: diets[index].color,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Image.asset(diets[index].iconPath),
                      Text(
                        diets[index].title,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'View',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) => SizedBox(
                    width: 25,
                  ),
              itemCount: diets.length),
        ),
        PopularDishesView()
      ],
    );
  }
}

class CategoriesView extends StatelessWidget {
  const CategoriesView({
    super.key,
    required this.categories,
  });

  final List<CategoryModel> categories;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft, // Aligns the content to the leading side
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment
            .start, // Aligns children to the start (leading) side
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Category',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 150,
            color: Colors.white,
            child: ListView.separated(
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => SizedBox(
                      width: 25,
                    ),
                itemBuilder: (context, index) {
                  return Container(
                    width: 100,
                    decoration: BoxDecoration(
                        color:
                            categories[index].backgroundColor.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(categories[index].iconPath),
                          ),
                        ),
                        Text(
                          categories[index].name,
                          style: TextStyle(),
                        ),
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.greenAccent[200],
      ),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.all(15),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
          hintText: 'Enter a search term',
          prefixIcon: Padding(
            padding: EdgeInsets.all(10),
            child: Icon(Icons.search),
          ),
          suffixIcon: Padding(
            padding: EdgeInsets.all(10),
            child: Icon(Icons.send),
          ),
        ),
      ),
    );
  }
}

class AppbarView extends StatelessWidget implements PreferredSizeWidget {
  const AppbarView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.amber[50],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(Icons.arrow_back),
      ),
      title: Text(
        'BreakFast',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.red,
      elevation: 0.0,
      centerTitle: true,
      actions: [
        Container(
          height: 40,
          width: 40,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.amber[50],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(Icons.menu),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}




class PopularDishesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<PopularDishesModel> dishes = PopularDishesModel.getDishes();

    return Scaffold(
      appBar: AppBar(
        title: Text('Popular Dishes'),
        backgroundColor: Colors.redAccent,
      ),
      body: ListView.builder(
        itemCount: dishes.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              gradient: dishes[index].gradientColor,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: ListTile(
              leading: Image.asset(dishes[index].imagePath, width: 50, height: 50),
              title: Text(
                dishes[index].title,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                'Delicious ${dishes[index].title}',
                style: TextStyle(color: Colors.white70),
              ),
              onTap: () {
                // Action when a dish is tapped
                print('Tapped on ${dishes[index].title}');
              },
            ),
          );
        },
      ),
    );
  }
}