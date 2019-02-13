$TTL 60
$ORIGIN example.com.
@           IN  SOA  example.com. admin.example.com. (
                     2017072300 ; Serial
                     4H         ; Refresh
                     1H         ; Retry
                     7D         ; Expire
                     4H )       ; Negative Cache TTL

; wildcard entry for *.example.com to reach to knative services

*.example.com.  IN A  ingress-gateway
