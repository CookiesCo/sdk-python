
# Breeder

Information about a Cookies in-house breeder or partner breeder.

## Structure

`Breeder`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `string` | Required | Unique ID assigned to a breeder. Do not key against this: it is guaranteed to change. |
| `slug` | `string` | Optional | Unique slug assigned to a breeder. Typically assigned if there is no linked brand. If a linked brand is present, this field takes precedence, should any value be present. |
| `name` | [`Name`](/doc/models/name.md) | Optional | Naming info for a breeder. Typically assigned if there is no linked brand. If a linked brand is present, this field takes precedence, should any value be present. |
| `brand` | [`BrandSpec`](/doc/models/brand-spec.md) | Optional | Brand associated with a breeder, if applicable. |
| `logo` | [`MediaItem`](/doc/models/media-item.md) | Optional | Logo for a breeder, if available. |
| `in_house` | `bool` | Optional | Whether this breeder is considered "in-house". |

## Example (as JSON)

```json
{
  "id": "5VBdQRdAjgDdh763024HVO"
}
```

