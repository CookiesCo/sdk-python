
# Hours Range

Range/interval of hours.

## Structure

`HoursRange`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `begin` | [`TimeSpec`](/doc/models/time-spec.md) | Required | Begin time for a given hours range. |
| `end` | [`TimeSpec`](/doc/models/time-spec.md) | Required | End time for a given hours range. |
| `status` | [`StoreStatusEnum`](/doc/models/store-status-enum.md) | Required | Status to apply for a store. |
| `active` | `bool` | Required | Whether this hours rule is active. |

## Example (as JSON)

```json
{
  "begin": {
    "hours": 9,
    "minutes": "30"
  },
  "end": {
    "hours": 21,
    "minutes": "30"
  },
  "status": "OPEN",
  "active": true
}
```

