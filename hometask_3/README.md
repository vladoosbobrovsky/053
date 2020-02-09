# Hometask_3

There're some problems with response.varfile

## Installation
Please check out my provision.sh

```bash
#echo "
#app.confHome=/var/atlassian/application-data/confluence7_3_1
#app.install.service$Boolean=false
#portChoice=default
#launch.application$Boolean=false
#sys.adminRights$Boolean=true
#sys.confirmedUpdateInstallationString=false
#sys.installationDir=/opt/atlassian/confluence7_3_1
#sys.languageId=en" >> response.varfile
```

As for me -> this method do not working properly

I created a response.varfile and all files are located in ``` /vagrant ```
### How to run it
TO RUN MY SCRIPT please make sure that's you have ``` response.varfile ``` &&  ``` atlassian-confluence-7.3.1-x64.bin ``` at the project DIR -> ```hometask_3```  or ```/vagrant```
