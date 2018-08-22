### Architecture templates

This repository contains templates to easily create new screens in an application.

#### Installation

Download the contents of this repository, and copy the *ArchitectureScreenTemplate* folder to the following path:

```
<YOUR_INSTALL_PATH>\Android Studio\plugins\android\lib\templates\other
```

For example, on Windows, this might be here by default:

```
C:\Program Files\Android\Android Studio\plugins\android\lib\templates\other
```

#### Usage

Right click either on the `ui` package or any nested package inside the `ui` package. Choose `New -> Other -> Architecture screen`.

![](/images/create_new.PNG)

In the wizard that appears, enter the name of the screen you wish to create in UpperCamelCase (but without any suffixes, no "`Fragment`", etc.), as well as the desired ViewState type for this screen (more info [here](https://gitlab.autsoft.hu/android-architecture/android-arch-kotlin#view-states)).

![](/images/wizard.PNG)

Click `Finish` to create the screen, and add the created files to Git:

![](/images/result.PNG)
