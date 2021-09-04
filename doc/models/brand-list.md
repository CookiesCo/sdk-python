
# Brand List

Specifies a list of resulting Brand records.

## Structure

`BrandList`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `brand` | [`List of BrandSpec`](/doc/models/brand-spec.md) | Required | Array of resulting brand records.<br>**Constraints**: *Maximum Items*: `25`, *Unique Items Required* |

## Example (as JSON)

```json
{
  "brand": {
    "id": "2bqMdszNwnpdAk27sPVygO",
    "bid": "C6BI-00001",
    "brand": {
      "name": {
        "primary": "Cookies",
        "display": "Cookies"
      },
      "media": [
        {
          "raster": {
            "standard": {
              "key": {
                "id": "asset/1cd34f38d45fd1bb/original/CBite-Blue-on-White-No-Padding"
              },
              "uri": "https://a.c6cdn.net/o/id: \"asset/1cd34f38d45fd1bb/original/CBite-Blue-on-White-No-Padding\"\n"
            }
          }
        }
      ],
      "theme": {
        "primary": {
          "hex": "#00A0DC"
        },
        "secondary": {
          "hex": "#00A0DC"
        },
        "alert": {
          "hex": "#FEFEFE"
        }
      },
      "slug": "cookies",
      "link": "https://cookies.co"
    }
  }
}
```

