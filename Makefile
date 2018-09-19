Resume.html: Resume.elm ResumeTypes.elm ResumeView.elm
	elm make Resume.elm --output=Resume.html
	open -a Safari Resume.html
	$(info <<< Check resume in Safari, save to PDF if needed)

HomePage.html: HomePage.elm Resume.elm ResumeTypes.elm ResumeView.elm
	elm make $^ --output=$@
	open -a Safari $@
	$(info <<< Check HomePage in Safari)

all: Resume.html HomePage.html
ifeq ($(COMMIT),)
	$(info <<< Need COMMIT='some commit message')
else
	cp HomePage.html index.html
	git add .
	git commit -m "$(COMMIT)"
	git push
endif
