PATH_TO_DOWNLOAD=/Users/kaname.shimizu/Downloads
PATH_TO_DIST_IMG=/Users/kaname.shimizu/Documents/Projects/lf-landing-page/dist/img

if [ $1 = "sm" ]
then
  mkdir $PATH_TO_DIST_IMG/legalforce/seminar/$2
  cp $PATH_TO_DOWNLOAD/banner.webp $PATH_TO_DIST_IMG/legalforce/seminar/$2/
elif [ $1 = "dl" ]
then
  mkdir $PATH_TO_DIST_IMG/legalforce/download/$2
  cp $PATH_TO_DOWNLOAD/banner.webp $PATH_TO_DIST_IMG/legalforce/download/$2/
elif [ $1 = "sp" ]
then
  mkdir $PATH_TO_DIST_IMG/legalforce/speaker/$2
  cp $PATH_TO_DOWNLOAD/portrait.webp $PATH_TO_DIST_IMG/legalforce/speaker/$2
else
  :
fi