# SigSync

SigSync is an application that allows users to synchronize multiple streams of data. It is written in MATLAB using the MATLAB App Designer (R2020a), 
and is a work in progress. Some features may be complete, or not work at all. New features and bug fixes will continue to be pushed via [Github](https://www.github.com/manashkalyon/sigsync).

If you have any questions, concerns, feature requests, or bug reports please feel free to contact me directly:

`Manash K. Sahoo | Psychology B.S.  `  
`Department of Psychological and Brain Sciences`
`Indiana University-Bloomington  `   
`mksahoo@iu.edu`


## Installation

### Requirements
All Operating Systems:

  * [MATLAB Runtime (R2020a)](https://www.mathworks.com/products/compiler/matlab-runtime.html)

  * At least 4GB RAM is recommended.

Mac OSX and Linux Distros:

  * WineHQ

#### Windows 7/10

Under sigsync/bin, run SigSync_installer.exe. This will also install MATLAB runtime (free), which is required to run this application. If you already have MATLAB runtime installed, you may try running sigsync/bin/SigSync.exe by itself.
However, if you have issues using the installer, try installing MATLAB runtime manually (link above).


#### Mac OSX

Download the OSX MATLAB runtime for R2020a (see requirements), and Wine. Under sigsync/bin, right click GUIMatch.exe and click "Run with Wine"

#### Notes

If you have a valid MATLAB subscription, you may run sigsync/GuiMatch.mlapp directly through MATLAB and run the code manually. Note that GuiMatch.mlapp *must* remain in the same directory as its surrounding `.m` files. 



#### File Formats

Signals should follow the following format:
   * Stored in a .CSV or .XLSX file
   * First column vector should represent time-values (X Axis)
   * Second column vector should represent dependent variable (Y Axis)
   * NO headers  
Video files should be of .mp4, .mov, or .avi

#### Current Issues

Lengthy videos take quite a while to load. This will hopefully be fixed in a future version.  
Exporting as .GIF does not work

  
    
      
        

*Special thanks to the IU Department of Psychological and Brain Sciences, IU Department of Undergraduate Research, Dr. Jeremy I. Borjon, and Dr. Linda B. Smith.*
