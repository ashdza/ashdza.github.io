default:
	$(info <<<<< either `make Resume` or `make HomePage`)

Resume:
	elm make Resume.elm --output build/resume.js
	open -a "Google Chrome" resume.html
	relaxed --build-once resume.html
	open resume.pdf
	$(info <<<<< Check PDF resume in Preview and File/Rename to <FileName>, Check resume in Chrome)

HomePage:
	elm make HomePage.elm --output build/homepage.js
	open -a "Google Chrome" index.html
	$(info <<<<< Check HomePage in Chrome, git add / commit / push)
