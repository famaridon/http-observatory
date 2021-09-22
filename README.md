# http-observatory
Mozzilla HTTP Observatory dockerfile

This is a simple image to run https://github.com/mozilla/http-observatory in a container.

## Usage 

* Run `docker run --rm famaridon/http-observatory:latest example.com --format report`

If you need more information you can run `docker run --rm http-observatory --help`
```
usage: httpobs-local-scan [-h] [--http-port HTTP_PORT]
                          [--https-port HTTPS_PORT] [--path PATH]
                          [--no-verify] [--cookies COOKIES]
                          [--headers HEADERS] [--format FORMAT]
                          hostname

positional arguments:
  hostname              host to scan (hostname only, no protocol or port)

optional arguments:
  -h, --help            show this help message and exit
  --http-port HTTP_PORT
                        port to use for the HTTP scan (instead of 80)
  --https-port HTTPS_PORT
                        port to use for the HTTPS scan (instead of 443)
  --path PATH           path to scan, instead of /
  --no-verify           disable certificate verification in the HSTS/HPKP
                        tests
  --cookies COOKIES     cookies to send in scan (json formatted)
  --headers HEADERS     headers to send in scan (json formatted)
  --format FORMAT       output format (json or report), default of json
```


## Run your hown

* Clone this repo `git clone https://github.com/famaridon/http-observatory.git`
* Run `docker build . -t http-observatory` from root
* Run `docker run --rm http-observatory example.com --format report`

