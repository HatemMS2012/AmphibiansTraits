# Frontend for Amphibians Traits

The goal of this project is to provide an easy to use frontend for a database of amphibians’ traits information. For this purpose, we created a relational database model for amphibian’s trait data and built a frontend upon it using the [xataface framework](http://www.xataface.com). The frontend provides the standard SCRUD (Search, Create, Read, Update and Delete) operations as well as user permission and registration functionalities.

##Motivation

In general, biologists store trait data in spreadsheets (e.g. Excel) in non-standardized way. This causes a serious challenge for data sharing, management, and collaboration with other scientists. For this purpose, we analyzed the structure of sample dataset on amphibians’ traits provided by biologists at MFN-Berlin and developed a relation data model. Subsequently, we built a frontend for efficient management and retrieval of the data using [xataface framework](http://www.xataface.com).

##The Data Model
A full [specification](/Model/Trait_data_base_amphibians_v2.xlsx) of the spreadsheet used at MFN-Berlin for storing amphibians' trait data was obtained. After analyzing the specification, we develped a relation data model for amphibians' traits data. At the heart of the model is the "taxonomic_identity entity", which describes a given taxon. Each "taxonomic_identity" is described by set of measurements such as body size, head characteristics and so on (see the figure below). 

![Relational Model](/Model/AmphibiansERD.png)

The data model was implemented using MySQL.

##The Frontend
In order to efficiently manage trait data, we build a frontend based on xataface framework. [xataface](http://www.xataface.com) is an open source framework for developing data-driven web applications in PHP and MySQL.

The frontend provides the following functionalities:

+ SCURD: search, create, read, update and delete actions
+ User registration and rights management
+ Data import from CSV files
+ Data export as CSV, EXCEL and XML
+ Report generation tool using [ckeditor](http://ckeditor.com/)


##Installation Instructions

Initially, you need to have the following installed:
+ MySQL database
+ Apache Server
+ PHP

###Database Dump Import
A dump of the database structure is provided in the project under [/DBDump](/DBDump). A simple way to import the dump is to use MySQL workbench.

###Installing Xataface Framework
+ Option I: Follow the download and installation instruction of Xataface as described on their [website](http://xataface.com/documentation/tutorial/getting_started/installation)
+ Option II: Unpack the zip file provided with this project [xataface.zip](xataface.zip) to a directory somewhere in your web server's document root (e.g. /root/MyApps/xataface).


###Installing the Frontend
+ Obtain a copy of this repository and unpack it into the same directory as your xataface installation (e.g. /root/MyApps/amphibians).
+ Got to http://[yourserver]/MyApps/amphibians/
+ For full functionality: Log in as administrator: username: "admin" and password: "admin" 
+ For a read only access use: username "guest" and password "guest"
+ Or register as new user and select your permission (for test purposes the registration is not yet managed properly)
+ Enjoy!!


##Use Case: Import of Amphibian Traits in CSV 

The goal of this use case is to show how to import amphibians traits that are stored in CVS file. The web application allows the import of a complete trait data, i.e., consisting of taxonomic identify and all other related measurement, as well as, the import of single measurement, e.g., colouration inforamtion (coulouration table in the figure above).
However, before starting the import, please ensure that:
+ The used CSV delimiter is the **comma**: ","
+ The decimal delimiter is the **point**: "."
+ The coloumn **order** of the imported CSV matches that of the  corresponding table (see the example below).
+ The CSV file have a **header line** 


###Example: Importing Complete Amphibians' Trait Data

We prepared a sample of a valid CSV file that contains complete trait dataset in [Examples/traitsExamples/Sample_Full_Traits.csv](Examples/traitsExamples/Sample_Full_Traits.csv). 
**Please note** that if you want to import your own CSV file, you have to make sure that the order of the columns in your CSV file matches that the sample file. 
In the sample file you can notice that ID column is empty. In this case, an ID will be generated automtically as combination of the Genus and the Species columns accordoing to the follwing format: **ID = "Genus_Species"**

To start the import, go to your homepage, click on "Taxnomic Identity" tab and then on "Import Taxnomic Identity" button as seen in the steps 1 and 2, respectively, in the screenshot below:

![Import Full Traits 1](/screenshots/import_full_traits_1.png)

Next, select the input format of the imported file (right now only CSV is supporte) and select the file usinge the browse button (see below):
![Import Full Traits 2](/screenshots/import_full_traits_2.png)

Click the submit button and once its successful you will be directed to a page like the following below:
![Import Full Traits 3](/screenshots/import_full_traits_3.png)


Click the button "Looks good. Proceed with import" and that is all.



 





