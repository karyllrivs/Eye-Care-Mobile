import 'package:flutter/material.dart';

class BrandList extends StatefulWidget {
  const BrandList({super.key});

  @override
  State<BrandList> createState() => _BrandListState();
}

class _BrandListState extends State<BrandList> {
  List<Map<String, dynamic>> brands = [
    {
      "name": "Giordano",
      "image":
          "https://www.dpmallsemarang.com/wp-content/uploads/2019/07/giordano.jpg",
    },
    {
      "name": "Hangten",
      "image":
          "https://cdn.shopify.com/s/files/1/0258/6132/4905/files/hangten_mark.png",
    },
    {
      "name": "Dazzle",
      "image":
          "https://assets.sandsresortsmacao.cn/content/venetianmacao/shopping/shoppes/fashion-women/dazzle/dazzle_500x455.jpg",
    }
  ];

  bool isViewAll = false;

  void toggleViewAll() {
    isViewAll = !isViewAll;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Brands",
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: theme.colorScheme.onPrimary),
              ),
              InkWell(
                onTap: toggleViewAll,
                child: Text(
                  isViewAll ? "View Less" : "View All",
                  style: TextStyle(
                    fontSize: 12.0,
                    color: theme.colorScheme.onSurface,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            child: SingleChildScrollView(
              scrollDirection: isViewAll ? Axis.vertical : Axis.horizontal,
              child: Wrap(
                alignment: WrapAlignment.spaceAround,
                children: List.generate(brands.length, (int index) {
                  final brand = brands[index];
                  return Container(
                    width: mediaQuery.size.width * 0.3,
                    decoration: BoxDecoration(
                      border: Border.all(color: theme.colorScheme.onSecondary),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    padding: const EdgeInsets.all(10.0),
                    margin: const EdgeInsets.all(5.0),
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: theme.colorScheme.onSecondary,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                            image: DecorationImage(
                              image: NetworkImage(brand["image"]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            brand["name"],
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: theme.colorScheme.onPrimary,
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                }),
              ),
            ),
          )
        ],
      ),
    );
  }
}
