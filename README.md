# SigSync

SigSync is an application that allows users to synchronize multiple streams of data. It is written in MATLAB using the MATLAB App Designer (R2020a), 
and is a work in progress.


## Installation

### Requirements
All Operating Systems:

  * [MATLAB Runtime (R2020a)](https://www.mathworks.com/products/compiler/matlab-runtime.html)

  * At least 4GB RAM is recommended.

Mac OSX:

  * WineHQ

#### Windows 7/10

Under sigsync/bin, run SigSync_installer.exe. This will also install MATLAB runtime (free), which is required to run this application. If you already have MATLAB runtime installed, you may try 
However, if you have issues using the installer try installing MATLAB runtime manually.


#### Mac OSX

Download the OSX MATLAB runtime for R2020a (see requirements), and Wine. Under sigsync/bin, right click GUIMatch.exe and click "Run with Wine"

#### Notes

If you have a valid MATLAB subscription, you may run sigsync/GuiMatch.mlapp directly through MATLAB and run the code manually. Note that GuiMatch.mlapp *must* remain in the same directory as its surrounding `.m` files. 
