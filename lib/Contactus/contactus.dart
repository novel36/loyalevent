import 'package:flutter/material.dart';
import 'package:loyalevent/footer.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          children: [
            Expanded(
                child: Container(
              padding: EdgeInsets.only(top: 32),
              child: Column(
                children: [
                  Container(
                    height: 40,
                    width: 100,
                    alignment: Alignment.center,
                    child: Text(
                      "Get in touch",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Contact us for using one of your choice"),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        child: Container(
                          height: 80,
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.location_on),
                              SizedBox(
                                height: 10,
                              ),
                              Text("101 street 2714")
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Card(
                        color: Colors.pink,
                        child: Container(
                          height: 80,
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.phone),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "+251965874896",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 16.0,
                      ),
                      Card(
                        child: Container(
                          height: 80,
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.mail),
                              SizedBox(
                                height: 10,
                              ),
                              Text("testmail@mail.com")
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 32.0),
                  Container(
                    width: 650,
                    child: Column(
                      children: [
                        Container(
                          height: 60,
                          // color: Colors.blue,
                          child: TextFormField(
                            decoration: InputDecoration(
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                hintText: "Enter your name",
                                labelText: 'Your name',
                                labelStyle: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 14,
                                    fontFamily: 'AvenirLight'),
                                enabledBorder: OutlineInputBorder()),
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Container(
                          height: 60,
                          // color: Colors.blue,
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "Enter your email",
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                labelText: 'Your email',
                                labelStyle: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 14,
                                    fontFamily: 'AvenirLight'),
                                enabledBorder: OutlineInputBorder()),
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Container(
                          // color: Colors.blue,
                          child: TextField(
                            keyboardType: TextInputType.multiline,
                            maxLines: 6,
                            decoration: InputDecoration(
                                hintText: "Enter your message",
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                labelText: 'Message',
                                labelStyle: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 14,
                                    fontFamily: 'AvenirLight'),
                                enabledBorder: OutlineInputBorder()),
                          ),
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        Align(
                            alignment: Alignment.bottomRight,
                            child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.pink),
                                ),
                                onPressed: () {},
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0, vertical: 16.0),
                                  child: Text("Send Message"),
                                )))
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0)),
                  )
                ],
              ),
            )),
          ],
        ),
        SizedBox(
          height: 32,
        ),
        Footer()
      ],
    );
  }
}
