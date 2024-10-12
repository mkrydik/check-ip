# Check IP

```bash
$ /usr/bin/perl --version
This is perl 5, version 30, subversion 0 (v5.30.0) built for x86_64-linux-gnu-thread-multi

$ sudo apt install -y cpanminus
$ sudo cpanm LWP::UserAgent
$ sudo cpanm JSON
```

```bash
# Check Self Global IP
$ ./check-ip.pl
```

```bash
# Check Specific Global IP
$ ./check-ip.pl 185.199.108.153
{
  "ip": "185.199.108.153",
  "rir": "RIPE",
  "is_bogon": false,
  "is_mobile": false,
  "is_crawler": false,
  "is_datacenter": true,
  "is_tor": false,
  "is_proxy": false,
  "is_vpn": false,
  "is_abuser": true,
  "datacenter": {
    "network": "185.199.108.153/32",
    "datacenter": "github"
  },
  "company": {
    "name": "GitHub, Inc.",
    "abuser_score": "0.0059 (Low)",
    "domain": "github.com",
    "type": "business",
    "network": "185.199.108.0 - 185.199.111.255",
    "whois": "https://api.ipapi.is/?whois=185.199.108.0"
  },
  "abuse": {
    "name": "GitHub Admin",
    "address": "88 Colin P. Kelly Jr. Street, 94107, San Francisco, UNITED STATES",
    "email": "abuse@github.com",
    "phone": "+1 415 735 4488"
  },
  "asn": {
    "asn": 54113,
    "abuser_score": "0.0001 (Very Low)",
    "route": "185.199.108.0/24",
    "descr": "FASTLY, US",
    "country": "us",
    "active": true,
    "org": "Fastly, Inc.",
    "domain": "fastly.com",
    "abuse": "abuse@fastly.com",
    "type": "hosting",
    "created": "2011-10-04",
    "updated": "2012-03-02",
    "rir": "ARIN",
    "whois": "https://api.ipapi.is/?whois=AS54113"
  },
  "location": {
    "continent": "NA",
    "country": "United States",
    "country_code": "US",
    "state": "California",
    "city": "San Francisco",
    "latitude": 37.77493,
    "longitude": -122.41942,
    "zip": "94188",
    "timezone": "America/Los_Angeles",
    "local_time": "2024-10-12T06:42:40-07:00",
    "local_time_unix": 1728740560,
    "is_dst": true
  },
  "elapsed_ms": 1.02
}
```
