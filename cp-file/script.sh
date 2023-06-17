if [ $1 = "sm" ]
then
  mkdir /Users/kanameshimizu/Documents/_private/img/seminar/$2
  cp /Users/kanameshimizu/Downloads/banner.webp /Users/kanameshimizu/Documents/_private/img/seminar/$2/
elif [ $1 = "dl" ]
then
  mkdir /Users/kanameshimizu/Documents/_private/img/download/$2
  cp /Users/kanameshimizu/Downloads/banner.webp /Users/kanameshimizu/Documents/_private/img/download/$2/
elif [ $1 = "sp" ]
then
  mkdir /Users/kanameshimizu/Documents/_private/img/speaker/$2
  cp /Users/kanameshimizu/Downloads/portrait.webp /Users/kanameshimizu/Documents/_private/img/speaker/$2/
else
  :
fi