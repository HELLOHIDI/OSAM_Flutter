import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_recipe/components/recipe_list_item.dart';
import 'package:flutter_recipe/components/recipe_title.dart';
import 'package:flutter_recipe/components/recipe_menu.dart';
import 'package:flutter/src/rendering/flex.dart';

class RecipePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: _buildRecipeAppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              RecipeTitle(),
              RecipeMenu(),
              RecipeListItem("coffee", "Made Coffee"),
              RecipeListItem("burger", "Made burger"),
              RecipeListItem("pizza", "Made pizza"),
            ],
          ),
        ) //Padding,
        );
  }

  AppBar _buildRecipeAppBar() => AppBar(
        backgroundColor: Colors.white,
        actions: [
          Icon(
            CupertinoIcons.search,
            color: Colors.black,
          ),
          SizedBox(width: 15),
          Icon(
            CupertinoIcons.heart,
            color: Colors.redAccent,
          ),
          SizedBox(
            width: 15,
          ),
        ],
      );
}
