#generate the key without encryption
openssl genrsa -out ca.key 4096

#generate certificat from the key
openssl req -new -x509 -sha256 -days 10950 -key ca.key -out ca.crt
