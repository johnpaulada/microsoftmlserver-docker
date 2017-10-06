# Microsoft Machine Learning Server Docker Image
An unofficial Docker image for the Microsoft Machine Learning Server.

[![forthebadge](http://forthebadge.com/images/badges/built-with-love.svg)](http://forthebadge.com)
[![forthebadge](http://forthebadge.com/images/badges/60-percent-of-the-time-works-every-time.svg)](http://forthebadge.com)

## Rationale
> It lets people try something easily without having a large amount of setup. - [@moshen](https://github.com/moshen)

This repo allows you to try out the Microsoft Machine Learning Server without actually going through the trouble of installing it.

Here are some things you can do with it:
- Run Jupyter Notebook, do some machine learning experiments and take some notes.
- Run some Python code in the Machine Learning Server interactive Python shell.
- Open up a console and run your Python or R scripts there.
- Use it as a machine learning service in a web application prototype using `docker-compose`.

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
docker run -p 8888:8888 -it johnpaulada/microsoftml
```
Then copy the link the command will give you and open it in your browser.

## Samples
- [Python samples for MicrosoftML](https://docs.microsoft.com/en-us/machine-learning-server/python/samples-microsoftml-python)
- [R samples for MicrosoftML](https://docs.microsoft.com/en-us/machine-learning-server/r/sample-microsoftml)

## Notes
- The image is pretty big so make sure you have some space left on your computer.

## Credits
Great many thanks to [@moshen](https://github.com/moshen) for doing a wonderful job cleaning up the Dockerfile and giving me tips regarding Docker. :tada:

## License
MIT