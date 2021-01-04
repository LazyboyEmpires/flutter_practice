class Exercises {
  final String image, title, description, sett;
  Exercises({
    this.image,
    this.title,
    this.description,
    this.sett
  });
}

final List<Exercises> exercises = [
  Exercises(
      title: "How to be a Pistol Squat master",
      description: dummyText,
      image: "assets/images/legs.png",
      sett: "5 rep",),
  Exercises(
      title: "How to do pull up",
      description: dummyText,
      image: "assets/images/back.png",
      sett: "5 rep",),
  Exercises(
      title: "Grow your bicep biger and more",
      description: dummyText,
      image: "assets/images/bicept.jpg",
      sett: "5 rep",),
  Exercises(
      title: "10 day push up challenge",
      description: dummyText,
      image: "assets/images/pushup.png",
      sett: "5 rep",),
  Exercises(
      title: "Extreme home Abs for men",
      description: dummyText,
      image: "assets/images/abs.jpg",
      sett: "5 rep",),
  Exercises(
    title: "Pull up challenges",
    description: dummyText,
    image: "assets/images/pullupchallenge.jpg",
    sett: "5 rep",),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";