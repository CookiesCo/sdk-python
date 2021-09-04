
# Phone

Specifies phone-based contact information.

## Structure

`Phone`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `e_164` | `string` | Required | E164-formatted phone number. |
| `display` | `string` | Required | National display format for the number. |

## Example (as JSON)

```json
{
  "e164": "+12093254906",
  "display": "(209) 325-4906"
}
```

