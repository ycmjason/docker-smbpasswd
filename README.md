# docker-smbpasswd

A portal to `smbpasswd`

## Requirements

* [Docker](https://www.docker.com/get-docker)

## Usage

The container can be run 

```
docker run --interactive --rm ycmjason/smbpasswd -h
docker run --interactive --rm ycmjason/smbpasswd -U USERNAME -r REMOTE

printf "oldpw\nNEWPW\nNEWPW\n" | docker run --interactive --rm ycmjason/smbpasswd -s -U USERNAME -r REMOTE
```

This will cause the password for `USERNAME` to be changed in the `DOMAIN` Active Directory domain.

### Required values

* Docker flags: `-i` or `--interactive` is required, otherwise your password
  can't be entered securely.
* Input parameters: Both the `USERNAME` and `DOMAIN` values are required.
