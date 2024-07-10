import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:smart_pay/view/widgets/other_buttons.dart';
import '../widgets/bottom_indicator.dart';
import '../widgets/custom_button.dart';

class IDPage extends StatefulWidget {
  const IDPage({super.key});

  @override
  State<IDPage> createState() => _IDPageState();
}

class _IDPageState extends State<IDPage> {
  ///The buttom sheet
  final List<Map<String, String>> countries = [
    {'name': 'United States', 'flag': "assets/images/flags/united_states.png"},
    {
      'name': 'United Kingdom',
      'flag': 'assets/images/flags/united_kingdom.png'
    },
    {'name': 'Singapore', 'flag': 'assets/images/flags/singapore.png'},
    {'name': 'China', 'flag': 'assets/images/flags/china.png'},
    {'name': 'Netherlands', 'flag': 'assets/images/flags/netherlands.png'},
    {'name': 'Indonesia', 'flag': 'assets/images/flags/indonesia.png'},
    {'name': 'Singapore', 'flag': 'assets/images/flags/singapore.png'},
    {'name': 'China', 'flag': 'assets/images/flags/china.png'},
    {'name': 'Singapore', 'flag': 'assets/images/flags/singapore.png'},
    {'name': 'China', 'flag': 'assets/images/flags/china.png'},
  ];

  final List<String> countryNameAbbreviation = [
    'US',
    'GB',
    'SG',
    'CN',
    'NL',
    'ID',
    'SG',
    'CN',
    'SG',
    'CN'
  ];

  List<Map<String, String>>? filteredCountries;
  TextEditingController searchController = TextEditingController();
  TextEditingController selectCountryController = TextEditingController();

  int? indNumber;
  int? countryInd;
  Image? prefixImage;

  @override
  void initState() {
    super.initState();
    filteredCountries = List.from(countries); // Initialize with all countries
    searchController.addListener(_filterCountries);
  }

  void _filterCountries() {
    final query = searchController.text.toLowerCase();
    setState(() {
      filteredCountries = countries
          .where((country) => country['name']!.toLowerCase().contains(query))
          .toList();
    });
  }

  void _showCountryPicker(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(40.0),
        ),
      ),
      isScrollControlled: true,
      builder: (BuildContext context) {
        return DraggableScrollableSheet(
          initialChildSize: 0.7,
          expand: false,
          builder: (BuildContext context, ScrollController scrollController) {
            return Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(25.0),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 56,
                            width: 327,
                            child: TextField(
                              controller: searchController,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: const Color(0xffF9FAFB),
                                prefixIcon:
                                    Image.asset('assets/images/search.png'),
                                labelText: 'Search',
                                labelStyle: const TextStyle(
                                    color: Color(0xff6B7280),
                                    fontFamily: 'SFPRODISPLAY',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        TextButton(
                          onPressed: () {
                            searchController.clear();
                            setState(() {
                              filteredCountries = List.from(countries);
                            });
                            Navigator.pop(context);
                          },
                          child: const Text(
                            'Cancel',
                            style: TextStyle(
                                color: Color(0xff111827),
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'SFPRODISPLAY'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: ListView.builder(
                        controller: scrollController,
                        itemCount: filteredCountries!.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            hoverColor: const Color(0xffF9FAFB),
                            leading:
                                //Text(filteredCountries![index]['flag'] ?? ''),
                                Image.asset(filteredCountries![index]['flag']!),
                            title: Row(
                              children: [
                                Text(
                                  countryNameAbbreviation[index],
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'SFPRODISPLAY',
                                      color: Color(0xff6B7280)),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  filteredCountries![index]['name'] ?? '',
                                  style: const TextStyle(
                                      color: Color(0xff111827),
                                      fontFamily: 'SFPRODISPLAY',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                            onTap: () {
                              Navigator.pop(
                                  context, filteredCountries![index]['name']);
                              indNumber = index;
                              countryInd = indNumber;
                              prefixImage = Image.asset(
                                  filteredCountries![indNumber!]['flag']!);
                              print('THIS IS THE INDEX $index');
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    ).then((selectedCountry) {
      if (selectedCountry != null) {
        setState(() {
          selectCountryController.text =
              " ${countryNameAbbreviation[countryInd!]}  ${filteredCountries![indNumber!]['name']!}";
        });
        // name should appear in text field
      }
    });
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      // appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              backButton(),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Hey there! tell us a bit",
                style: Theme.of(context).textTheme.displayLarge,
              ),
              Text.rich(
                TextSpan(
                    text: "about ",
                    style: Theme.of(context).textTheme.displayLarge,
                    children: const <TextSpan>[
                      TextSpan(
                          text: "yourself",
                          style: TextStyle(
                            fontFamily: "SFPRODISPLAY",
                            fontWeight: FontWeight.w600,
                            fontSize: 24,
                            color: Color(0xff0A6375),
                          )),
                    ]),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xffF9FAFB),
                  labelText: 'Full name',
                  labelStyle: Theme.of(context).textTheme.bodySmall,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(16)),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 16.0,
              ),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xffF9FAFB),
                  labelText: 'Username',
                  labelStyle: Theme.of(context).textTheme.bodySmall,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(16)),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 16.0,
              ),
              TextField(
                controller: selectCountryController,
                readOnly: true,
                decoration: InputDecoration(
                  prefix: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 9, 0),
                    child: Container(
                      child: prefixImage,
                    ),
                  ), //prefixImage,
                  filled: true,
                  fillColor: const Color(0xffF9FAFB),
                  labelText: 'Select Country',
                  labelStyle: Theme.of(context).textTheme.bodySmall,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(16)),
                  suffixIcon: InkWell(
                    onTap: () {
                      _showCountryPicker(context);
                    },
                    child: SvgPicture.asset(
                      "assets/images/chevron-bottom.svg",
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 16.0,
              ),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xffF9FAFB),
                  labelText: 'Password',
                  labelStyle: Theme.of(context).textTheme.bodySmall,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(16)),
                  suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                      child: _obscurePassword
                          ? Image.asset("assets/images/eye_on.png")
                          : SvgPicture.asset(
                              "assets/images/eye_off.svg",
                              fit: BoxFit.scaleDown,
                            )),
                ),
                obscureText: _obscurePassword,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                label: "Continue",
                onPressed: () {
                  Get.toNamed('/create_pin');
                  // Handle sign in logic here
                  // ScaffoldMessenger.of(context).showSnackBar(
                  //   SnackBar(content: Text('Email: $email')),
                  // );
                },
                width: MediaQuery.of(context).size.width,
              ),
              const SizedBox(
                height: 100,
              ),
              const SizedBox(
                height: 50,
              ),
              Align(alignment: Alignment.center, child: bottomIndicator())
            ],
          ),
        ),
      ),
    ));
  }
}
