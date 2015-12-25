Resume Server
=============

Uses https://github.com/hacksalot/HackMyResume to fetch some json-formatted resume data and generate different styled html resumes, then serves them statically.

To run, create a gist with your resume.json, and run this docker container as so:

    docker run --rm -p 80:8080 -e RESUME_GIST=https://api.github.com/gists/{GIST ID} quantumplation/resume-server

you can find the {GIST ID} as the last hash-looking portion of the URL
