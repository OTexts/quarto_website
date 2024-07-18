### Build and deploy https://robjhyndman.com

all: serve

serve:
	quarto preview

build:
	quarto render

deploy: build
	cp .htaccess _site
	rsync -zrvce 'ssh -p 18765' _site/ u192-zw4zvui1lqsb@m80.siteground.biz:www/otexts.com/public_html

clean:
	rm -rf _site
