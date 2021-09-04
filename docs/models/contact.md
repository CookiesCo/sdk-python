
# Contact

Contact information.

## Structure

`Contact`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `phone` | [`Phone`](/doc/models/phone.md) | Required | Phone number. |
| `domain` | `string` | Required | Assigned email domain. |

## Example (as JSON)

```json
{
  "phone": {
    "e164": "+12093254906",
    "display": "(209) 325-4906"
  },
  "domain": "bernersmerced.com"
}
```

