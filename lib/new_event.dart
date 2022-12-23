import 'package:flutter/material.dart';

class NewEventScreen extends StatefulWidget{
  const NewEventScreen({super.key});

  @override
  State<StatefulWidget> createState() =>_NewEventScreen();

}
class _NewEventScreen extends State<NewEventScreen> {
  final TextEditingController _textEditingController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[200],
      appBar: AppBar(
        title: const Text('New Event'),
        centerTitle: true,
        backgroundColor: Colors.indigo[600],
        leading: IconButton(
          onPressed:() {
            Navigator.pop(context);
          } ,
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
               controller: _textEditingController,
               minLines: 1,
               maxLines: 5,
               style: const TextStyle(color: Colors.white),
               keyboardType: TextInputType.multiline,
               decoration:   InputDecoration(
                 labelText: 'Event',
                 prefixIcon: const Icon(
                   Icons.edit_calendar_rounded,
                   color: Colors.white,
                 ),
                 labelStyle: const TextStyle(
                   color: Colors.white,
                 ),
                 filled: true,
                 fillColor: Colors.indigo[600],
                 // icon:
                 border:  OutlineInputBorder(
                   borderSide: BorderSide.none,
                   borderRadius: BorderRadius.circular(30),

                 ),

               ),

            ),
          ),
          Builder(
            builder: (context) {
              return SizedBox(
                width: 370,
                child: ElevatedButton(
                  onPressed: (){
                    String newEventText=_textEditingController.text;
                    Navigator.of(context).pop(newEventText);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo[300],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),

                    ),
                  ),
                  child:  Text(
                    'ADD',
                    style: TextStyle(
                      fontSize: 15,
                      backgroundColor: Colors.indigo[300],
                    ),
                  ),
                ),
              );
            }
          ),
        ],
      ),
    );
  }
  
}
