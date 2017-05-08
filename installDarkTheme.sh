#!/bin/bash
# Dark Theme for rstudio works with the actual stable Version of RStudio 1.0.143 .
# enter your download folder for Dark Theme
sudo cp -avrf /media/sf_VM_Folder/RStudioDarkStyle/ /usr/lib/rstudio/RStudioDarkStyle/
# First we want to save the Original files to a new folder (vanilla)
cd /usr/lib/rstudio
sudo mkdir vanilla
sudo cp -avrf ./www/index.htm ./vanilla/index.htm
sudo cp -avrf ./resources/R.css ./vanilla/R.css
sudo cp -avrf ./resources/grid/gridstyles.css ./vanilla/gridstyles.css 
# If you set own styles before you can also save them 
sudo cp -avrf ./www/custom_styles.css ./vanilla/custom_styles.css
# Then we replace the original files with the new ones
sudo cp -avrf ./RStudioDarkStyle/index.htm ./www/index.htm 
sudo cp -avrf ./RStudioDarkStyle/custom_styles.css ./www/custom_styles.css 
sudo cp -avrf ./RStudioDarkStyle/R.css ./resources/R.css 
sudo cp -avrf ./RStudioDarkStyle/gridstyles.css ./resources/grid/gridstyles.css
# And thats all it should work now as far as you use rstudio 1.0.143