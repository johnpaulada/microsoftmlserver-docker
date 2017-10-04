# Microsoft Machine Learning Server Docker Image
An unofficial Docker image for the Microsoft Machine Learning Server.

This followed the installation instructions for Ubuntu 14.04-16.04.

[![forthebadge](http://forthebadge.com/images/badges/built-with-love.svg)](http://forthebadge.com)
[![forthebadge](http://forthebadge.com/images/badges/60-percent-of-the-time-works-every-time.svg)](http://forthebadge.com)

## Prerequisites
To use this image, you need to install [Docker](https://www.docker.com/) first.

### Getting the Docker image
```bash
docker pull johnpaulada/microsoftml
```

## Usage

### Open a console
```bash
docker run -it johnpaulada/microsoftml /bin/bash
```

### Use the Machine Learning Server Python command
```bash
docker run -it johnpaulada/microsoftml mlserver-python
```

### Opening Jupyter Notebooks
To open a Jupyter notebook, run this on your console:
```bash
docker run -p 8888:8888 -it johnpaulada/microsoftml /opt/microsoft/mlserver/9.2.1/runtime/python/bin/jupyter notebook --no-browser --port=8888 --ip=0.0.0.0 --allow-root
```
Then copy the link the command will give you and open it in your browser.

## License
MIT