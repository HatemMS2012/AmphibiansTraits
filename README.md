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

The goal of this use case is to show how to import amphibians traits that are stored in CVS file. 
Before starting the import, please ensure that:
+ The used CSV delimiter is the **comma**: ","
+ The decimal delimiter is the **point**: "."
+ The coloumn **order** of the imported CSV matches that of the  corresponding table (more information later).




