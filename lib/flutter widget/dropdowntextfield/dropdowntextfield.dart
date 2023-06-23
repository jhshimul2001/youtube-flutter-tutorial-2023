import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';

class DropDownTextfield extends StatefulWidget {
  @override
  _DropDownTextfieldState createState() => _DropDownTextfieldState();
}

class _DropDownTextfieldState extends State<DropDownTextfield> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dropdown Form"),
      ),
      body: Container(
        padding: EdgeInsets.all(15.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

              // using package =>  dropdown_textfield: ^1.0.8

              DropDownTextField(
                dropDownItemCount: 8,
                enableSearch: true,
                searchKeyboardType: TextInputType.text,
                dropDownList: const [
                  DropDownValueModel(name: 'name1', value: "value1"),
                  DropDownValueModel(
                    name: 'name2',
                    value: "value2",
                  ),
                  DropDownValueModel(name: 'name3', value: "value3"),
                  DropDownValueModel(
                    name: 'name4',
                    value: "value4",
                  ),
                  DropDownValueModel(name: 'name5', value: "value5"),
                  DropDownValueModel(name: 'name6', value: "value6"),
                  DropDownValueModel(name: 'name7', value: "value7"),
                  DropDownValueModel(name: 'name8', value: "value8"),
                ],
              ),

              SizedBox(height: 50,),

              DropdownButtonFormField(
                  hint: Text("Select country"),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)
                    )
                  ),
                  items: [
                DropdownMenuItem(child: Text("bangladesh"),value: "1",),
                DropdownMenuItem(child: Text("pakistan"),value: "2",),
                DropdownMenuItem(child: Text("india"),value: "3",),
                DropdownMenuItem(child: Text("nepal"),value: "4",),
                DropdownMenuItem(child: Text("london"),value: "5",),
                DropdownMenuItem(child: Text("africa"),value: "6",),
                DropdownMenuItem(child: Text("singapur"),value: "7",),
              ],
                  onChanged: (v){})
            ]),
      ),
    );
  }
}
