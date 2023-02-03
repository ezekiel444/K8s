echo "subjectAltName=DNS:ec2-3-253-104-57.eu-west-1.compute.amazonaws.com,IP:3.253.104.57" > server-ext.cnf


openssl req -x509 -newkey rsa:4096 -days 365 -nodes -keyout ca-key.pem -out ca-cert.pem -subj "/C=FR/ST=Occitanie/L=Toulouse/O=Tech School/OU=Education/CN=*.techschool.guru/emailAddress=matomiezekiel6@gmail.com"


openssl x509 -in ca-cert.pem -noout -text


openssl req -newkey rsa:4096 -nodes -keyout server-key.pem -out server-req.pem -subj "/C=FR/ST=Ile de France/L=Paris/O=PC Book/OU=Computer/CN=*.pcbook.com/emailAddress=matomiezekiel6@gmail.com"

openssl x509 -req -in server-req.pem -days 60 -CA ca-cert.pem -CAkey ca-key.pem -CAcreateserial -out server-cert.pem -extfile server-ext.cnf

openssl x509 -in server-cert.pem -noout -text


openssl verify -CAfile ca-cert.pem -verbose server-cert.pem

sudo cp ca-cert.pem /usr/local/share/ca-certificates/ca.crt


sudo update-ca-certificates