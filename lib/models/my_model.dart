class MyModel {
  final String img;
  final String name;
  final bool batch;
  final void Function()? onTap;

  MyModel({
    required this.img,
    required this.name,
    this.batch = false,
    this.onTap,
  });
}
