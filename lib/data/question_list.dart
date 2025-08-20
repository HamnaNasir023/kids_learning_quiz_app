import 'package:flutter_quiz_app/model/questions.dart';
import 'package:flutter_quiz_app/routes/assets_path.dart';

//index start from 0
List<Questions> questionsList = [
  //animal quiz list
  Questions(
      categoryId: 0,
      imagePath: 'assets/images/animal/cat.svg',
      options: ["Dog", "cat ", "bear", "wolf"],
      correctIndex: 1),
  Questions(
      categoryId: 0,
      imagePath: Animals.bear,
      options: ['Bear', 'Fox', 'Tiger', 'Lion'],
      correctIndex: 0),
  Questions(
      categoryId: 0,
      imagePath: Animals.elephant,
      options: ['Horse', 'Lion', 'Elephant', 'Wolf'],
      correctIndex: 2),
  Questions(
      categoryId: 0,
      imagePath: Animals.giraffe,
      options: ['Lion', 'Giraffe', 'Horse', 'Foz'],
      correctIndex: 1),
  Questions(
      categoryId: 0,
      imagePath: Animals.goat,
      options: ['Sheep', 'Wolf', 'Goat', 'Dog'],
      correctIndex: 2),
  Questions(
      categoryId: 0,
      imagePath: Animals.kangaroo,
      options: ['Kangaroo', 'Giraffe', "Fox", "Horse"],
      correctIndex: 0),
  Questions(
      categoryId: 0,
      imagePath: Animals.rabbit,
      options: ["Hen", 'Cat', "Mouse", "Rabbit"],
      correctIndex: 3),

  //flower quiz list
  Questions(
      categoryId: 1,
      imagePath: Flowers.daffodil,
      options: ["Daffodil", "Daisy ", "Sunflower", "Rose"],
      correctIndex: 0),
  Questions(
      categoryId: 1,
      imagePath: Flowers.daisy,
      options: ['Tulip', 'Lavender', 'Lily', 'Daisy'],
      correctIndex: 3),
  Questions(
      categoryId: 1,
      imagePath: Flowers.dandelion,
      options: ['Rose', 'Dandelion', 'Hibiscus', 'Daisy'],
      correctIndex: 1),
  Questions(
      categoryId: 1,
      imagePath: Flowers.jasmine,
      options: ['Jasmine', 'Marigold', 'Sunflower', 'Rose'],
      correctIndex: 0),
  Questions(
      categoryId: 1,
      imagePath: Flowers.lavender,
      options: ['lily', 'Lavender', 'Hibiscus', 'Carnation'],
      correctIndex: 1),
  Questions(
      categoryId: 1,
      imagePath: Flowers.rose,
      options: ['Tulip', 'Poppy', "Rose", "Hibiscus"],
      correctIndex: 2)

  //Seasons Questions list
  ,
  Questions(
      categoryId: 2,
      imagePath: Seasons.autumn,
      options: ["Summer", "Spring ", "Winter", "Autumn"],
      correctIndex: 3),
  Questions(
      categoryId: 2,
      imagePath: Seasons.spring,
      options: ['Autumn', 'Winter', 'Spring', 'Summer'],
      correctIndex: 2),
  Questions(
      categoryId: 2,
      imagePath: Seasons.summer,
      options: ['Autumn', 'Summer', 'Winter', 'Spring'],
      correctIndex: 1),
  Questions(
      categoryId: 2,
      imagePath: Seasons.winter,
      options: ['Winter', 'Summer', 'Spring', 'Autumn'],
      correctIndex: 0),

  //solar Sysytem

  Questions(
      categoryId: 3,
      imagePath: SolarSystem.mars,
      options: ['Mars', 'Earth', 'Jupiter', 'Mercury'],
      correctIndex: 0),
  Questions(
      categoryId: 3,
      imagePath: SolarSystem.saturn,
      options: ['Earth', 'Sun', "Saturn", "Neptune"],
      correctIndex: 2),
  Questions(
      categoryId: 3,
      imagePath: SolarSystem.sun,
      options: ["Sun", 'Satrun', "uranus", "Venus"],
      correctIndex: 0),
  Questions(
      categoryId: 3,
      imagePath: SolarSystem.neptune,
      options: ["Veneus", 'Neptune', "Earth", "Juptier"],
      correctIndex: 1),
  Questions(
      categoryId: 3,
      imagePath: SolarSystem.uranus,
      options: ["uranus", 'Earth', "Mercury", "Satrun"],
      correctIndex: 0),
  Questions(
      categoryId: 3,
      imagePath: SolarSystem.earth,
      options: ["Jupiter", 'Mercury', "Sun", "Earth"],
      correctIndex: 3),
  Questions(
      categoryId: 3,
      imagePath: SolarSystem.venus,
      options: ["Mars", 'Venus', "Jupiter", "Satrun"],
      correctIndex: 1),
  Questions(
      categoryId: 3,
      imagePath: SolarSystem.jupiter,
      options: ["Mercury", 'Earth', "Jutpier", "Mars"],
      correctIndex: 2),
  Questions(
      categoryId: 3,
      imagePath: SolarSystem.mercury,
      options: ["Vens", 'Mercury', "Satrun", "Naptune"],
      correctIndex: 3),

  //Birds List
  Questions(
      categoryId: 4,
      imagePath: Birds.bulbul,
      options: ['Eagle', 'Goose', 'Bulbul', 'Hen'],
      correctIndex: 2),
  Questions(
      categoryId: 4,
      imagePath: Birds.crow,
      options: ['Koel', 'Maina', 'Crow', 'Ostrich'],
      correctIndex: 2),
  Questions(
      categoryId: 4,
      imagePath: Birds.duck,
      options: ['Owl', 'Parrot', 'Pigeon', 'Duck'],
      correctIndex: 3),
  Questions(
      categoryId: 4,
      imagePath: Birds.eagle,
      options: ['Eagle', 'Sparrow', 'Swan', 'Vulture'],
      correctIndex: 0),
  Questions(
      categoryId: 4,
      imagePath: Birds.hen,
      options: ['Maina', 'Ostrich', 'Hen', 'Parrot'],
      correctIndex: 2),
  Questions(
      categoryId: 4,
      imagePath: Birds.koel,
      options: ['Pigeon', 'Koel', 'Sparrow', 'Swan'],
      correctIndex: 1),
  Questions(
      categoryId: 4,
      imagePath: Birds.ostrich,
      options: ['Duck', 'Ostrich', 'Owl', 'Parrot'],
      correctIndex: 1),
  Questions(
      categoryId: 4,
      imagePath: Birds.owl,
      options: ['Pigeon', 'Owl', 'Sparrow', 'Swan'],
      correctIndex: 1),
  Questions(
      categoryId: 4,
      imagePath: Birds.parrot,
      options: ['Vulture', 'Bagula', 'Parrot', 'Bulbul'],
      correctIndex: 2),
  Questions(
      categoryId: 4,
      imagePath: Birds.pigeon,
      options: ['Crow', 'Duck', 'Pigeon', 'Eagle'],
      correctIndex: 2),
  Questions(
      categoryId: 4,
      imagePath: Birds.seagull,
      options: ['Crow', 'Seagull', 'Pigeon', 'Eagle'],
      correctIndex: 1),
  Questions(
      categoryId: 4,
      imagePath: Birds.sparrow,
      options: ['Goose', 'Hen', 'Sparrow', 'Koel'],
      correctIndex: 2),
  Questions(
      categoryId: 4,
      imagePath: Birds.swan,
      options: ['Maina', 'Ostrich', 'Swan', 'Owl'],
      correctIndex: 2),

  //Occuptions
  Questions(
      categoryId: 5,
      imagePath: Occuptions.doctor,
      options: ['Engineer', 'Doctor', 'Farmer', 'Lawyer'],
      correctIndex: 1),
  Questions(
      categoryId: 5,
      imagePath: Occuptions.author,
      options: ['Pilot', 'Police', 'Teacher', 'Author'],
      correctIndex: 3),
  Questions(
      categoryId: 5,
      imagePath: Occuptions.teacher,
      options: ['Teacher', 'Vet', 'Photographer', 'Author'],
      correctIndex: 0),
  Questions(
      categoryId: 5,
      imagePath: Occuptions.police,
      options: ['Engineer', 'Pilot', 'Police', 'Barber'],
      correctIndex: 2),
  Questions(
      categoryId: 5,
      imagePath: Occuptions.farmer,
      options: ['Teacher', 'Vet', 'Farmer', 'Photographer'],
      correctIndex: 2),
  Questions(
      categoryId: 5,
      imagePath: Occuptions.carpenter,
      options: ['Farmer', 'Engineer', 'Carpenter', 'Vet'],
      correctIndex: 2),
  Questions(
      categoryId: 5,
      imagePath: Occuptions.dentist,
      options: ['Dentist', 'Carpenter', 'Electrician', 'Farmer'],
      correctIndex: 0),
  Questions(
      categoryId: 5,
      imagePath: Occuptions.engineer,
      options: ['Engineer', 'Pilot', 'Farmer', 'Lawyer'],
      correctIndex: 0),
  Questions(
      categoryId: 5,
      imagePath: Occuptions.pilot,
      options: ['Teacher', 'Pilot', 'Photographer', 'Author'],
      correctIndex: 1),
  Questions(
      categoryId: 5,
      imagePath: Occuptions.lawyer,
      options: ['Farmer', 'Carpenter', 'Electrician', 'Lawyer'],
      correctIndex: 3),
];
