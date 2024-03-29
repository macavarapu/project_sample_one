import 'package:flutter/material.dart';
import 'package:project_sample/components/textfrom_field.dart';

import '../models/answersoptions_model.dart';

class Listviewscreen extends StatefulWidget {
 
    final List<AnswersOptions> listData;
   final String questions;
   Listviewscreen({super.key, required this.questions, required this.listData,});
   
  @override
  State<Listviewscreen> createState() => _ListviewscreenState();
}

class _ListviewscreenState extends State<Listviewscreen> {
   List<List<AnswersOptions>> listsData = [
      [AnswersOptions('Indian Ocean'), AnswersOptions('Arctic Ocean'), AnswersOptions('North Atlantic Ocean, '),AnswersOptions('Pacific Ocean,'),AnswersOptions('others'),],
      [AnswersOptions('Narendra Modi'), AnswersOptions('Jawahar Lal Nehru'), AnswersOptions('Gulzarilal Nanda'), AnswersOptions('Lal Bahadur Shastri'),AnswersOptions('others')],
      [AnswersOptions('15 August 1947'),AnswersOptions ('15 August 1957'),AnswersOptions ('15 August 1967'),AnswersOptions('15 August 1937'),AnswersOptions('others')],
      [AnswersOptions('10.4 trillion USD'),AnswersOptions ('10.3 trillion USD'),AnswersOptions ('11.4 trillion USD'),AnswersOptions('11.3 trillion USD'),AnswersOptions('others')],
      [AnswersOptions('New Delhi'),AnswersOptions ('Hyderabad'), AnswersOptions('Bangalore'),AnswersOptions('Kolkata'),AnswersOptions('others')],
    ];
    final List<String> questions=[
        "1.What is the name of the largest ocean in the world?",
         "2.Who is the current Prime Minister of India?",
         "3.When was India’s independence day?",
        "4.What is the current GDP of India?",
        "5.What is the capital of India?",
    ];
      
  @override
  Widget build(BuildContext context) {
     return Card(
      
      margin: EdgeInsets.all(10.0),
        elevation: 0,
      color: Colors.white,
      child: Column(
        children: [
          ListTile(
            title: Text(widget.questions),
          ),
          Divider(),
          ListView.builder(
            itemCount: widget.listData.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return CheckboxListTile(
                value: widget.listData[index].isSelected,
                controlAffinity: ListTileControlAffinity.leading,
                dense: true,
                 activeColor: Colors.blue,
                onChanged: (bool? value) {
                  setState(() {
                   widget.listData.forEach((element) {element.isSelected = false;});
                    widget.listData[index].isSelected = value!;
                  });
                },
                title: Text(widget.listData[index].answer),
              );
            },
          ),
          Textfromfieldscreen(),
         
        ],
      ),
       );
  }
}