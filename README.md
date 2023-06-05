# Words on Bitcoin
A collector created ORC-721 project

## Introduction
Words on Bitcoin is a project designed to highlight the interactivity and composability possible with the [Generative ORC-721 protocol](https://github.com/ordbase/generative-orc-721) developed by 
@geraldb. Creators are able to compose any 5 character word, with spaces, and select a background color using the [btc_words_spritesheet.png](./btc_words_spritesheet). The file can then be inscribed using the standard ORC-721 JSON format.


## What's New?
The Generative ORC-721 Protocol lends itself by default to generating a composite image made of stacked layers creating a unified image, such as a pfp. Words on Bitcoin explores the idea of dispersing the position of the images, in effect creating multiple images, to create more complex composites - such as words. This is an attempt at maximum customization using the same stremalined ORC-721 format.  


**Examples (102px x 32px)**

![image_file](./tmp/btcwords_24_49_68_98_111_153.png)
![image file](./tmp/btcwords_12_41_67_107_134_161.png)
![image file](./tmp/btcwords_0_53_55_100_110_161.png)


## How it Works
Unlike a typical grid shaped spritesheet (10 x 10 ex.), The [btc_words_spritesheet.png](./btc_words_spritesheet) contains 27 columns and 6 rows:

![image file](./demo_images/btc_words_spritesheet_wtbg.png)
(white background imposed for visibility)


While this sounds intimidating at first the logic is as follows:

**Row 1:**       27 background colors

**Row 2:**       All 26 capitalized letters of the English alphabet plus the '$' symbol / 1st letter position

**Rows 3 - 6:**  All 26 lower case letters of the English alphabet plus a ' ' blank / 2nd - 5th letter positions


**Example individual letter tiles in 8x**

![image file](./demo_images/tile0001.png) - Letter tile from Row 2

![image file](./demo_images/tile0002.png) - Letter tile from Row 3

![image file](./demo_images/tile0003.png) - Letter tile from Row 4

![image file](./demo_images/tile0004.png) - Letter tile from Row 5

c - Letter tile from Row 6

By selecting a letter from each row on the spritesheet creators are able to create any combination of 5 characters. Note that there is a ' ' (space) character available in each position except the first postion. Instead of a ' ', a '$' is the only character other than a letter that is available for row 1.

Here is a breakdown of one of the example images above (white backgrouond imposed for clarity):


![image file](./tmp/btcwords_0_53_55_100_110_161.png) uses:

![image file](./spritesheet_images/image_0.png) - Bitcoin orange background

![image file](./demo_images/tile0026_wtbg.png) - '$' in fisrt position

![image file](./demo_images/tile0028_wtbg.png) - 'b' in second position

![image file](./demo_images/tile0073_wtbg.png) - 't' in third position

![image file](./demo_images/tile0083_wtbg.png) - 'c' in fourth position

![image file](./demo_images/tile0135_wtbg.png) - ' ' in fifth position



