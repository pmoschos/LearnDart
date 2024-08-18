void main() {
  Map<String, String> countries = {
    'US': 'United States',
    'DE': 'Germany',
    'IN': 'India'
  };

  print(countries.containsKey('DE')); // Output: true

  countries.remove('IN');
  print(countries); // Output: {US: United States, DE: Germany}

  countries.putIfAbsent('JP', () => 'Japan');
  print(countries); // Output: {US: United States, DE: Germany, JP: Japan}
}
