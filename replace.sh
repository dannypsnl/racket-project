new_proj_name=$1

sed -i "" "s/racket-project/$new_proj_name/g" ./info.rkt
sed -i "" "s/racket-project/$new_proj_name/g" ./scribblings/racket-project.scrbl

mv ./scribblings/racket-project.scrbl ./scribblings/$new_proj_name.scrbl
