import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:simple_horizontal_stepper/horizontal_stepper.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // This is the sample data for the horizontal stepper

    
    
    var tstyle = TextStyle(fontWeight: FontWeight.bold);
    return Scaffold(
      appBar: AppBar(),
      body:
       Center(
        child: Container(
          height: 680,
          width: 330,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Color.fromARGB(255, 229, 158, 52))),
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Wrap(
              direction: Axis.vertical,
              spacing:20,
              children: [
                Row(
                  children: [
                    Text(
                  "Order id : ",
                  style: tstyle,
                ),
                Text('6236637'),
                  ],
                ),
                // Divider(
                //   thickness: 2,
                //   color: Colors.black,
                // ),
                Row(
                  children: [
                    Wrap(direction: Axis.vertical, children: [
                      Text(
                        "Pickup date: ",
                        style: tstyle,
                      ),
                      Text("DD/MM/YYYY")
                    ]),
                    SizedBox(
                      width: 30,
                    ),
                    Wrap(direction: Axis.vertical, children: [
                      Text(
                        "Items:",
                        style: tstyle,
                      ),
                      Text("5")
                    ]),
                  ],
                ),
                Wrap(spacing: 10, direction: Axis.vertical, children: [
                  Text(
                    "Delivery Method",
                    style: tstyle,
                  ),
                  Text("Regular pickup and delivery")
                ]),
                Text(
                  "Order Summery",
                  style: tstyle,
                ),
                Container(
                  height: 200,
                  width: 300,
                  // color: Colors.amber,
                  child: SingleChildScrollView(
                    child: Wrap(
                      direction: Axis.vertical,
                      spacing: 20,
                      children: [
                        data("ddtJeansd", "1", "78"),
                        data("Jeans", "1", "78"),
                        data("Jeans", "1", "78"),
                        data("Jeans", "1", "78"),
                        data("Jeans", "1", "78"),
                        data("Jeans", "1", "78"),
                        data("Jeans", "1", "78"),
                        data("Jeans", "1", "78"),
                        data("Jeans", "1", "78"),
                        data("Jeans", "1", "78"),
                        data("Jeans", "1", "78"),
                        data("Jeans", "1", "78"),
                        data("Jeans", "1", "78"),
                        data("Jeans", "1", "78"),
                        data("Jeans", "1", "78"),
                        data("Jeans", "1", "78"),
                        data("Jeans", "1", "78"),
                        data("Jeans", "1", "78"),
                        data("Jeans", "1", "78"),
                        data("Jeans", "1", "78"),
                        data("Jeans", "1", "78"),
                        data("Jeans", "1", "78"),
                        data("Jeans", "1", "78"),
                        data("Jeans", "1", "78"),
                        data("Jeans", "1", "78"),
                        data("Jeans", "1", "78"),
                        data("Jeans", "1", "78"),
                        data("Jeans", "1", "78"),
                      ],
                    ),
                  ),
                ),
                Wrap(spacing: 10, children: [
                  Text(
                    "Total amount",
                    style: tstyle,
                  ),
                  Text("148")
                ]),
                Container(
                  height: 72,
                  width: 300,
                  child: Stepper(
                    
                    type: StepperType.horizontal,
                    steps: getSteps(),
                  ),
                ),
                Spacer(),
                ElevatedButton(onPressed: () {}, child: Text("Cancel"))
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Step> getSteps() => [
        Step(title: Text('Recieved'), content: Container()),
        Step(title: Text('Picked'), content: Container()),
        Step(title: Text('Deliver'), content: Container()),
      
      ];

  Widget data(String name, String count, String price) => Wrap(
        direction: Axis.horizontal,
        spacing: 30,
        children: [
          Container(
            height: 17,
            width: 60,
            child: Text(name)),
          Container(
            height: 17,
            width: 45,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(child: Text(count)),
          ),
          Text("Rs. " + price)
        ],
      );
}
