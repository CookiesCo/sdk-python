
# Media Item

Reference to a known media asset.

## Structure

`MediaItem`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `key` | [`MediaKey`](/doc/models/media-key.md) | Required | Unique key assigned to, or generated for, this asset. |
| `mtype` | [`MediaType`](/doc/models/media-type.md) | Optional | Type specifications for this asset. |
| `serving_uri` | `string` | Optional | Serving URI, if available, for this asset. |
| `uri` | `string` | Optional | Origin URI for this asset. |

## Example (as JSON)

```json
{
  "key": {
    "id": "asset/399eb0ed4156fd3f/original/quwxghjbnop30rmzl0tx"
  }
}
```

