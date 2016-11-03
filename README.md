# sscg

Generate self signed certificate

## Usage

```sh
sscg - 0.0.0

Generate self signed certificate.

  -ca
   	whether this cert should be its own Certificate Authority
  -duration duration
   	Duration that certificate is valid for (default 8760h0m0s)
  -ecdsa-curve string
   	ECDSA curve to use to generate a key. Valid values are P224, P256, P384, P521
  -h
  -help
   	Get help
  -host string
   	Comma-separated hostnames and IPs to generate a certificate for
  -out string
   	Output put directory (default ".")
  -rsa-bits int
   	Size of RSA key to generate. Ignored if --ecdsa-curve is set (default 2048)
  -start-date string
   	Creation date formatted as Jan 1 15:04:05 2011
  -v
  -version
   	Get version
```

__Examples__

```sh
  sscg --host dev.example.org
  sscg --help
  sscg --version
```

## Install

Pick an msi package [here](https://github.com/mh-cbon/sscg/releases)!

__chocolatey__

```sh
choco install sscg
```

__deb/rpm repositories__

```sh
wget -O - https://raw.githubusercontent.com/mh-cbon/latest/master/source.sh \
| GH=mh-cbon/sscg sh -xe
# or
curl -L https://raw.githubusercontent.com/mh-cbon/latest/master/source.sh \
| GH=mh-cbon/sscg sh -xe
```

__deb/rpm packages__

```sh
curl -L https://raw.githubusercontent.com/mh-cbon/latest/master/install.sh \
| GH=mh-cbon/sscg sh -xe
# or
wget -q -O - --no-check-certificate \
https://raw.githubusercontent.com/mh-cbon/latest/master/install.sh \
| GH=mh-cbon/sscg sh -xe
```

__go__

```sh
mkdir -p $GOPATH/src/github.com/mh-cbon
cd $GOPATH/src/github.com/mh-cbon
git clone https://github.com/mh-cbon/sscg.git
cd sscg
glide install
go install
```

## Credits

Orignal code taken from https://golang.org/src/crypto/tls/generate_cert.go and re-packed.
