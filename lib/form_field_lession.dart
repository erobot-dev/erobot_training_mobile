import 'package:flutter/material.dart';

class FormFieldLession extends StatefulWidget {
  const FormFieldLession({Key? key}) : super(key: key);

  @override
  _FormFieldLessionState createState() => _FormFieldLessionState();
}

class _FormFieldLessionState extends State<FormFieldLession> {
  final _formKey = GlobalKey<FormState>();
  late String name;
  late String major;
  late String age;

  @override
  void initState() {
    name = '';
    major = '';
    age = '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Field Lession'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(height: 16),
              TextFormField(
                onSaved: (val) {
                  setState(() {
                    name = val ?? '';
                  });
                },
                validator: (lastName) {
                  if (lastName?.isNotEmpty == true)
                    return null;
                  else
                    return 'last name required';
                },
                decoration: InputDecoration(
                  hintText: 'Last name',
                  filled: true,
                  fillColor: Colors.grey,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black, width: 2.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                onSaved: (val) {
                  setState(() {
                    major = val ?? '';
                  });
                },
                validator: (value) {
                  if (value?.isNotEmpty == true)
                    return null;
                  else
                    return 'last name required';
                },
                decoration: InputDecoration(
                  hintText: 'Major',
                  filled: true,
                  fillColor: Colors.grey,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black, width: 2.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                onSaved: (val) {
                  setState(() {
                    age = val ?? '';
                  });
                },
                validator: (value) {
                  if (value?.isNotEmpty == true)
                    return null;
                  else
                    return 'Age required';
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Age',
                  filled: true,
                  fillColor: Colors.grey,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black, width: 2.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),
              SizedBox(height: 16),
              InkWell(
                child: Container(
                  alignment: Alignment.center,
                  height: 48,
                  width: 150,
                  color: Colors.red.withOpacity(0.3),
                  child: Text('Submit'),
                ),
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState?.save();
                  } else
                    print('Error');
                },
              ),
              Text(name),
              Text(major),
              Text('$age'),
            ],
          ),
        ),
      ),
    );
  }
}
/*

Form 
TextForm & TextFormField

*/