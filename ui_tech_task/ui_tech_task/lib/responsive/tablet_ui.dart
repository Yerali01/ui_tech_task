import 'package:flutter/material.dart';
import 'package:ui_tech_task/constants_my.dart';
import 'package:ui_tech_task/example_container_model.dart';

class TabletUi extends StatelessWidget {
  const TabletUi({super.key});

  @override
  Widget build(BuildContext context) {
    List<ExampleContainers> exampleContainers = ConstantsMy.exampleContainers;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Padding(
          padding: EdgeInsets.only(left: 16),
          child: Text(
            "Рабочие пространства",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: 32,
            ),
          ),
        ],
        leading: Padding(
          padding: EdgeInsets.only(left: 16),
          child: const Icon(
            Icons.settings,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12).copyWith(top: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Поиск",
                    hintStyle: TextStyle(
                      color: Color(0xFF656565),
                      fontSize: 20,
                    ),
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(left: 18, right: 10),
                      child: Icon(
                        Icons.search,
                      ),
                    ),
                    prefixIconColor: Color(0xFF656565),
                  ),
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              AspectRatio(
                aspectRatio: 0.1,
                child: SizedBox(
                  width: double.infinity,
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 1.5,
                    ),
                    itemCount: exampleContainers.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              colors: [
                                exampleContainers[index].color,
                                Colors.white,
                              ],
                              begin: const Alignment(-1, 0),
                              end: const Alignment(8, 0),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Align(
                                  alignment: Alignment.topRight,
                                  child: Icon(
                                    Icons.more_horiz,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  exampleContainers[index].title,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 19,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
