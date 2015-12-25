Resume Server
=============
On docker: https://hub.docker.com/r/quantumplation/resume-server/

Uses https://github.com/hacksalot/HackMyResume to fetch some json-formatted resume data and generate different styled html resumes, then serves them statically.

To run, create a gist with your resume.json, and run this docker container as so:

    docker run --rm -p 80:8080 -e RESUME_GIST=https://api.github.com/gists/{GIST ID} quantumplation/resume-server

you can find the {GIST ID} as the last hash-looking portion of the URL.

Right now it just serves the files statically with http-server, if there's some reason I shouldn't be using this I'm open to contributions.  I've not had much experience with Node, so I don't know what options are out there.
