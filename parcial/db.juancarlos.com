;
; BIND data file for local loopback interface
;
$TTL	604800
@	IN	SOA	juancarlos.com. root.juancarlos.com. (
			      2		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
@	IN	NS	ns.juancarlos.com.
ns	IN	A	192.168.50.3
client	IN	A	192.168.50.2
www	IN	CNAME	ns
parcial	IN	CNAME	ns
