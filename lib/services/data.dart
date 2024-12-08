import 'package:news_app/models/category_model.dart';

List<CategoryModel> getCategories(){ //creates a function

  List<CategoryModel> category=[]; //creates an empty list
  CategoryModel categoryModel= new CategoryModel(); //creates an instance of CategoryModel

  categoryModel.categoryName="Business";
  categoryModel.image="Assets/business.jpeg";
  category.add(categoryModel); //Adds the categoryModel object to the category list.
  categoryModel= new CategoryModel(); //Reinitializes categoryModel to a new, empty instance.

  categoryModel.categoryName="Entertainment";
  categoryModel.image="Assets/entertainment.jpeg";
  category.add(categoryModel);
  categoryModel= new CategoryModel();

  categoryModel.categoryName="General";
  categoryModel.image="Assets/general.jpg";
  category.add(categoryModel);
  categoryModel= new CategoryModel();

  categoryModel.categoryName="Health";
  categoryModel.image="Assets/health.jpeg";
  category.add(categoryModel);
  categoryModel= new CategoryModel();

  categoryModel.categoryName="Science";
  categoryModel.image="Assets/science.jpeg";
  category.add(categoryModel);
  categoryModel= new CategoryModel();

  categoryModel.categoryName="Sports";
  categoryModel.image="Assets/sports.jpg";
  category.add(categoryModel);
  categoryModel= new CategoryModel();

  return category;
}