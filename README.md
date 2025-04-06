# 100terres.com Public Keys

## Where to find them?

You can find them in many places. See below.

### gab at [root domain]

openpgp4fpr:E933CA5706C6F265F23502A30B2A5271FC172325

- [This Repository](keys/E933CA5706C6F265F23502A30B2A5271FC172325.asc)
- [Web Key Directory](https://openpgpkey.100terres.com/.well-known/openpgpkey/100terres.com/hu/egzrnrd9pdn9p1hdnhmbj76xr7iospm1) (Hosted on Cloudflare)
- [keys.openpgp.org](https://keys.openpgp.org/search?q=E933CA5706C6F265F23502A30B2A5271FC172325)
- [keyserver.ubuntu.com](https://keyserver.ubuntu.com/pks/lookup?search=E933CA5706C6F265F23502A30B2A5271FC172325&fingerprint=on&op=index)
- [keys.mailvelope.com](https://keys.mailvelope.com/pks/lookup?op=get&search=E933CA5706C6F265F23502A30B2A5271FC172325)
- [Proton Mail](https://mail-api.proton.me/pks/lookup?op=get&search=[email]) (replace `[email]` in the URL)

## Generate public key for Web Key Directory

### gab at [root domain]

```sh
gpg --output .well-known/openpgpkey/100terres.com/hu/egzrnrd9pdn9p1hdnhmbj76xr7iospm1 --export E933CA5706C6F265F23502A30B2A5271FC172325
```
