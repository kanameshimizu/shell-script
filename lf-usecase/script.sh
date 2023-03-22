# visualを1.jpgとし、連番で昇順に格納されている想定

files=(*.jpg)
for i in "${!files[@]}"
do
    if [ $i -eq 0 ]
    then
        cwebp -q 70 -resize 1560 0 "${files[$i]}" -o "usecase_${1}_bg_main@2x.jpg.webp"
        sips -s dpiHeight 72 -s dpiWidth 72 -Z 1560 "${files[$i]}" -o "usecase_${1}_bg_main@2x.jpg"
        sips -s dpiHeight 72 -s dpiWidth 72 -Z 780 "${files[$i]}" -o "usecase_${1}_bg_main.jpg"
        cwebp -q 70 -resize 780 0 "${files[$i]}" -o "usecase_${1}_bg_list@2x.jpg.webp"
        sips -s dpiHeight 72 -s dpiWidth 72 -Z 780 "${files[$i]}" -o "usecase_${1}_bg_list@2x.jpg"
        sips -s dpiHeight 72 -s dpiWidth 72 -Z 390 "${files[$i]}" -o "usecase_${1}_bg_list.jpg"
        sips -s dpiHeight 72 -s dpiWidth 72 -Z 1560 "${files[$i]}" -o "usecase_${1}_bg.jpg"
    else
        num=$(printf "%02d" $i)
        cwebp -q 70 -resize 1560 0 "${files[$i]}" -o "usecase_${1}_${num}@2x.jpg.webp"
        sips -s dpiHeight 72 -s dpiWidth 72 -Z 1560 "${files[$i]}" -o "usecase_${1}_${num}@2x.jpg"
        sips -s dpiHeight 72 -s dpiWidth 72 -Z 780 "${files[$i]}" -o "usecase_${1}_${num}.jpg"
    fi
done