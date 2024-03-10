import 'package:travel_booking_app/resources/assets/image_assets.dart';

class CategoriesModel {
  final String title;
  final String image;
  final double starRating;
  final String description;

  CategoriesModel({
    required this.title,
    required this.image,
    required this.description,
    required this.starRating,
  });
}

List categoriesList = [
  CategoriesModel(
    title: "Deserts",
    image: ImageAssets.kCategory1,
    description:
        "Deserts are dry, barren areas of land where little precipitation occurs and, consequently, living conditions are hostile for plant and animal life. The lack of vegetation exposes the unprotected surface of the ground to the processes of denudation. About one-third of the land surface of the world is arid or semi-arid. This includes much of the polar regions where little precipitation occurs and which are sometimes called polar deserts or cold deserts.",
    starRating: 4.5,
  ),
  CategoriesModel(
    title: "Mountains",
    image: ImageAssets.kCategory2,
    description:
        "Mountains are formed through tectonic forces or volcanism. These forces can locally raise the surface of the earth. Mountains erode slowly through the action of rivers, weather conditions, and glaciers. A few mountains are isolated summits, but most occur in huge mountain ranges. High elevations on mountains produce colder climates than at sea level. These colder climates strongly affect the ecosystems of mountains: different elevations have different plants and animals. Because of the less hospitable terrain and climate, mountains tend to be used less for agriculture and more for resource extraction, such as mining and logging, and recreation, such as mountain climbing and skiing. The highest mountain on Earth is Mount Everest in the Himalayas of Asia, whose summit is 8,850 m (29,035 ft) above mean sea level. The highest known mountain on any planet in the Solar System is Olympus Mons on Mars at 21,171 m (69,459 ft).",
    starRating: 3.9,
  ),
  CategoriesModel(
    title: "Forests",
    image: ImageAssets.kCategory3,
    description:
        "Forests are a complex ecosystem which is predominantly composed of trees that have a high density of leaves. The trees of a forest form a closed canopy, which creates a microclimate suitable for many plants and animals. The forests of Earth are affected by many forms of pollution, deforestation, and forest degradation, but we can still save them. Forests are the lungs of the Earth. They absorb carbon dioxide and produce oxygen. They are home to many different species of plants and animals. They are also important for the climate of the Earth. They are important for the water cycle. They protect the soil. They are important for the people who live near them. They are important for the whole world. We need to protect the forests of the Earth.",
    starRating: 4.8,
  ),
  CategoriesModel(
    title: "Pyramids",
    image: ImageAssets.kPicture1,
    description:
        "Pyramids are large structures with four triangular sides that meet at a point. The base of a pyramid can be trilateral, quadrilateral, or of any polygon shape. As such, a pyramid has at least three outer triangular surfaces (at least four faces including the base). The square pyramid, with a square base and four triangular outer surfaces, is a common version. A pyramid's design, with the majority of the weight closer to the ground, means that less material higher up on the pyramid will be pushing down from above. This allowed early civilizations to create monumental structures by basing the construction off of the mathematics of a pyramid. The largest pyramid by volume is the Great Pyramid of Cholula, in the Mexican state of Puebla. The Great Pyramid of Cholula, also known as Tlachihualtepetl, is a huge complex located in Cholula, Puebla, Mexico. It is the largest archaeological site of a pyramid (temple) in the New World, as well as the largest pyramid known to exist in the world today. The pyramid stands 55 metres (180 ft) above the surrounding plain, and in its final form it measured 400 by 400 metres (1,300 by 1,300 ft). The pyramid is a temple that traditionally has been viewed as having been dedicated to the god Quetzalcoatl. The architectural style of the building was linked closely to that of Teotihuacan in the Valley of Mexico, although influence from the Gulf Coast also is evident, especially from El Tajín. The pyramid was built in four stages, starting from the 3rd century BCE through the 9th century CE, and was dedicated to the deity Quetzalcoatl. It has a base of 450 by 450 metres (1,480 by 1,480 ft) and a height of 66 m (217 ft).",
    starRating: 3.6,
  ),
];
