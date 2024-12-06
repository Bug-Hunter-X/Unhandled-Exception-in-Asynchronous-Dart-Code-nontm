```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final data = jsonDecode(response.body);
        print(data);
      } catch (jsonError) {
        print('Error decoding JSON: $jsonError');
        //Handle the JSON decoding error
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } on Exception catch (e) {
    //Improved Exception Handling
    print('API request failed: $e');
    // Consider more sophisticated error handling here. For example, retry the request after a delay, or display a user-friendly error message.
  } catch (e) {
    print('Unexpected error: $e');
  }
}
```