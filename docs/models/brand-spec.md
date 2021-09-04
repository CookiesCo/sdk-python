
# Brand Spec

Descriptor which specifies a first-party or third-party brand.

## Structure

`BrandSpec`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `string` | Required | System ID for a brand. Do not key against this: it is guaranteed to change. |
| `bid` | `string` | Required | Assigned ID for this brand. Immutable and reliable. |
| `brand` | [`Brand`](/doc/models/brand.md) | Required | OpenCannabis payload describing this brand. |
| `owned` | `bool` | Optional | Whether this brand is owned by Cookies. |
| `icon` | [`MediaItem`](/doc/models/media-item.md) | Optional | Media/asset icon for this brand. |
| `negative_icon` | [`MediaItem`](/doc/models/media-item.md) | Optional | Negative-mode icon for this brand. |
| `live` | `bool` | Optional | Whether this brand is live. |
| `sort_weight` | `int` | Optional | Sort weight of this brand. |

## Example (as JSON)

```json
{
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
```

