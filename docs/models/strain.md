
# Strain

Describes a Cookies strain.

## Structure

`Strain`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `string` | Required | Unique ID assigned to this strain. |
| `slug` | `string` | Required | Unique URL slug assigned to this strain. |
| `name` | [`Name`](/doc/models/name.md) | Required | Name of the strain. |
| `brand` | [`BrandSpec`](/doc/models/brand-spec.md) | Required | Brand info for the strain. |
| `species` | [`SpeciesEnum`](/doc/models/species-enum.md) | Required | Species for the strain. |
| `media` | [`StrainMedia`](/doc/models/strain-media.md) | Required | Media assigned to a strain. |
| `material` | [`MaterialInfo`](/doc/models/material-info.md) | Required | Material info for a strain. |
| `breeder` | [`List of Breeder`](/doc/models/breeder.md) | Optional | Breeder info for a strain. |
| `visible` | `bool` | Optional | Whether a strain is visible. |
| `social` | [`StrainSocial`](/doc/models/strain-social.md) | Optional | Social information for a strain. |
| `featured` | `bool` | Optional | Whether a strain is featured. |
| `exclusive` | `bool` | Optional | Whether a strain is exclusive to Cookies. |
| `theme` | [`Theme`](/doc/models/theme.md) | Optional | Theme information for a strain. |

## Example (as JSON)

```json
{
  "id": "C6C21-0181",
  "slug": "2090-shit",
  "name": {
    "primary": "2090 Shit"
  },
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
    },
    "owned": true,
    "icon": {
      "key": {
        "id": "asset/1cd34f38d45fd1bb/original/CBite-Blue-on-White-No-Padding"
      },
      "type": {
        "imageType": "PNG"
      },
      "servingUri": "https://a.c6cdn.net/o/asset/1cd34f38d45fd1bb/original/CBite-Blue-on-White-No-Padding.png"
    },
    "negativeIcon": {
      "key": {
        "id": "asset/375b253864f96eb7/original/C-Bite-Logo-White"
      },
      "type": {
        "imageType": "PNG"
      },
      "servingUri": "https://a.c6cdn.net/o/asset/375b253864f96eb7/original/C-Bite-Logo-White.png"
    },
    "live": true
  },
  "species": "HYBRID",
  "media": null,
  "material": null
}
```

