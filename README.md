# yum-mirror

Docker container to mirror Centos 7 and Rocky Linux 8 & 9.

## Running

Setup a large volume at `/opt` and run the following:
```bash
docker run -d -v /opt/yum-mirror:/mirror ghcr.io/albal/yum-mirror:main
```
