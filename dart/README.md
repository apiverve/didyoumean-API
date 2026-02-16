# Did You Mean API - Dart/Flutter Client

Did You Mean is a simple tool for correcting spelling mistakes. It returns the corrected text.

[![pub package](https://img.shields.io/pub/v/apiverve_didyoumean.svg)](https://pub.dev/packages/apiverve_didyoumean)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Did You Mean API](https://apiverve.com/marketplace/didyoumean?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_didyoumean: ^1.1.14
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_didyoumean/apiverve_didyoumean.dart';

void main() async {
  final client = DidyoumeanClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'query': 'what weather today is'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "query": "what weather today is",
    "didYouMean": [
      "what is the weather today",
      "what's the weather today",
      "what will the weather be today"
    ]
  }
}
```

## API Reference

- **API Home:** [Did You Mean API](https://apiverve.com/marketplace/didyoumean?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/didyoumean](https://docs.apiverve.com/ref/didyoumean?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
