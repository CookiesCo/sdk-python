
# Location

Describes physical location info.

## Structure

`Location`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `address` | [`Address`](/doc/models/address.md) | Required | Street address. |
| `geo` | [`Geo`](/doc/models/geo.md) | Required | Geo point or boundary. |
| `hash` | `string` | Required | Geo hash. |

## Example (as JSON)

```json
{
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
}
```

