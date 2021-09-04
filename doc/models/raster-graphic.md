
# Raster Graphic

Describes a rasterized asset which may carry variants with enhanced resolution.

## Structure

`RasterGraphic`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `standard` | [`MediaItem`](/doc/models/media-item.md) | Optional | Standard-size graphic asset. |
| `retina` | [`MediaItem`](/doc/models/media-item.md) | Optional | Retina-size graphic asset. |

## Example (as JSON)

```json
{
  "standard": null,
  "retina": null
}
```

