# Words on Bitcoin
A collector created ORC-721 project

## Introduction
Words on Bitcoin is a project designed to highlight the interactivity and composability possible with the [Generative ORC-721 Protocol](https://github.com/ordbase/generative-orc-721) developed by 
@geraldb. Creators can compose any word/character combination, 5 characters or less, and select a background color using the [btc_words_spritesheet.png](./btc_words_spritesheet.png). The file can then be inscribed using the standard ORC-721 JSON format.


## What's New?
The Generative ORC-721 Protocol lends itself by default to generating a composite image made of stacked layers creating a unified image, such as a pfp. Words on Bitcoin explores the idea of dispersing the position of the images, in effect creating multiple images, to allow more complex composites - such as words. This is an attempt at maximum customization while working within the stremalined ORC-721 protocol.


**Examples (102px x 32px)**

![image_file](./tmp/btcwords_24_49_68_98_111_153.png)
![image file](./tmp/btcwords_12_41_67_107_134_161.png)
![image file](./tmp/btcwords_0_53_55_100_110_161.png)


## How it Works
Unlike a typical grid shaped spritesheet (10 x 10 ex), the [btc_words_spritesheet.png](./btc_words_spritesheet.png) contains 27 columns and 6 rows:

![image file](./demo_images/btc_words_spritesheet_wtbg.png)
(white background imposed for visibility)


While this sounds intimidating at first, the logic is as follows:

**Row 1:**       27 background colors

**Row 2:**       All 26 capitalized letters of the English alphabet plus the '$' symbol / 1st letter position

**Rows 3 - 6:**  All 26 lower case letters of the English alphabet plus a special character / 2nd - 5th letter positions


**Example individual letter tiles in 8x**

![image file](./demo_images/tile0001.png) - Letter tile from Row 2

![image file](./demo_images/tile0002.png) - Letter tile from Row 3

![image file](./demo_images/tile0003.png) - Letter tile from Row 4

![image file](./demo_images/tile0004.png) - Letter tile from Row 5

![image file](./demo_images/tile0005.png) - Letter tile from Row 6

- By selecting a letter from each row on the spritesheet creators are able to create any combination of 5 characters. Note that there is a special character available in each position. 

- If no background is selected, the resulting image will be transparent. 

- To leave a space, do not select a character for that position. For example, an inscription with the only spec as [0] would simply be a rectangle with the bitcoin orange background.



Here is a breakdown of one of the example images above (white backgrouond imposed for visibility):


![image file](./tmp/btcwords_0_53_55_100_110_161.png) uses:


![image file](./spritesheet_images/image_0.png) - Bitcoin orange background

![image file](./demo_images/tile0026_wtbg.png) - '$' in fisrt position

![image file](./demo_images/tile0028_wtbg.png) - 'b' in second position

![image file](./demo_images/tile0073_wtbg.png) - 't' in third position

![image file](./demo_images/tile0083_wtbg.png) - 'c' in fourth position

No character in fifth position

## How to Inscribe
Words on Bitcoin are inscribed using the standard Generative ORC-721 JSON format. The inscribe file for the example above would be: 
```json
{
   "p":"orc-721",
   "op":"mint",
   "s":"btcwords",
   "g":[0, 53, 55, 100, 110]
}
```
**Notes**
- Before inscribing, BE SURE to check the validity of your JSON using a [JSON validator](https://jsonlint.com/)

- To help identify the correct sprites, use this character spec cheat sheet:

![image_file](./letter_specs.png)

- Alternatively, use the [public image previewer](https://ordbase.github.io/generative-orc-721/btcwords/)

# Additional Notes

> Remember that the Generative ORC-721 Protocol is experimental. As of now, there is no way to index the blockchain to scan for all valid inscriptions from any collection, although there are currently beta validators available for individual collections. For more information about the progress of ORC-721 developments, see the [inscribes/inscribes public repp](https://github.com/inscribes/inscribes)

> Do not inscribe these if you are seeking financial gain

> Do inscribe these if you are interested in experimenting with new ways to work with data sources stored on the bitcoin blockchain

