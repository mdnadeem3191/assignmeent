import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Sales extends StatelessWidget {
  Sales({Key? key}) : super(key: key);
  final List<Map> payment = [
    {"payment": "55,000"},
    {"payment": "27,000"},
    {"payment": "38,000"},
    {"payment": "76,000"},
    {"payment": "55,000"},
    {"payment": "98,000"},
    {"payment": "11,000"},
    {"payment": "55,000"},
    {"payment": "25,000"},
    {"payment": "76,000"},
  ];

  @override
  Widget build(BuildContext context) {
    double height50 = MediaQuery.of(context).size.height / 17.05;

    double height15 = MediaQuery.of(context).size.height / 56.838;
    double height20 = MediaQuery.of(context).size.height / 42.62;
    return SingleChildScrollView(
        child: Column(
      children: [
        Container(
          height: height50 + height20,
          padding: EdgeInsets.symmetric(
              horizontal: height20 / 2, vertical: height20 / 2),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18))),
                ),
              ),
              SizedBox(
                width: height15,
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.filter_list,
                    size: 30,
                  )),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: height15, vertical: height15 / 3),
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(
                          vertical: height15 / 4, horizontal: height15 / 3),
                      height: height20 * 2,
                      width: height50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey)),
                      child: const Center(
                          child: Icon(
                        Icons.money_rounded,
                        size: 28,
                      ))),
                  SizedBox(
                    width: (height20 / 5) * 2,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "₹25,000.00",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "cash",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.normal),
                      ),
                    ],
                  )
                ],
              ),
              // const VerticalDivider(color: Colors.grey, thickness: 2),
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(
                          vertical: height15 / 3, horizontal: 5),
                      height: height20 * 2,
                      width: height50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey)),
                      child: const Center(
                          child: Icon(
                        Icons.payment,
                        size: 28,
                      ))),
                  const SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "₹10,000.00",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "online",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.normal),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          color: const Color.fromARGB(255, 238, 241, 245),
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(
                    horizontal: height20 / 2, vertical: height20 / 4),
                height: height50 * 3 + height15 + height20 / 4,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 2,
                      color: const Color(0xffd8dbe2),
                    )),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: height20 / 2),
                      margin: EdgeInsets.symmetric(
                          horizontal: height20 / 2, vertical: height20 / 2),
                      height: height50,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 238, 241, 245),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Invoice No: ${index + 1}",
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            DateFormat("yyyy-MM-dd")
                                .format(DateTime.now())
                                .toString(),
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: height20 / 2),
                      margin: EdgeInsets.symmetric(horizontal: height20 / 2),
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Customer",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "+91 8674563257",
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                          Text(
                            payment[index]["payment"],
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      indent: height50 / 2,
                      endIndent: height50 / 2,
                      thickness: 1,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: height20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Created By: Self",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black.withOpacity(0.7),
                              )),
                          Text("Payment mode: Online",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black.withOpacity(0.7),
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        )
      ],
    ));
  }
}
