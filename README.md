wranglingf1data-docker
======================

Dockerfile for virtual machine to support Wrangling F1 Data projects.

This project will configure a virtual machine with a variety of tools to support the  [Wrangling F1 Data With R](https://leanpub.com/wranglingf1datawithr/) book.

The virtual machine contains:

* R/RStudio
* some helper R routines (eg for accessing the ergast API)
* some example datafiles

Once you have started the container, you should be able to see RStudio in your browser.

## Installation

In order to create the virtual machine, you should:

* install [boot2docker](http://boot2docker.io/)
* run *boot2docker*
* **Either:** to run with a project directory solely within the container, in the *boot2docker* terminal, enter the command `docker run -d -p 8787:8787 --name f1dj psychemedia/wranglingf1data`
* **Or:** to run with a project directory mounted from a shared folder on the host, in the *boot2docker* terminal, enter the command `docker run -d -p 8787:8787 -v /path/to/yourSharedDirectory:/home/rstudio/wranglingf1datashared --name f1dj psychemedia/wranglingf1data` This will create (or overwrite) the directory */home/rstudio/wranglingf1datashared* in the container with the contents of your shared directory on the host computer;
* *note that the installing the container may take some time to run as it downloads all the required packages*
	* the *port number* you will be able to find RStudio on is given by the first number set in the flag *-p NNNN:8787*. To access RStudio via port 8800, use  *-p 8800:8787* etc.
* in the  *boot2docker* terminal, enter the command `boot2docker ip`
	* the returned IP address (eg *192.168.59.103*) is the IP address you can find RStudio on
* point your browser to the appropriate IP address and port combination, for example: *http://192.168.59.103:8787*
* login to RStudio with username *rstudio* and password *rstudio*
* *on the first run*, create a new project: ![RStudio - open new project](https://farm8.staticflickr.com/7547/16017885150_b38d0d338f_o.png)

* use the folder *wranglingf1data* or *wranglingf1datashared* as the existing project directory

When you have finished working in RStudio, save the project and then stop the container it is running in from the *boot2docker* command line with the command `docker stop f1dj`

Any work you have been doing in RStudio, and any files you have saved within the container, will be retained within the container.

To restart the container, from the *boot2docker* command line, use the command `docker start f1dj`.


*For examples on using R and RStudio to explore Formula One results data, see the __[Wrangling F1 Data With R](https://leanpub.com/wranglingf1datawithr/)__ book*.
	
