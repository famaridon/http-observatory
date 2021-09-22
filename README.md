# http-observatory
Mozzilla HTTP Observatory dockerfile

This is a simple image to run https://github.com/mozilla/http-observatory in a container.

## Usage 

`docker run --rm famaridon/http-observatory:latest example.com --format report`
output somthing like that 
```
core: 0 [F]
Modifiers:
  Content Security Policy        [-25]  Content Security Policy (CSP) header not implemented
  Contribute                     [  0]  Contribute.json isn't required on websites that don't belong to Mozilla
  Cookies                        [  0]  No cookies detected
  Cross Origin Resource Sharing  [  0]  Content is not visible via cross-origin resource sharing (CORS) files or headers
  Public Key Pinning             [  0]  HTTP Public Key Pinning (HPKP) header not implemented
  Redirection                    [-20]  Does not redirect to an HTTPS site
  Referrer Policy                [  0]  Referrer-Policy header not implemented
  Strict Transport Security      [-20]  HTTP Strict Transport Security (HSTS) header not implemented
  Subresource Integrity          [  0]  Subresource Integrity (SRI) is not needed since site contains no script tags
  X Content Type Options         [ -5]  X-Content-Type-Options header not implemented
  X Frame Options                [-20]  X-Frame-Options (XFO) header not implemented
  X Xss Protection               [-10]  X-XSS-Protection header not implemented
```



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

