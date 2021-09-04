
# Error Info

Information describing an error that occurred while transacting with the API.

## Structure

`ErrorInfo`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `faultstring` | `string` | Required | Describes the error with a readable label or message. |
| `detail` | [`ErrorDetail`](/doc/models/error-detail.md) | Optional | Further info about the error. |

## Example (as JSON)

```json
{
  "faultstring": "Invalid ApiKey",
  "detail": {
    "errorcode": "oauth.v2.InvalidApiKey"
  }
}
```

