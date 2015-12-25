rm -f resume.json

LATEST=$(node -pe 'JSON.parse(process.argv[1]).files["resume.json"].raw_url.trim()' "$(curl -s $RESUME_GIST)")
curl -s $LATEST > resume.json

for theme in compact positive modern minimist
do
  if [ "$theme" == "$DEFAULT_THEME" ]
  then
    filename="index.html"
  else
    filename="resume_$theme.html"
  fi
  hackmyresume BUILD resume.json TO $filename -t $theme
done
