CUSTOM COLORS TO MAKE RSTUDIO DARK

Hi all

I found this guide and the install instuctions on the internet (link below) and
had some issues with it so i tried to solved it.
I edited the custom_styles.css and the gridstyles.css the other files are original
as zencoder wrote them.
Original file from from zencoder with install guide can be found here:
https://support.rstudio.com/hc/en-us/community/posts/115000437028-Dark-style-for-R-Studio-IDE

I posted my solution on stackoverflow.
http://stackoverflow.com/questions/25624825/changing-background-color-in-rstudio/43760025#43760025

But as it is work in Progress i decided to move the project to GitHub.


The following instuctions are from zencoder and not edited

Have fun with this hope it helps.

DdS


---------------------------------



Hi all

This is a very short guide, how to make R-Studio almost totally dark. I believe 
you know why it may be done. If not – simply skip this guide, or just make a try 
to take another look over your favorite tool.


Studio itself in fact it’s a regular web site, running inside special browser. 
You see nothing from regular browser window, but it’s really so! That is why we 
can modify almost everything on its pages by modifying css-files, which defines 
R-Studio look-and-feel.

Every browser has internal tool to inspect every item on its page. It can be 
invoked by pressing right mouse button on some page item, and select menu 
“Inspect”. It brings up special window, where you can locate your item inside 
HTML-text, and modify its properties, like text and background colors, borders, 
etc. Defining what and how have to be changed is out of this article scope. If 
you don’t know how make proper changes to css-files – please, request advise 
from your friend, who are familiar with this. I had already done a lot of such 
work and you can find results in this archive. Let’s study content and what have 
to be done.


File locations.

You need to replace these files in your R-Studio, which are responsible for 
those elements look:

\RStudio\www\index.htm – “home page”. It has only one additional line – 
inserting dark style modifications after <body> element, to overwrite original 
color settings: <link rel="stylesheet" href="custom_styles.css" 
type="text/css"/>

\RStudio\resources\grid\gridstyles.css – data inspector tables.

\RStudio\resources\R.css – Help content

Also you need to create new file:

\RStudio\www\custom_styles.css – overriding for dark theme

gridstyles.css and R.css - are original files with my additions, started with 
css comment line /*************************/ at the bottom of each file. If you 
will get new version for R-Studio, you have to copy-paste them to new files from 
new version.

Please, make a copy of originals for these files, just to have ability to revert 
changes if they will be unacceptable for you. New look-and-feel it good enough 
for me, but it still can be polished by yourself to level, which will be 
appropriate for you.

That’s all )