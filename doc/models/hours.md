
# Hours

Describes regular and special store hours.

## Structure

`Hours`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `regular` | [`List of RegularHours`](/doc/models/regular-hours.md) | Required | Specifies regular store hours. |

## Example (as JSON)

```json
{
  "regular": [
    {
      "day": [
        "MONDAY",
        "TUESDAY",
        "WEDNESDAY",
        "THURSDAY",
        "FRIDAY",
        "SATURDAY",
        "SUNDAY"
      ],
      "hours": [
        {
          "begin": {
            "hours": 9
          },
          "end": {
            "hours": 21
          },
          "status": "OPEN",
          "active": true
        }
      ]
    }
  ]
}
```

