# Azul Vulnerability Detection Forwarder

Azul Vulnerability Detection is a web service provided by Azul. Once an account has been created for your organization, you will need to perform some on-time actions to configure the tool for your needs. Part of this initial setup also includes the installation of a minimal one **Forwarder** within your application environment.

The Forwarder is the communication broker, providing a single point of communication between many JVMs and the Azul Vulnerability Detection service. Your organization must have at least one Forwarder.

You can find more info in the official documentation: [One-time Setup for Azul Vulnerability Detection Within Your Organization](https://docs.azul.com/vulnerability-detection/setup-organization/introduction)


## How to use "azul-avd-forwarder" container
1. You have to have created an account in the [Azul Vulnerability Detection](https://docs.azul.com/vulnerability-detection/) portal
2. Configure **Forwarder** and download **forwarder-settings.properties** file. ([documentation](https://docs.azul.com/vulnerability-detection/setup-organization/setup))
3. Add **ic.host** to the  **forwarder-settings.properties** (e.g. ic.host = https://earlybird.api.crs-prod.azul.com)
4. Download the docker image 
``` bash 
docker pull vkorecky/azul-avd-forwarder
```
5. Run the container
``` bash 
docker run -d -p 443:443 -v {config}:/config vkorecky/azul-avd-forwarder
```
*Replace **{config}** with the path into the folder where is **forwarder-settings.properties** file*

6. You can find your AVD Forwarder at the link [https://127.0.0.1](https://127.0.0.1)
