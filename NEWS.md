## sfthemes 0.1.0

This is the initial release of the *sfthemes* package. This version offers two
main themes, `theme_sf_light` and `theme_sf_dark` alongside 9 different color
palettes, each offering a complementary accessible variant. Inter is set as the
default typeface of the package while we resolve some issues around full
integeration of SF Pro.

#### Known Bugs

- `sf_set_sf_pro` and `sf_set_inter` are not working as intended
- SF Pro cannot be set correctly due to `extrafont` only importing `.ttf` files,
therefore, missing some of the weights.
