# **How to run EIE331 software on a Mac**

So here is a summary of what you need:

1. A Mac preferably one that has an **Intel Core Duo processor** or better.

2. A **virtualization software**. Here are some choices:
   - **Parallels** ([http://www.parallels.com/](http://www.parallels.com/)): $79 retail but the campus computer store has a better deal ($39.99 for Mac OS X)
   - **VMware Fusion** ([http://www.vmware.com/products/fusion/](http://www.vmware.com/products/fusion/)): $50 retail but again the campus computer store may have a better deal
   - **VirtualBox** ([https://www.virtualbox.org/](https://www.virtualbox.org/)): It's FREE! Parallels is the most feature-rich of the lot but VMware Fusion is the fastest. Of course, VirtualBox is free like free beer!

3. **Windows 7 OS CD** from the campus computer store. I suggest you go to the Microcenter and carefully explain to the staff what you are attempting to do, so you get the correct version of Windows 7 (and the cheapest price).

4. **How to install Keil uVision for the Arm, MDK-Lite (32KB) Edition. It does not require a serial number or license key:**
   - Go to [https://www.keil.com/demo/eval/armv4.htm](https://www.keil.com/demo/eval/armv4.htm)
     - Enter your contact information with a valid address, phone, and email (use your official MUST email address),
     - Company = **Macau University of Science and Technology**,
     - devices = **TM4C123**,
     - Click submit.
   - Right-click on **MDK474.EXE** (5xx.xxK) and save it to your computer (do not install Keil version 5.xx).
   - Install in step 4 before. Directions on how to configure Keil.

5. **PCBartist** ([http://www.4pcb.com/](http://www.4pcb.com/)). Be careful when downloading not to agree to any add-ons. This free program tries to install other adware.

## **This is the order in which you should proceed with the installation:**

1. **Install the virtualization software.** The first two options are pretty straightforward, the third I have not run myself. Once you complete your installation, you will be presented with instructions on creating virtual images of the OSs you would like to run.

2. **You will install Windows within the virtualization software you choose.** Here is the prompt I get from Fusion when I choose File -> New. Insert the Windows CD and go through the steps of installing the OS. This should take around 45 mins or so.

3. **Now you are ready to run Windows.** Again, you will open your virtualization application and choose the Windows OS you just installed to be run. My Fusion screen looks like below showing Windows Vista as the OS that I can run: Click on the play button and you will boot the Windows OS. You will be running both Windows and Mac OS at this point. There are some neat features in both Fusion and Parallels that allow you to seamlessly integrate the running of applications from both operating systems.

4. **Install Keil by downloading it from the link (use Microsoft Explorer) above.** This will also install all the drivers you need to communicate with the board.

5. **Run Keil and connect the board to your Mac using USB.** Try the Blink example shown in class.

6. **Install PCBartist, and open one of the starter files from the lab.**

## **Student Experiences**

An EIE331 student reports this experience:

> “I am using a mid-2012 MacBook, trying to run Keil uVision on a Windows 7 image running inside VMWare Fusion. After much frustration, I have found that VMWare Fusion currently improperly handles the USB 3.0 ports on mid-2012 MacBooks, rendering the LM3S1968 eval board unable to properly communicate with the necessary tools. This can be fixed by either running Windows natively (via bootcamp, without virtualization) or by connecting the board via an external USB 2.0 hub. Connecting it through an external hub allows the board to be used inside VMWare Fusion.”

An EE senior student reports:

> "I was reading through the lab manual for your spring 2013 445M class and read your 'run EE software on Macs' instructions. I would like to provide some feedback on that (not the instructions but my experiences on running EE software on macs). I have not tried VMFusion or VirtualBox but I have been running Parallels 7 for the last two years. I have had two macs (high end 2011 macbook pro and low end 2012 retina macbook pro) and both have been able to run Keil, PCBArtist, and even the Xilinx and ModelSim software for my VHDL class flawlessly. Parallels is the more expensive of the 3 but it has served me well for all of my windows software needs, and I would like to confirm that Parallels is probably the safest bet to be able to do the labs for this and other classes."
