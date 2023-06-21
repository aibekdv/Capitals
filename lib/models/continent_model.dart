import 'package:flutter/material.dart';
import 'package:capitals/constants/constants.dart';

class Continents {
  const Continents({
    required this.name,
    required this.image,
    required this.color,
  });
  final String name;
  final String image;
  final Color color;
}

const Continents asia =
    Continents(name: 'Asia', image: 'asia', color: AppColors.asiaColor);
const Continents africa =
    Continents(name: 'Africa', image: 'africa', color: AppColors.africaColor);
const Continents northAmerica = Continents(
    name: 'North America',
    image: 'northAmerica',
    color: AppColors.northAmericaColor);
const Continents southAmerica = Continents(
    name: 'South America',
    image: 'southAmerica',
    color: AppColors.southAmericaColor);
const Continents australia = Continents(
    name: 'Australia', image: 'australia', color: AppColors.australiaColor);
const Continents europe =
    Continents(name: 'Europe', image: 'europe', color: AppColors.europeColor);

List<Continents> continentsList = [
  asia,
  africa,
  northAmerica,
  southAmerica,
  australia,
  europe,
];
