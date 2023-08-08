part of asset_library;

class Stories extends StatefulWidget {
  const Stories({Key? key}) : super(key: key);
  @override
  _StoriesState createState() => _StoriesState();
}
class _StoriesState extends State<Stories> {
  double roundedCorners = 24;
  double height = 314;
  double width = 354;
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(roundedCorners),
      ),
      color: Theme.of(context).colorScheme.surface,
      child:  SizedBox(
        width: width,
        height: height,
        child:
        Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(roundedCorners),topRight: Radius.circular(roundedCorners)),
                child:
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: height/2,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: ResizeImage(AssetImage('assets/StoryImages/day63-school-bag.png'),width:500,height: 500 ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(16),
                width: MediaQuery.of(context).size.width,
                child:
                Wrap(
                  alignment: WrapAlignment.start,
                  direction: Axis.vertical,
                  spacing: 12,
                  children: <Widget>[
                    const Text(
                      "Gymnasium",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    Wrap(
                      spacing: 8,
                      children: const [
                        Text(
                          "Start",
                          style: TextStyle(
                            fontSize: 11,
                          ),
                        ),
                        Text(
                          "•",
                          style: TextStyle(
                            fontSize: 11,
                          ),
                        ),
                        Text(
                          "End",
                          style: TextStyle(
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Wrap(
                            spacing:4 ,
                            children: [
                              ActionChip(
                                label: const Text("School"),
                                backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
                                shape: const StadiumBorder(side: BorderSide.none),
                                onPressed: () {
                                  print('Edit Chip pressed');
                                },
                              ),
                              ActionChip(
                                label: const Text("Everyday"),
                                backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
                                shape: const StadiumBorder(side: BorderSide.none),
                                onPressed: () {
                                  print('Edit Chip pressed');
                                },
                              )
                            ],
                          ),
                          Container(
                              margin: const EdgeInsets.only(right: 12),
                              child: IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ]
        ),
      ) ,
    );
  }
}