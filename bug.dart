```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the API returns JSON
      final data = jsonDecode(response.body);
      // Process the data
      print(data);
    } else {
      // Handle error
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions during API call
    print('Error: $e');
    // Consider rethrowing the exception or handling it differently based on the application's needs.
  }
}
```