rm -f resume.json

LATEST=$(node -pe 'JSON.parse(process.argv[1]).files["resume.json"].raw_url.trim()' "$(curl -s $RESUME_GIST)")
curl -s $LATEST > resume.json

hackmyresume BUILD resume.json TO resume_compact.html -t compact
hackmyresume BUILD resume.json TO resume_positive.html -t positive
hackmyresume BUILD resume.json TO resume_modern.html -t modern
hackmyresume BUILD resume.json TO resume_minimist.html -t minimist
