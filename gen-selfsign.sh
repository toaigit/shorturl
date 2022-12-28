#!/bin/bash
openssl req -subj '/CN=pssbxdev01.stanford.edu/O=Enterprise Technology/C=US/ST=California/L=Redwood City' -new -newkey rsa:2048 -sha256 -days 365 -nodes -x509 -keyout server.key -out server.crt

