# SimplePlus Beamer Theme

This is a **simple** and **clear** beamer theme for academic and scientific presentations. It is originally based on the Madrid beamer theme and [SimplePlus Beamer Theme](https://github.com/PM25/SimplePlus-BeamerTheme). 

# AIC visual identity
SimplePlus theme was adapted to use the [visual identity of AIC](https://smart-helenium-3a1.notion.site/Visual-identity-e194f93a8645492b8d00d52d759f61cc) in terms of logotypes, colors and font selections.

# XMU Beamer
XMU was designed on the base of AIC visual identity.
XMU beamer was burn for XMUer to easily and academicly to make a presentation file. LaTeX is will save your time to adjust your ppt elements and what you have to do is to find the right place and fill your words in. 

And this project is easy to deploy on your local tex enviornments.
Few Need Your Attention:
1. you should fill the title page info on the file ./Settings/initialization.tex
2. you should check your local font library to check which fonts are available. For MacOS, open your terminal and type code below to check. The font name **must** be the same with your local fonts'
'''
fc-list -f "%{family}\n" :lang=zh > ./Desktop/zhfont.txt
fc-list -f "%{family}\n" :lang=en > ./Desktop/enfont.txt
'''
3. there are four .sty file to define the beamer parameters. The major file is beamerinnertheme and the other files are to define colors, fonts, and applying all sty files.
4. Tikz are widely used in bearinnerthemeXMU


