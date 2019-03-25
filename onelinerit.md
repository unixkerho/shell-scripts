## Käytännöllisiä onelinereita
```
# Korvaa kaikista tiedostonimistä tässä hakemistossa " ":n "_":lla
for f in * *; do mv "$f" "${f// /_}"; done
```
```
# Sama mutta rekursiivisesti
find . -name "* *" | awk '{ print length, $0 }' | sort -nr -s | cut -d" " -f2- | while read f; do base=$(basename "$f"); newbase="${base// /_}"; mv "$(dirname "$f")/$(basename "$f")" "$(dirname "$f")/$newbase"; done
```
```
# Poista ylimääräiset tiedostot reposta
git status --short | cut -d " " -f 3 | xargs rm
```
```
# Random commit viesti
git commit -m "$(w3m whatthecommit.com | head -n 1)"
```
```
# Muunna kaikkien kuvien kokoa hakemistossa (imagemagick)
for file in *.png; do convert $file -resize 32x32! 32-$file; done
```
```
# Missä tiedostossa lukikaan "jotain"
grep -r "jotain" .
```
```
# Search-replace kaikista tiedostoista tästä hakemistosta ja alihakemistoista
find /home/mjt/projekti -type f -print0 | xargs -0 sed -i 's/vasen/oikea/g'
```
```
# Oikeudet turvallisemmaksi tässä ja alihakemistoissa
find . -perm 777 -exec chmod 755 {} \;
```
