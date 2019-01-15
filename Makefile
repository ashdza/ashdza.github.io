default:
	$(info <<<<< either `make Resume` or `make HomePage`)

Resume:
	elm make Resume.elm --output build/resume.js
	open -a Safari resume.html
	$(info <<<<< Check Resume in Safari, save to PDF if needed)

HomePage:
	elm make HomePage.elm --output build/homepage.js
	open -a Safari index.html
	$(info <<<<< Check HomePage in Safari, git add / commit / push)
