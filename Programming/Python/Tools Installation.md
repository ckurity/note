- [github](#github)
- [pipx](#pipx)     ==> pipx is recommended over pip for system-wide installations
    - [pip](#pip)
    - [requirements.txt](#requirementstxt)
- [Docker](#docker)
- [References](#references)

-------------------------------------------

## [github](#github-1)
```sh
git clone https://github.com/CoreSecurity/impacket.git
cd impacket/
python setup.py install
```

```sh
python3 -m pip install pipx
git clone https://github.com/mpgn/CrackMapExec
cd CrackMapExec
pipx install .
```

## [pipx](#pipx-1)
pipx is recommended over pip for system-wide installations
```sh
python3 -m pipx install .
```

```sh
apt install pipx git
pipx ensurepath
pipx install git+https://github.com/Pennyw0rth/NetExec
```

### [pip](#pip-1)
pipx is recommended over pip for system-wide installations
```sh
pip install impacket
```

```sh
apt install python3 python3-pip
git clone https://github.com/Pennyw0rth/NetExec
cd NetExec
python3 -m venv .
source bin/activate
pip install .
NetExec
```

### [requirements.txt](#requirementstxt)
```sh

```

## [Docker](#docker-1)
Build Impacket's image:
```sh
docker build -t "impacket:latest" .
```

Using Impacket's image:
```sh
docker run -it --rm "impacket:latest"
```

## 

## 
```sh

```

## 
```sh

```

## 
```sh

```

## 
```sh

```

## 
```sh

```

# [References](#references-1)

https://www.puckiestyle.nl/impacket/

https://github.com/fortra/impacket#setup

https://pypi.org/project/impacket/