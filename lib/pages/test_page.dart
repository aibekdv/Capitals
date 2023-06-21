import 'package:flutter/material.dart';

import 'package:capitals/constants/constants.dart';
import 'package:capitals/models/models.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key, required this.suroo});
  final List<QuestionModel> suroo;
  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  int indexText = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          Container(
            height: 30,
            width: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '0',
                  style: AppTextSyle.num1Style,
                ),
                Text(
                  '32',
                  style: AppTextSyle.num2Style,
                ),
                Text(
                  '0',
                  style: AppTextSyle.num3Style,
                ),
              ],
            ),
          ),
          const SizedBox(width: 40),
          const Text(
            '3',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          const SizedBox(width: 30),
          const Icon(
            Icons.favorite,
            color: Colors.red,
          ),
          const Icon(Icons.favorite, color: Colors.red),
          const Icon(Icons.favorite, color: Colors.red),
          const Icon(Icons.more_vert),
        ],
      ),
      body: Column(
        children: [
          Slider(
            activeColor: Colors.black,
            value: 200,
            onChanged: (v) {},
            min: 0,
            max: 200,
          ),
          Text(
            widget.suroo[indexText].text,
            style: AppTextSyle.capitalsStyle,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Image.asset(
              'assets/capitals/${widget.suroo[indexText].image}.jpeg',
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            // flex: 2,
            child: GridView.builder(
              padding: const EdgeInsets.only(
                left: 5,
                right: 5,
              ),
              // physics: NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.6,
              ),
              itemCount: 4,
              itemBuilder: ((context, index) {
                return Card(
                  color: Colors.grey[400],
                  child: InkWell(
                    onTap: () {
                      // onTap(jooptor[index].isTrue);
                    },
                    child: Center(
                      child: Text(widget.suroo[indexText].answers.toString()),
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
