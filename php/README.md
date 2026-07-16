# Did You Mean API - PHP Package

Did You Mean is a simple tool for correcting spelling mistakes. It returns the corrected text.

## Installation

Install via Composer:

```bash
composer require apiverve/didyoumean
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Didyoumean\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['query' => 'what weather today is']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Didyoumean\Client;
use APIVerve\Didyoumean\Exceptions\APIException;
use APIVerve\Didyoumean\Exceptions\ValidationException;

try {
    $response = $client->execute(['query' => 'what weather today is']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "query": "what weather today is",
    "didYouMean": [
      "what is the weather today",
      "what's the weather like today",
      "what will be the weather today"
    ]
  }
}
```

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/didyoumean?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/didyoumean?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/didyoumean?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
