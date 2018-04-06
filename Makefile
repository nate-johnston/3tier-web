NAME=3tier-web
VERSION=1.0.7
REVISION=0
PREFIX=/app/threetier-web
TARGET_DIR=.
PACKAGE=$(NAME)_$(VERSION)-$(REVISION)_amd64.deb
POSTINSTALL=postinstall.sh
DEPENDENCIES="nginx"

.PHONY: publish

clean:
	@rm -f $(PACKAGE) || true

package: clean
	@fpm -s dir -t deb -d $(DEPENDENCIES) -n $(NAME) -v $(VERSION) --iteration $(REVISION) --prefix $(PREFIX) -C $(TARGET_DIR) --after-install $(POSTINSTALL) . 

publish: package
	deb-s3 upload -b debs3test --s3-region=us-east-2 $(PACKAGE)
