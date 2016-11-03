#!/bin/sh
rm -fr test/

go run main.go --host example.org --out test

(openssl x509 -in test/cert.pem -text -noout | grep "DNS:example.org" && echo "OK") || exit 1
(openssl x509 -in test/cert.pem -text -noout | grep "Issuer: O=Acme Co" && echo "OK") || exit 1
(openssl x509 -in test/cert.pem -text -noout | grep "Subject: O=Acme Co" && echo "OK") || exit 1

echo "test passed!"
