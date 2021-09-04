# Stores

```python
stores_controller = client.stores
```

## Class Name

`StoresController`


# List Stores

Retrieve a list of Cookies stores, optionally filtered by 1st-party brand.

```python
def list_stores(self,
               brand=None)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `brand` | [`CookiesBrandEnum`](/doc/models/cookies-brand-enum.md) | Query, Optional | Brand to filter by. |

## Response Type

[`StoreList`](/doc/models/store-list.md)

## Example Usage

```python
brand = CookiesBrandEnum.LEMONNADE

result = stores_controller.list_stores(brand)
```

## Example Response *(as JSON)*

```json
{
  "store": [
    {
      "key": {
        "id": "5HS7NOKShFd3uoAIKbUTKj",
        "code": "MCD"
      },
      "live": true,
      "slug": "berners-merced",
      "name": {
        "label": "Berner's Merced",
        "alt": "Merced"
      },
      "type": "FIRST_PARTY",
      "location": {
        "address": {
          "regionCode": "USA",
          "postalCode": "95340",
          "administrativeArea": "CA",
          "locality": "Merced",
          "addressLines": [
            "811 West Main Street"
          ]
        },
        "geo": {
          "latitude": 37.3035341,
          "longitude": -120.4880985
        },
        "hash": "9qdk4nzhz"
      },
      "contact": {
        "phone": {
          "e164": "+12093254906",
          "display": "(209) 325-4906"
        },
        "domain": "bernersmerced.com"
      },
      "capability": [
        "PICKUP",
        "MEDICAL",
        "ADULT_USE"
      ],
      "hours": {
        "regular": [
          {
            "day": [
              "MONDAY",
              "TUESDAY",
              "WEDNESDAY",
              "THURSDAY",
              "FRIDAY",
              "SATURDAY",
              "SUNDAY"
            ],
            "hours": [
              {
                "begin": {
                  "hours": 9
                },
                "end": {
                  "hours": 21
                },
                "status": "OPEN",
                "active": true
              }
            ]
          }
        ]
      },
      "social": {
        "property": [
          {
            "property": "FACEBOOK",
            "link": "https://facebook.com/berners.merced.9"
          },
          {
            "property": "YELP",
            "id": "berner-s-merced-merced",
            "link": "https://yelp.com/biz/berner-s-merced-merced"
          },
          {
            "property": "WEED_MAPS",
            "link": "https://weedmaps.com/dispensaries/infinity-1"
          },
          {
            "property": "GOOGLE_MAPS",
            "id": "100335793046817149888"
          },
          {
            "property": "YELP",
            "id": "berner-s-merced-merced"
          }
        ],
        "facebookUser": "berners.merced.9"
      },
      "media": {
        "facade": [
          {
            "key": {
              "id": "asset/399eb0ed4156fd3f/original/quwxghjbnop30rmzl0tx"
            },
            "type": {
              "imageType": "JPG"
            },
            "servingUri": "https://a.c6cdn.net/o/asset/399eb0ed4156fd3f/original/quwxghjbnop30rmzl0tx.jpg"
          },
          {
            "key": {
              "id": "asset/42ba561bc61d535b/original/m5zrfmwkttnemua9ep69"
            },
            "type": {
              "imageType": "JPG"
            },
            "servingUri": "https://a.c6cdn.net/o/asset/42ba561bc61d535b/original/m5zrfmwkttnemua9ep69.jpg"
          },
          {
            "key": {
              "id": "asset/18e7aee8ce27c40f/original/v1pnwqutogo7qvs10x8p"
            },
            "type": {
              "imageType": "JPG"
            },
            "servingUri": "https://a.c6cdn.net/o/asset/18e7aee8ce27c40f/original/v1pnwqutogo7qvs10x8p.jpg"
          },
          {
            "key": {
              "id": "asset/5637abdfba3fb4d5/original/qwrbhz4l4xhoxzhadvh3"
            },
            "type": {
              "imageType": "JPG"
            },
            "servingUri": "https://a.c6cdn.net/o/asset/5637abdfba3fb4d5/original/qwrbhz4l4xhoxzhadvh3.jpg"
          },
          {
            "key": {
              "id": "asset/513e192ec2f7f16e/original/zvmo88lkwlcxz5a8688a"
            },
            "type": {
              "imageType": "JPG"
            },
            "servingUri": "https://a.c6cdn.net/o/asset/513e192ec2f7f16e/original/zvmo88lkwlcxz5a8688a.jpg"
          },
          {
            "key": {
              "id": "asset/62f320cac146e01f/original/koyristdpi7kwug4hoe2"
            },
            "type": {
              "imageType": "JPG"
            },
            "servingUri": "https://a.c6cdn.net/o/asset/62f320cac146e01f/original/koyristdpi7kwug4hoe2.jpg"
          }
        ],
        "inside": [
          {
            "key": {
              "id": "asset/62f320cac146e01f/original/koyristdpi7kwug4hoe2"
            },
            "type": {
              "imageType": "JPG"
            },
            "servingUri": "https://a.c6cdn.net/o/asset/62f320cac146e01f/original/koyristdpi7kwug4hoe2.jpg"
          },
          {
            "key": {
              "id": "asset/77b07f73bd7d8be3/original/yxtayyvjq410xoltcgas"
            },
            "type": {
              "imageType": "JPG"
            },
            "servingUri": "https://a.c6cdn.net/o/asset/77b07f73bd7d8be3/original/yxtayyvjq410xoltcgas.jpg"
          },
          {
            "key": {
              "id": "asset/7b3a99378acf34a7/original/jxdj1jq4mtlqwyyh2bmo"
            },
            "type": {
              "imageType": "JPG"
            },
            "servingUri": "https://a.c6cdn.net/o/asset/7b3a99378acf34a7/original/jxdj1jq4mtlqwyyh2bmo.jpg"
          },
          {
            "key": {
              "id": "asset/19d9e21f99d163cc/original/ftlkg0yk0oiu1xyf8ou8"
            },
            "type": {
              "imageType": "JPG"
            },
            "servingUri": "https://a.c6cdn.net/o/asset/19d9e21f99d163cc/original/ftlkg0yk0oiu1xyf8ou8.jpg"
          },
          {
            "key": {
              "id": "asset/c0b315ce86b3f59/original/mvyz85e8cv98ohtfctyt"
            },
            "type": {
              "imageType": "JPG"
            },
            "servingUri": "https://a.c6cdn.net/o/asset/c0b315ce86b3f59/original/mvyz85e8cv98ohtfctyt.jpg"
          },
          {
            "key": {
              "id": "asset/5c4f32d012be5464/original/qv5fiaragtb3lgknvvoh"
            },
            "type": {
              "imageType": "JPG"
            },
            "servingUri": "https://a.c6cdn.net/o/asset/5c4f32d012be5464/original/qv5fiaragtb3lgknvvoh.jpg"
          },
          {
            "key": {
              "id": "asset/62fa8586be0ac3b5/original/dunca12w2mbepsnfbvcb"
            },
            "type": {
              "imageType": "JPG"
            },
            "servingUri": "https://a.c6cdn.net/o/asset/62fa8586be0ac3b5/original/dunca12w2mbepsnfbvcb.jpg"
          },
          {
            "key": {
              "id": "asset/2c2051092e95707a/original/iwftnypxv9fjvvrvgnqm"
            },
            "type": {
              "imageType": "JPG"
            },
            "servingUri": "https://a.c6cdn.net/o/asset/2c2051092e95707a/original/iwftnypxv9fjvvrvgnqm.jpg"
          }
        ],
        "masthead": [
          {
            "key": {
              "id": "asset/67ad74e493dafcec/original/vju2pxltmz2ln7uuccyz"
            },
            "type": {
              "imageType": "JPG"
            },
            "servingUri": "https://a.c6cdn.net/o/asset/67ad74e493dafcec/original/vju2pxltmz2ln7uuccyz.jpg"
          },
          {
            "key": {
              "id": "asset/6fc8fd461ef9ef22/original/wp9lbyykckyalkc6ujdb"
            },
            "type": {
              "imageType": "JPG"
            },
            "servingUri": "https://a.c6cdn.net/o/asset/6fc8fd461ef9ef22/original/wp9lbyykckyalkc6ujdb.jpg"
          },
          {
            "key": {
              "id": "asset/507a51f91ddf4e90/original/knjoqyxocomulzmqtzik"
            },
            "type": {
              "imageType": "JPG"
            },
            "servingUri": "https://a.c6cdn.net/o/asset/507a51f91ddf4e90/original/knjoqyxocomulzmqtzik.jpg"
          },
          {
            "key": {
              "id": "asset/3cde6b597f3b1c7a/original/pjegnspqmdcnhfvctftu"
            },
            "type": {
              "imageType": "JPG"
            },
            "servingUri": "https://a.c6cdn.net/o/asset/3cde6b597f3b1c7a/original/pjegnspqmdcnhfvctftu.jpg"
          },
          {
            "key": {
              "id": "asset/124de13e7d3549e1/original/ndzj46pajumsajasstv0"
            },
            "type": {
              "imageType": "JPG"
            },
            "servingUri": "https://a.c6cdn.net/o/asset/124de13e7d3549e1/original/ndzj46pajumsajasstv0.jpg"
          },
          {
            "key": {
              "id": "asset/5476faeab38eb014/original/bn9dzq3yztekvpparvzy"
            },
            "type": {
              "imageType": "JPG"
            },
            "servingUri": "https://a.c6cdn.net/o/asset/5476faeab38eb014/original/bn9dzq3yztekvpparvzy.jpg"
          },
          {
            "key": {
              "id": "asset/4b4148f7b427958c/original/hyslndh4q4u1ejvrwx1c"
            },
            "type": {
              "imageType": "JPG"
            },
            "servingUri": "https://a.c6cdn.net/o/asset/4b4148f7b427958c/original/hyslndh4q4u1ejvrwx1c.jpg"
          }
        ]
      },
      "web": {
        "main": "https://bernersmerced.com"
      },
      "branding": {
        "firstParty": {
          "brand": "COOKIES"
        }
      },
      "ordering": {
        "platform": "DUTCHIE",
        "storeId": "Z6RTWRL9Dwgw7oPtp",
        "enabled": true
      }
    }
  ]
}
```

