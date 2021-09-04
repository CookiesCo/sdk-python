
# Fault Response Exception

Specifies errors that occurred in a given request/response cycle.

## Structure

`FaultResponseException`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `fault` | [`ErrorInfo`](/doc/models/error-info.md) | Required | Error report for a fatal exception. |

## Example (as JSON)

```json
{
  "fault": {
    "faultstring": "Invalid ApiKey",
    "detail": {
      "errorcode": "oauth.v2.InvalidApiKey"
    }
  }
}
```

