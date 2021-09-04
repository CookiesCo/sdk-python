
# Address

Specifies a street address.

## Structure

`Address`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `region_code` | `string` | Required | ISO country code (3-character). |
| `postal_code` | `string` | Required | Regional postal code or zip code. |
| `administrative_area` | `string` | Required | State or province, as a two-letter ISO or national code. |
| `locality` | `string` | Required | City, village, or municipality name. |
| `address_lines` | `List of string` | Required | Lines for the address itself. |

## Example (as JSON)

```json
{
  "regionCode": "USA",
  "postalCode": "95340",
  "administrativeArea": "CA",
  "locality": "Merced",
  "addressLines": [
    "811 West Main Street"
  ]
}
```

