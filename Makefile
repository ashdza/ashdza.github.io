# Resume.html: Resume.elm ResumeTypes.elm ResumeView.elm
# 	elm make Resume.elm --output=Resume.html
# 	open -a Safari Resume.html
# 	$(info <<< Check resume in Safari, save to PDF if needed)

# HomePage.html: HomePage.elm Resume.elm ResumeTypes.elm ResumeView.elm
# 	elm make $^ --output=$@
# 	open -a Safari $@
# 	$(info <<< Check HomePage in Safari)

# all: Resume.html HomePage.html
# 	cp HomePage.html index.html
# 	$(info <<< Check Resume & HomePage in Safari, save updated PDF, then git add, git commit & git push)

# all: Resume HomePage
# 	cp build/HomePage.html ./index.html	

# % : %.elm
# 	elm make src/$< --output build/$@.js
# 	cp src/index.html build/$@.html

Resume:
	elm make Resume.elm --output build/resume.js
	open -a Safari resume.html
	$(info <<<<< Check Resume in Safari, save to PDF if needed)

HomePage:
	elm make HomePage.elm --output build/main.js
	open -a Safari index.html
	$(info <<<<< Check HomePage in Safari, git add / commit / push)
