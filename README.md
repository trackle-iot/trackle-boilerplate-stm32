# Template project for Trackle connected firmware

<p align="center">
<br><img src="https://www.trackle.io/wp-content/uploads/2022/06/iot-platform-trackle.png" alt="drawing" width="100"/></p>

## Table of contents

1. [Content of the repository](#content-of-the-repository)
2. [Setup of a new project](#setup-of-a-new-project)
3. [Development environment](#development-environment)
4. [Functionality provided by this template](#functionality-provided-by-this-template)

## Content of the repository

This repository contains a skeleton project that was created with the intent of providing a base for the development of future applications that want to connect to the Trackle platform.

The project is **fully configured to connect to the cloud** (except for credentials), and comes **with a good amount of boilerplate code** already written.

## Setup of a new project

To create a new project based on this template, please follow these steps:

1. Clone the repository:

```
git clone https://github.com/trackle-iot/trackle-boilerplate-stm32.git <new_folder_name>
```

2. Move to the project directory:

```
cd <new_folder_name>
```

3. Remove the original repository from remotes. By doing this, you avoid that, by doing `git push`, these changes end up in the template project's repository:

```
git remote remove origin
```

4. Create a new empty repository (no default README or .gitignore) where to push the new project (e.g. on Github);

5. Add the new repository as origin of the new project and push changes to it:

```
git remote add origin <new_repository_url>
git branch -M main
git push -u origin main
```

From now on, all the commits that will be pushed with the `git push` command will be pushed to the new repository.

6. Add trackle-library

Download last trackle-library-cpp release from [here](https://github.com/trackle-iot/trackle-library-cpp/releases/latest), unzip it, rename the folder to trackle-library and move it to the root folder of the project

## Development environment

The project was created with STM32CubeIDE for NUCLEO-F207ZG, so this template is tought to be used inside such environment.

## Functionality provided by this template

Once compiled, the firmware provides the following functionality:
  * Connection to the Trackle cloud through Ethernet;
  * Usage examples of cloud related main features;

### Connection to the cloud

#### Get a Device ID and a private key
* Create an account on Trackle Cloud (https://trackle.cloud/)
* Open "My Devices" section from the drawer
* Click the button "Claim a device"
* Select the link "I don't have a device id", then Continue
* The Device ID will be shown on the screen and the private key file will be download with name <device_id>.der where <device_id> is Device ID taken from Trackle.

Device ID and the private key are the credentials needed by Trackle cloud to authenticate and identify the device.

In order to connect to the cloud (and even to be able to build the firmware), one must decide if connection will be performed using:
  * Hardcoded credentials;

Credentials must be provided to the firmware by putting them in the source code (see instructions in [trackle_hardcoded_credentials.h](include/trackle_hardcoded_credentials.h)). This solution is provided since it's the quickest and it's tought to be used for tests.

### Cloud features examples

The following features are shown in the firmware:
  * POST functions;
  * Variables GET;
  * GET through functions;
  * Events publishing.
