# Microsoft Machine Learning Server Docker Image
An unofficial Docker image for the Microsoft Machine Learning Server.

[Microsoft Machine Learning Server Documentation](https://docs.microsoft.com/en-us/machine-learning-server/)

[![forthebadge](http://forthebadge.com/images/badges/built-with-love.svg)](http://forthebadge.com)
[![forthebadge](http://forthebadge.com/images/badges/60-percent-of-the-time-works-every-time.svg)](http://forthebadge.com)

## [What is Microsoft Machine Learning Server?](https://docs.microsoft.com/en-us/machine-learning-server/what-is-machine-learning-server)
> Machine Learning Server includes a collection of packages, interpreters, and infrastructure for developing and deploying R and Python-based machine learning and data science solutions on a range of platforms, from standalone installs on Linux and Windows to large distributed deployments on node clusters. With these custom R and Python packages, Machine Learning Server brings the best of open source and proprietary innovation together.

## Rationale
> It lets people try something easily without having a large amount of setup. - [@moshen](https://github.com/moshen)

This repo allows you to try out the Microsoft Machine Learning Server without actually going through the trouble of installing it.

Here are some things you can do with it:
- Run Jupyter Notebook, do some machine learning experiments and take some notes.
- Run some Python code in the Machine Learning Server interactive Python shell.
- Open up a console and run your Python or R scripts there.
- Use it as a machine learning service in a web application prototype using `docker-compose`.

## Disclaimer
This Docker image was built for development/prototyping in mind. If you need this in production, go to their [product page](https://www.microsoft.com/en-us/sql-server/machinelearningserver).

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

## Licensing 

### [Microsoft Machine Learning Server License](https://blogs.technet.microsoft.com/machinelearning/2017/09/25/introducing-microsoft-machine-learning-server-9-2-release/)
> Microsoft Machine Learning Server is built into SQL Server 2017 at no additional charge.

> Microsoft Machine Learning Server stand-alone for Linux or Windows is licensed core-for-core as SQL Server 2017.

> All customers who have purchased Software Assurance for SQL Server Enterprise Edition are entitled to use 5 nodes of Microsoft Machine Learning Server for Hadoop/Spark for each core of SQL Server 2017 Enterprise Edition under SA. In addition, we are removing the core limit per-node; customers can have unlimited cores per node of Machine Learning Server for Hadoop/Spark.

### Repo License
MIT