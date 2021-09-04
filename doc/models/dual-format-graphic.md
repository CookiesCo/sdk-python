
# Dual Format Graphic

Asset which is capable of specifying both a vector and raster form of a given asset.

## Structure

`DualFormatGraphic`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `raster` | [`MediaItem`](/doc/models/media-item.md) | Optional | Raster version of this graphic. |
| `vector` | [`MediaItem`](/doc/models/media-item.md) | Optional | Vector version of this graphic. |

## Example (as JSON)

```json
{
  "raster": null,
  "vector": null
}
```

