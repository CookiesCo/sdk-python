
# Cookies SDK for Python  ![beta](https://img.shields.io/badge/-beta-blue) <br /> [![Quality Gate Status](https://sonarcloud.io/api/project_badges/measure?project=CookiesCo_sdk-python&metric=alert_status)](https://sonarcloud.io/dashboard?id=CookiesCo_sdk-python) [![Maintainability Rating](https://sonarcloud.io/api/project_badges/measure?project=CookiesCo_sdk-python&metric=sqale_rating)](https://sonarcloud.io/dashboard?id=CookiesCo_sdk-python) [![Reliability Rating](https://sonarcloud.io/api/project_badges/measure?project=CookiesCo_sdk-python&metric=reliability_rating)](https://sonarcloud.io/dashboard?id=CookiesCo_sdk-python) [![Security Rating](https://sonarcloud.io/api/project_badges/measure?project=CookiesCo_sdk-python&metric=security_rating)](https://sonarcloud.io/dashboard?id=CookiesCo_sdk-python)

This repository defines an API client for easy access to [Cookies](https://cookies.co) APIs from Python.

## Installation

From your favorite command line:

```
  pip install cookiesapi
```

## Docs

Guides, access docs, and other resources can be found at the [_Cookies API Console_](https://go.cookies.co/apis). Check there first if you can't find what you're after.

- **API Reference**
  - [Brands](https://py.cookies.dev/controllers/brands)
  - [Stores](https://py.cookies.dev/controllers/stores)
  - [Strains](https://py.cookies.dev/controllers/strains)

- **Class Reference**
  - [API Client](https://py.cookies.dev/client): Info about the main API client facade.
  - [HTTP Request](https://py.cookies.dev/http-request): HTTP request object.
  - [HTTP Response](https://py.cookies.dev/http-response): HTTP response object.
  - [Utility classes](https://py.cookies.dev/utility-classes): General utilities


### Initialize the API Client

**_Note:_** Documentation for the client can be found [here.](/doc/client.md)

The following parameters are configurable for the API Client:

| Parameter | Type | Description |
|  --- | --- | --- |
| `apikey` | `string` | Consumer API key issued by Cookies. |
| `environment` | Environment | The API environment. <br> **Default: `Environment.SANDBOX`** |
| `timeout` | `float` | The value to use for connection timeout. <br> **Default: 60** |
| `max_retries` | `int` | The number of times to retry an endpoint call if it fails. <br> **Default: 0** |
| `backoff_factor` | `float` | A backoff factor to apply between attempts after the second try. <br> **Default: 2** |
| `retry_statuses` | `Array of int` | The http statuses on which retry is to be done. <br> **Default: [408, 413, 429, 500, 502, 503, 504, 521, 522, 524]** |
| `retry_methods` | `Array of string` | The http methods on which retry is to be done. <br> **Default: ['GET', 'PUT']** |

The API client can be initialized as follows:

```python
from cookiesapi import CookiesSDK
from cookiesapi.configuration import Environment

client = CookiesSDK(
    apikey='apikey',
    environment=Environment.SANDBOX
)
```

The API key is also settable via the _environment variable_ `COOKIES_APIKEY`. If both are made available to the SDK at runtime, the constructor parameter wins.


### Obtaining Credentials

Authorization for most Cookies APIs occurs via regular consumer API keys, which authorize the bearer to perform a broad set of operations (i.e. keys are usually API- or consumer-wide). To acquire authorized API credentials, visit the [API Console](https://go.cookies.co/dev).

Sensitive APIs are gated by allowlists and may require additional security measures such as Mutual TLS (_mTLS_), OAuth 2, or asymmetric cryptographic signatures.


### Environments

The SDK can be configured to use a different environment for making API calls. Available environments are:

#### Fields

| Name | Description |
|  --- | --- |
| production | Production data and hosting environment. |
| sandbox | **Default** Testing and development environment. |

Please switch to `production` only for production traffic. Otherwise, the two environments are identical, because they pull from a mirrored (albeit isolated) data source.


## Resources

Resources available for the Python SDK include [guides](https://go.cookies.co/apis), [reference docs](https://py.cookies.dev), and the [API Console](https://go.cookies.co/apis) which sports a full testing harness.

Cookies also supports API access from [Java](https://github.com/CookiesCo/java) or via [plain HTTP](https://go.cookies.co/apis).


## Contributing


## Building the SDK

You must have Python `3 >=3.6, <= 3.9` installed on your system to install and run this SDK. This SDK package depends on other Python packages like nose, jsonpickle etc. These dependencies are defined in the `requirements.txt` file that comes with the SDK.To resolve these dependencies, you can use the PIP Dependency manager. Install it by following steps at [https://pip.pypa.io/en/stable/installing/](https://pip.pypa.io/en/stable/installing/).

Python and PIP executables should be defined in your PATH. Open command prompt and type `pip --version`. This should display the version of the PIP Dependency Manager installed if your installation was successful and the paths are properly defined.

* Using command line, navigate to the directory containing the generated files (including `requirements.txt`) for the SDK.
* Run the command `pip install -r requirements.txt`. This should install all the required dependencies.

![Building SDK - Step 1](https://apidocs.io/illustration/python?workspaceFolder=Cookiesapi-Python&step=installDependencies)


### Development

The following section explains how to use the cookiesapi library in a new project.

#### 1. Open Project in an IDE

Open up a Python IDE like PyCharm. The basic workflow presented here is also applicable if you prefer using a different editor or IDE.

![Open project in PyCharm - Step 1](https://apidocs.io/illustration/python?workspaceFolder=Cookiesapi-Python&step=pyCharm)

Click on `Open` in PyCharm to browse to your generated SDK directory and then click `OK`.

![Open project in PyCharm - Step 2](https://apidocs.io/illustration/python?workspaceFolder=Cookiesapi-Python&step=openProject0)

The project files will be displayed in the side bar as follows:

![Open project in PyCharm - Step 3](https://apidocs.io/illustration/python?workspaceFolder=Cookiesapi-Python&projectName=cookiesapi&step=openProject1)

#### 2. Add a new Test Project

Create a new directory by right clicking on the solution name as shown below:

![Add a new project in PyCharm - Step 1](https://apidocs.io/illustration/python?workspaceFolder=Cookiesapi-Python&projectName=cookiesapi&step=createDirectory)

Name the directory as "test".

![Add a new project in PyCharm - Step 2](https://apidocs.io/illustration/python?workspaceFolder=Cookiesapi-Python&step=nameDirectory)

Add a python file to this project.

![Add a new project in PyCharm - Step 3](https://apidocs.io/illustration/python?workspaceFolder=Cookiesapi-Python&projectName=cookiesapi&step=createFile)

Name it "testSDK".

![Add a new project in PyCharm - Step 4](https://apidocs.io/illustration/python?workspaceFolder=Cookiesapi-Python&projectName=cookiesapi&step=nameFile)

In your python file you will be required to import the generated python library using the following code lines

```python
from cookiesapi.cookiesapi_client import CookiesapiClient
```

![Add a new project in PyCharm - Step 5](https://apidocs.io/illustration/python?workspaceFolder=Cookiesapi-Python&projectName=cookiesapi&libraryName=cookiesapi.cookiesapi_client&className=CookiesapiClient&step=projectFiles)

After this you can write code to instantiate an API client object, get a controller object and  make API calls. Sample code is given in the subsequent sections.

#### 3. Run the Test Project

To run the file within your test project, right click on your Python file inside your Test project and click on `Run`

![Run Test Project - Step 1](https://apidocs.io/illustration/python?workspaceFolder=Cookiesapi-Python&projectName=cookiesapi&libraryName=cookiesapi.cookiesapi_client&className=CookiesapiClient&step=runProject)

### Test the SDK

You can test the generated SDK and the server with test cases. `unittest` is used as the testing framework and `nose` is used as the test runner. You can run the tests as follows:

Navigate to the root directory of the SDK and run the following commands

```
pip install -r test-requirements.txt
nosetests
```


---

🍪 Copyright © Cookies Creative Consulting & Promotions, Inc.

This repository contains private computer source code owned by Cookies (heretofore Cookies Creative Consulting & Promotions, a California Company). Use of this code in source or object form requires prior written permission from a duly-authorized member of Cookies Engineering. All rights reserved.
