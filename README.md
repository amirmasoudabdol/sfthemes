# sfthemes
A colection of `ggplot2` scales, and themes inspired by Apple's system colors.

---

sfthemes is a collection of `ggplot2` color and fill scales, and themes inspired by Apple's system colors, and occasional
appearance of charts in Apple's platforms, i.e., Apple Health, Screen Time. When it comes to the typography of themes, 
Inter is the default font of the package. This is due to a commercial license of the Apple's family of fonts; however, if you are using your plots in the context of Apple's disclosed license you can use either of their fonts, i.e., San Francisco, San Francisco Mono, and New York. Both themes are optimized to work smoothly despite your choice.

### About Fonts

#### On Apple's SF Family

You can download the mentioned fonts from [Apple website](https://developer.apple.com/fonts/) for free, but be aware of 
their commercial license. You can find the license after installing the font in your font previewer app. On macOS, 
you can navigate to Font Book/Preview/Show Font Info for more information.

#### Inter, The Alternative

[Inter](https://rsms.me/inter/) has a close resemblance with Apple's San Francisco fonts. It's similarly designed for use in
user interface, and it's freely available.

## Color Palettes

Apple's system colors are distinguised by the OS that they’ve been designed for, although some systems sharing the same color palette, i.e., iOS and tvOS. SFThemes provides three categories of colors, iOS, macOS and watchOS. Both iOS and macOS offers two families of palettes, light and dark. Each palette offers an accessible set of colors that are color-blind optimized and have lower contrast. Additionally, macOS offers *Vibrant* sets of colors with their own set of accessible variants. As watchOS doesn’t offers a white background, it only offers a dark color palette. 

In total, SFThemes offers the following list of palettes:

**iOS Set**

- iOS Light 
	- iOS Accessible Light
- iOS Dark
	- iOS Accessible Dark

- iOS Gray Light
	- iOS Accessible Gray Light
- iOS Gray Dark
	- iOS Accessible Gray Dark

**macOS Set**

- macOS Light 
	- macOS Accessible Light
- macOS Vibrant Light 
	- macOS Accessible Vibrant Light
- macOS Dark
	- iOS Accessible Dark
- macOS Vibrant Dark
	- iOS Accessible Vibrant Dark

## Light and Dark Themes 

SFThemes offers two base themes, SF Light and SF Dark. The Light theme uses white background and a range of black colors for text, while the dark theme uses dark background and a range of white colors for text. In general, you want to pair the light palettes with SF Light (or any other light themes) and dark palettes with SF Dark theme (or any other dark themes). 

**Example of SF Light Theme**

**Example of SF Dark Theme**

## Usage 

### Themes

You can apply SF Light by adding `theme_sf_light` to ggplot object:

and SF Dark can be applied by using `theme_sf_dark`. 

### Color Scales

Color scales are available via set of ggplot modifiers and are distinguished by their corresponding platform. Every scale function accepts a Boolean parameters, `accessible = TRUE`, indicating whether the accessible color palette should be applied instead. Additionally, macOS color scales are accepting an extra parameters indicating whether the Vibrant variant should be returned, `vibrant = TRUE`. Following list showcases all possible combinations of scales. 


#### Fill Scales

Fill scales behaves similarly to color scales and with similar names and parameters. 

make a list of all of them. 

### Continue Scales


### Gradients 