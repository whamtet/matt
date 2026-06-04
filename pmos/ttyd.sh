ttyd \
  -c user:password \
  --ssl \
  --ssl-cert .ssh/cert.pem \
  --ssl-key .ssh/key.pem \
  -W \
  ash
