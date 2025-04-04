import 'package:flutter/material.dart';

class BrokerRegistration extends StatefulWidget {
  const BrokerRegistration({super.key});

  @override
  State<BrokerRegistration> createState() => _BrokerRegistrationState();
}

class _BrokerRegistrationState extends State<BrokerRegistration> {
  final _formKey = GlobalKey<FormState>();
  String? selectedBroker;
  bool _passwordVisible = false;
  bool _confirmPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Broker Registration'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                      hint: const Text('Select Broker'),
                      isExpanded: true,
                      value: selectedBroker,
                      items: <String>[
                        'Shoonya',
                        'Zerodha',
                      ].map<DropdownMenuItem<String>>((String value){
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (value){
                        setState(() {
                          selectedBroker = value;
                        });
                      }
                  ),
                ),
              ),
              const SizedBox(height: 16),

              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Username',
                ),
              ),
              const SizedBox(height: 16),

              TextFormField(
                obscureText: !_passwordVisible,
                decoration: InputDecoration(
                  hintText: 'Password',
                  suffixIcon: IconButton(
                    icon: Icon(
                      _passwordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _passwordVisible = !_passwordVisible;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(height: 16),

              TextFormField(
                obscureText: !_confirmPasswordVisible,
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
                  suffixIcon: IconButton(
                    icon: Icon(
                      _confirmPasswordVisible
                      ?Icons.visibility:Icons.visibility_off
                    ),
                    onPressed: () {
                        setState(() {
                          _confirmPasswordVisible =!_confirmPasswordVisible;
                        });
                    },
                  ),
                ),
              ),
              const SizedBox(height: 16),

              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'TOTP Hash',
                ),
              ),
              const SizedBox(height: 16),

              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'API Key',
                ),
              ),
              const SizedBox(height: 30),

              ElevatedButton(
                onPressed: (){

                },

                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  minimumSize: const Size(double.infinity, 52),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(26),
                  ),
                ),
                child: const Text(
                  'Connect Account',
                  style: TextStyle(fontSize: 16,color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
