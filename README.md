# Frontend for Amphibians Traits

The goal of this project is to provide an easy to use frontend for a database of amphibians’ traits information. For this purpose, we created a relational database model for amphibians trait data and built a frontend upon it using the [Xataface framework](http://www.xataface.com). The frontend provides the standard SCRUD (Search, Create, Read, Update and Delete) operations as well as user permission and registration functionalities.

##Motivation

In general, biologist store trait data in spreadsheets (e.g. Excel) in non-standardized way. This causes a serious challenge for data sharing, management, and collaboration with other scientist. For this purpose, we analyzed the structure of sample dataset on amphibians’ traits provided by biologists at MFN-Berlin and developed a relation data model. Subsequently, we built a frontend for efficient management and retrieval of the data using [Xataface framework](http://www.xataface.com).

##The Data Model
After analyzing the sample dataset, we came up with a relation data model for amphibians' traits data. At the heart of the model is the "taxonomic_identity entity", which describes a given taxon. Each "taxonomic_identity" is described by set of measurements such as body size, head characteristics and so on (see the figure below). 

![Relational Model](/Model/AmphibiansERD.png)

The data model was implemented using MySQL.

##The Frontend
In order to effieciently manage trait data, we build a frontend based on Xataface framework. Xataface is an open source framework for developing data-driven web applications in PHP and MySQL.

The frontend provides the follwoing functionalities:

+ SCURD: search, create, read, update and delete actinos
+ User registeration and rights management
+ Data import from CSV files
+ Data export as CSV and XML



