
# Store Social

Social media information for a first-party Cookies store.

## Structure

`StoreSocial`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `property` | [`List of SocialProperty`](/doc/models/social-property.md) | Required | Social media properties. |
| `facebook_user` | `string` | Required | Store Facebook page username. |

## Example (as JSON)

```json
{
  "property": [
    {
      "property": "FACEBOOK",
      "link": "https://facebook.com/berners.merced.9"
    },
    {
      "property": "YELP",
      "id": "berner-s-merced-merced",
      "link": "https://yelp.com/biz/berner-s-merced-merced"
    },
    {
      "property": "WEED_MAPS",
      "link": "https://weedmaps.com/dispensaries/infinity-1"
    },
    {
      "property": "GOOGLE_MAPS",
      "id": "100335793046817149888"
    },
    {
      "property": "YELP",
      "id": "berner-s-merced-merced"
    }
  ],
  "facebookUser": "berners.merced.9"
}
```

