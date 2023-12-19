

Getting Started

In this module, you’ll explore the various types of 3D printers and 3D printing materials available at Ashoka and learn how to operate a 3D printer. You will get an introduction to 3D CAD(_Computer Aided Design_) or 3D modeling. Furthermore, you will be guided through the entire process of 3D printing and obtain a 3d Printed part. 

Introduction

There are majorly 5 types of 3D printers which are _Fused Deposition modeling (FDM),_ [_Stereolithography (SLA)_](https://all3dp.com/2/stereolithography-3d-printing-simply-explained/)_,_ [_Digital light processing (DLP)_](https://all3dp.com/2/dlp-3d-printer-digital-light-processing-explained/)_,_ [_Selective laser sintering (SLS)_](https://all3dp.com/1/sls-3d-printing-the-ultimate-guide/)_, and_ [_Binder jetting printers_](https://all3dp.com/1/betting-on-binder-jetting-for-production-additive-manufacturing/)_._ 

Each type of 3D printer has its own strengths and weaknesses and is used based on specific needs. We will be focussing on FDM 3D printers in this documentation, but I have attached links to other types of 3D printers in case you are interested in learning more. The image below shows an FDM 3D printer named  Ender 3.

![](https://lh7-us.googleusercontent.com/SnUlZFmi5LkJF9X-VzfWIA7p1ToK8k6ZxwsIYuOX5kRoNV_6t4NHxe3cxXviO2HCRzRTNfqOPxonvwcOZHcnObk0JKatwrmNwdRvb9njxv1uPdk29qUjODdd5T-8NLkw1JMHEUaCwEZWtgLP-GuDuYM)

Computer Aided Designing(CAD)

3D CAD is a type of computer software that allows you to create and modify 3D models of objects. There are different types of software you can use for 3D modeling among which a few are [Autodesk Tinkecad(beginner)](https://www.tinkercad.com/), Autodesk Fusion 360(Advanced), SolidWorks(Advanced), [Onshape](https://www.onshape.com/en/), etc. We will be teaching you more about 3D modeling in a different module.

Below You can see the interface of Autodesk interface.

![](https://lh7-us.googleusercontent.com/Og0Ar56E7YkXkeV3KXPGchPiOAU8-N9w7MHj5gpGNjiYuUHOR3uW3SfLAz5Z290FJb4Pcp4_t5kttv3kHeH8vmzznKQS6nJ3mCYn39u7nBE8u4-HIrolqD-xCUL3wqsNjGzIuXzN0bQ158HYD4jZ4C0)

Below links to a  few videos about tinkercad are attached and can see them if you don’t know about 3d modeling but it’s only starting point and you can only work with basic shapes and onshape is the place to go to directly if you are looking to make more complicated things. 

- [Tinkercad | Learn how to use Tinkercad](https://www.tinkercad.com/learn)

- [(8) TinkerCAD - Tutorial for Beginners in 9 MINUTES! \[ COMPLETE \] - YouTube](https://www.youtube.com/watch?v=gOs6Mdj7y_4)

File Types

STEP files are commonly used in computer-aided design (CAD)/3D modeling to contain three-dimensional model data for a wide variety of design tasks. While for 3D printing Processes we use STL/OBJ files. 

STEP(Standard for the Exchange of Product Data)

- STEP files are a way to exchange 3D model data between different computer programs. They are text-based files that can be read and written by a variety of CAD/3D modeling software applications. like-JPG/PNG file type is used for exchanging images between different Software and devices.

- This file contains a complete representation of a 3D model, including the geometry, dimensions, and other properties of the model.

STL/OBJ files

- STL and OBJ are two types of 3D files. STL files are made up of triangles, while OBJ files can store more information about a 3D model, like materials, textures, and other properties.\`

- You can understand it better with an analogy, STL files are like Lego bricks. Each brick is a triangle, and you can put them together to create any shape you want. OBJ files are like a complete Lego set. They have all the bricks you need to build a specific model, plus instructions on how to put it together.

3D-Printing Process

By now, you should have a good understanding of 3D models.. The next step in the 3D printing process involves converting the 3D model into a different file format known as G-code. 

This file(_G-code_) contains various properties/parameters for the 3d printer that are essential for printing specific 3d models, but it also provides instructions for the movement of the components of the 3d printer

We will start by learning about softwares that are used for making gcode,We call these softwares slicing software.

Slicing 

Slicing is the process of cutting a 3D model into thin layers so that a 3D printer can print it. The slicer software does this by dividing the model into horizontal slices, like a loaf of bread. It then creates a path for the printer nozzle to follow to print each layer.

The slicer also determines the printing settings, such as the layer height, print speed, and infill density. You will learn about these setting later in the documentation.

There are many slicing programs available, but we will be using _Superslicer_. Superslicer is a popular choice because it is open-source and customizable.

How to Install and Setup Superslicer?

1. Open the GitHub repository of super slicer 

link-[Releases · supermerill/SuperSlicer (github.com)](https://github.com/supermerill/SuperSlicer)

2. Then On the left-hand side go to the **releases**

![](https://lh7-us.googleusercontent.com/dPlDM9TW1KFUBgFAnxyyPUuld7p5_lz5Z9QU9BIarYYgusT3VQaZ2kcBYP0WLIukN351vWV8s46l0z2pwaeAOiTEtgr0cPvDW-QbtBK9372FV6xSKxlwfwfCViRcQLEYinXDCVjHIiZX0f_E1g1KsfQ)

3. After going to releases scroll down click the title of version where you can see **latest release**.

![](https://lh7-us.googleusercontent.com/2RQeKF28FhgCyw7x5T7O7edqxOxjBQvMNZ8zMsGXz9dUY6bX51vVqDx-fCFpo300RxLpkZbaQ-RqNivz7l2WTv0EUCxcAaDb3W5t5pdvw09bHqLivyixEtYOFkH8ykh6MFRV0bxDnHLd-4JYDD4-d90)

4. After you open the version, scroll down to the bottom to see the files for different operating systems. Download the file for your operating system. Install **.zip** for windows or **.dmg** for mac. I am using windows so I am downloading this file.

![](https://lh7-us.googleusercontent.com/V5gx1Sw0e9Yn2lP181VpmkzXAjJRIssTxrVauwMGa-JJC_SyxvSS1Xm2R5_et-8apYZiLNJk02Z2RZfSpMClzZe4wTUpmHhBwgS8JUleQGbq_9A3QM9qKp4h0WilNsbxTVsL5mhxZkflctygF3oE-VE)

5. If you installed **.zip** extract the file and run **superslicer.exe** and if you downloaded **.dmg** then double click the file and you will find file named **superslicer** and run it.

After running the file you will see the software window as shown below.

![](https://lh7-us.googleusercontent.com/sioHwxwm9YLwqDaXio0maMjpb0w5-I9KKZkRBDO3QQoF68YHnDJjba0_wrIh_jq4TGdCJjBtBiAm7HCMZMeFNgolvVw8qXR7s1LAB_y914wVBdxoDcqQNfXgW0ZZ8ouDP7vjdnNyGMFE03JBcZjR7eg)

6. Now select **Custom 3d printer** and press finish as shown below in video.

![](https://lh7-us.googleusercontent.com/L0YwtdRdU9Ug-3Zb4SX5vz3KvCRSFZWRfxt82sqYRzsQ8-dsozuMU0QlTDtHnkj-IVjnM15hqxoBH_75Jr8OmGoQxgnQlq5e8ocKeMkTMw8RbmMfhFHjHTsaLP7ccqo6LCMQj5wvShRjVA9M7dhpzS0)

7. Download a configuration file and import it into superslicer by going to **File ➡️ Import ➡️ import config bundle.** And then you are ready to use superslicer ****. (Link to config file- <https://drive.google.com/file/d/13fPIKbKAKaz98833RfH7WbvTwqeOqStf/view?usp=sharing>)

![](https://lh7-us.googleusercontent.com/SpWC9VGaAEZJmz4k7FNSUFPjjQiCFFWbqYX9fwZhMgLje0_8i2Ab5w7YxAaJeR8qiiGu2m9qvnKAm9n0B55QHyCbOx9y_krDWQKG9oXFYF4tLGm-qrhU6iJV-4UNBJcgDa5PIMPy0Nn4hk9iaH0jfcw)

Now that you have successfully installed and setup the Superslicer, we will learn how to import a 3D model into the it and set the different parameters for your 3D printer.

How to Import 3d model in superslicer?

You can use your 3d model but If you dont have a 3d model you can use the sample 3d model  attached below. 

link-<https://drive.google.com/file/d/1olQBKUisBOnMDA_CIEv2CJcaTDTpAM-u/view?usp=sharing>

1. From the top menu go to **File ➡️Import ➡️ import STL/OBJ/AMF/…**  Or press “**CTRL + I”** if you are on windows.

2. Now go the file location, select the **3d model** or **.stl** file and press **Enter**. Then, you will get your 3d model inside the superslicer.

![](https://lh7-us.googleusercontent.com/eOwK4EuLTVVkBpd9GB701nb1LdeBJzikC2TXzMStY6fvuLpjHL_9S4bzg_zEabE_fC_Gxhy4wHJfR9gcQUVdJRcRHwDQX7Nwah9D7DRcKj5e7fuew-47k6eTcsH34uYMKvaPqW8gbtEpU9KyoEmLFt4)

Different Parameters for 3d Printing

For obtaining a 3D printed part, there are aspects about the print that need to be decided and informed to the machine before printing. In the event of Fused Deposition Modelling(FDM), there needs to be a few rules and instructions defined for the printer before we can send off our gcode to the machine for execution. These are called “Parameters” of the print. 

1. Infill - Since 3D prints are hollow, we also have to define how much of the space on the inside we wish to fill up with the material we are printing. This is normally expressed as a percentage of the space available inside the innermost perimeter of the print. The main factors it affects is the weight and strength of the print. 

2) Supports -  Supports are temporary structures that hold up overhanging features of a 3D     print. They are needed to prevent overhangs from collapsing, improve surface quality, reduce warping, and increase strength.

Supports are typically generated automatically by slicing software, but you can adjust the settings to ensure they are placed and sized correctly.

![](https://lh7-us.googleusercontent.com/PzacDb2xX3TRa0-eas63Z3W6hXzUOtP5Gm6SQa-ubKJUSyi-6k9hcJjd3UNNz7gC1KXaH_D6z-OEebGBgrleVP8SyYvDZD76G4L1qLOdXb-lJgfKRSncS3XRRmDqlKYS92eov23RzEeErx6TYAeR5JY)

To generate supports and set infill density, you can find options for both in the **top right menu**. To generate supports, set the option to **"Everywhere"**. For infill, set the percentage to your desired level.

![](https://lh7-us.googleusercontent.com/W4xUBR3gBt4jcCNz_Lx9UlAD21DWPdatC0-HeBPeshfpl3x5u6IiwjPvypuslPpsq2R4Nj72db21kDLirV5JFl8xNwidOJd6alI5GgknzATompu-on1EMx52_N2BkjPZL7_rofaMmPHH9aCvunTNNhA)

                                             

Slicing and exporting the Model

 

Once you have defined all the parameters, you can preview the sliced model by clicking on the **"Sliced Preview"** tab at the top left. The **G-code preview** provides additional information, such as the estimated print time, filament consumption, and a layer-by-layer view of the print.

![](https://lh7-us.googleusercontent.com/w7Hjpv1-WL4jBoEM50al5TbCvFNYMkD_lo9EPNGwpsEeJzgNFteO7sz_a97eJtzTe7wXH2sedBM-HWUPWlvOYgdqISAcC8MrW8zA-B4tX37F3xNR_L---UPYG72WKlLGmLWfeLHMKbDj-G5gHSvIDds)

You can export the G-code by going to **File ➡️Export ➡️Export G-code** and then save it to your desired location.

Printing 3D model

To print the 3D model we need to send the **.gcode** to the 3d printer. To do this we will use a software called **Moonraker.**

**Moonraker** is a web server that facilitates communication between 3D printer host computers and client applications
