
# The Evolution Of The   <img src="https://user-images.githubusercontent.com/36292743/78153266-b89e9500-73ef-11ea-9a14-713d45be2105.png" width="60" height="50"> 


1. [ Authors ](#Authors)
2. [ History Of The Language ](#History-Of-The-Language)
3. [ Why Was It Invented ?](#Why-Was-It-Invented) 
4. [ Why Shall We Use It ? ](#Why-Shall-We-Use-It)  
5. [ When Shall We Use It ? ](#When-Shall-We-Use-It) 
6. [ Setup R ](#How-To-Setup-R) 
   * [Linux](#Linux) 
   * [Mac](#Mac) 
   * [Microsoft](#Microsoft) 
7. [ Setup R-Studio ](#How-To-Setup-R-Studio) 
8. [ Example Codes ](#Example-Codes) 
   * [Exploring Data](#ExploringData) 
   * [Managing Data](#ManagingData)
   * [Linear Regression](#LinearRegression)
   * [Polynomial Regression](#PolynomialRegression)
9. [ Things That Are Specific To R Language ? ](#Things-that-are-specific-to-R-language) 
10. [ RESOURCES ](#RESOURCES) 

<a name="Authors"></a>
## Authors

* **George Ross Ihaka**

*Alma mater: University of Auckland , University of California, Berkeley*

*Fields: Statistical Computing*

* **Robert Clifford Gentleman**

*Alma mater	University of Washington , University of British Columbia*

*Research: Computational Biology, Revolution Analytics*

<a name="History-Of-The-Language"></a>
## History Of The Language

If we need to look at the history of R language, we must first examine the S. Because R is a dialect of S. S is a language that was developed by John Chambers and others at the old Bell Laboratories. S was invented in 1976 as an internal statistical analysis environment- originally implemented as Fortran libraries. Early versions of the language did not contain functions for statistical modeling.

In 1988 the system was rewritten in C and began to resemble the system that we have today (this was Version 3 of the language). The book Statistical Models in S by Chambers and Hastie (the white book) documents the statistical analysis functionality. Version 4 of the S language was released in 1998 and is the version we use today. The book Programming with Data by John Chambers (the green book) documents this version of the language.

Since the early 90’s the life of the S language has gone down a rather winding path. 

* In 1993 Bell Labs gave StatSci (later Insightful Corp.) an exclusive license to develop and sell the S language. In 2004 Insightful purchased the S language from Lucent for $2 million.

* In 2006, Alcatel purchased Lucent Technologies and is now called Alcatel-Lucent.

* Insightful sold its implementation of the S language under the product name S-PLUS and built a number of fancy features (GUIs, mostly) on top of it—hence the “PLUS”. 

* In 2008 Insightful was acquired by TIBCO for $25 million. As of this writing TIBCO is the current owner of the S language and is its exclusive developer.

* The fundamentals of the S language itself has not changed dramatically since in 1998. 

* In 1998, S won the Association for Computing Machinery’s Software System Award, a highly prestigious award in the computer science field.
 
 
**Back to R**

The R language came to use quite a bit after S had been developed.One key limitation of the S language was that it was only available in a commercial package, S-PLUS. 

In 1991, R was created by Ross Ihaka and Robert Gentleman in the Department of Statistics at the University of Auckland. In 1993 the first announcement of R was made to the public. Ross’s and Robert’s experience developing R is documented in a 1996 paper in the Journal of Computational and Graphical Statistics:
Ross Ihaka and Robert Gentleman. R: A language for data analysis and graphics. Journal of Computational and Graphical Statistics, 5(3):299–314, 1996.

In 1995, Martin Mächler made an important contribution by convincing Ross and Robert to use the GNU General Public License to make R free software. This was critical because it allowed for the source code for the entire R system to be accessible to anyone who wanted to tinker with it (more on free software later).

In 1996, a public mailing list was created (the R-help and R-devel lists) and in 1997 the R Core Group was formed, containing some people associated with S and S-PLUS. Currently, the core group controls the source code for R and is solely able to check in changes to the main R source tree. Finally, in 2000 R version 1.0.0 was released to the public.

<a name="Why-Was-It-Invented"></a>
## Why Was It Invented ?

The general “S” sets the stage for the design of the language itself, which many programming veterans find a bit odd and confusing. In particular, it’s important to realize that the S language had its roots in data analysis, and did not come from a traditional programming language background. Its inventors were focused on figuring out how to make data analysis easier, first for themselves, and then eventually for others.

In Stages in the Evolution of S, John Chambers writes:

“We wanted users to be able to begin in an interactive environment, where they did not consciously think of themselves as programming. Then as their needs became clearer and their sophistication increased, they should be able to slide gradually into programming, when the language and system aspects would become more important.”

The key part here was the transition from user to developer. They wanted to build a language that could easily service both “people”. More technically, they needed to build language that would be suitable for interactive data analysis (more command-line based) as well as for writing longer programs (more traditional programming language-like). 

So, as a conclusion R language was invented for performing statistical operations suitable for statistical software and data analysis that is widely wanted among statisticians and data miners.


<a name="Why-Shall-We-Use-It"></a>
## Why Shall We Use It ?

R language have become most popular language in the world of Data Science. It is heavily used in analyzing data that is both structured and unstructured.

**Except that it can be used for data analysis R is should be used because :**

:small_blue_diamond: interactive language

:small_blue_diamond: data structures

:small_blue_diamond: graphics

:small_blue_diamond: missing values

:small_blue_diamond: functions as first class objects

:small_blue_diamond: packages

:small_blue_diamond: community


Data analysis is inherently an interactive process — what you see at one stage determines what you want to do next.  Interactivity is important.  Language is important.  The two together — an interactive language — is even more than their sum.  But there is a down-side: compromises between interactive use and programming use are the cause of some user trauma.

R has a fantastic mechanism for creating data structures.  Obviously if you are doing data analysis, you want to be able to put your data into a natural form.  You don’t have to warp your data into a particular structure because that is all that is available.

Graphics should be central to data analysis.  Humans are predominantly visual, we don’t intuitively grasp numbers like we do pictures.  It is easy to produce graphs for exploring data. The default graphs can be tweaked to get publication-quality graphs.

Real data have missing values. Missing values are an integral part of the R language.  Many functions have arguments that control how missing values are to be handled.

Functions, like mean and median, are objects that you can use like data. You can easily change your analysis to use the median (or some strange estimate you make up on the spot) rather than the mean.

R has a package system that makes it extremely easy for people to add their own functionality so it is indistinguishable from the central part of R. There are thousands of packages that do all sorts of extraordinary things.

The R community is very strong, and quite committed to improving data analysis.


<a name="When-Shall-We-Use-It"></a>
## When Shall We Use It ?


Data Science and Big Data have proved themselves useful and even necessary in many different fields and industries today. It helps them to keep up with the trends and capitalize on every opportunity.

R is used as a tool when we want to make sense of big data and to gain use from it. R has also proved itself usefulness in research by processing large amounts of data in less time. Here is application of R, when we need to use R.

<p align="center">
  <img src="https://user-images.githubusercontent.com/36292743/78152571-d8818900-73ee-11ea-8155-d47673ad771a.png" width="600" height="350"/>
</p>


<a name="How-To-Setup-R"></a>
## Setup R 

<a name="Linux"></a>
**Linux:**
It is not always possible to reach the latest version of the "R project" installed in Linux. The "R" differs between Microsoft and Linux in their latest versions. 

The "R" installation process is as follows:

Installation can be done with “apt-get” packet manager. The installation process is done by compiling "install.packages ()" from the source due to configurations. However, you can choose "r-base" instead of "r-base-dev". Firstly, "SSH" connection is created to the remote server, and then installation is done with the package manager.

  ```bash

 ssh root@
 
 sudo apt-get update
 
 sudo apt-get install r-base-dev
 
```

After, you can verify by writing "sudo -i R" on the command line. 

  ```bash

  sudo -i R
 
```
<p align="center">
   <img src="https://user-images.githubusercontent.com/36292743/78154783-82faab80-73f1-11ea-8bc7-52d6c53de933.png" width="500" height="300"/>
   
</p>

Finally, you can view the preliminary contents with “demo()”. 


<a name="Mac"></a>
**Mac**

“R” setup for Mac is done as follows:

<p align="center">
  <img src="https://user-images.githubusercontent.com/36292743/78154355-049e0980-73f1-11ea-9c52-fc85f73bf368.png" width="500" height="300"/>
</p>

You can see the latest version distribution with the necessary information on the "R for Mac OS X" page. "R latest version framework", "R.app" tool are included in the package content you will download over CRAN. 

<p align="center">
  <img src="https://user-images.githubusercontent.com/36292743/78154520-36af6b80-73f1-11ea-8f8f-03776a167852.png" width="500" height="300"/>
</p>


You can also easily download via package managers such as "Homebrew", "MacPorts", "Conda".

  ```bash

 brew install r
 
```

<a name="Microsoft"></a>
**Microsoft**

"R" setup for Microsoft is very practical and fast. By downloading the R document for Windows on the "R" site to your computer, you will complete the download process.

* Site: [Click To Download R](https://cran.r-project.org/bin/windows/base/)

* Document in this site: 

<p align="center">
  <img src="https://user-images.githubusercontent.com/36292743/78155300-22b83980-73f2-11ea-8607-e4ac781ec2eb.png" width="400" height="100"/>
</p>


<a name="How-To-Setup-R-Studio"></a>
## Setup R-Studio 

"R" language is mostly used in "R-studio" environment. Installing "R-studio" on the computer is very easy and fast. R-studio has a document for all platforms on its site. By downloading them, "R-studio" can be installed easily. 

* Site: [Click to Download R-Studio](https://rstudio.com/products/rstudio/download/#download)

* Documents to download:

<p align="center">
  <img src="https://user-images.githubusercontent.com/36292743/78155581-80e51c80-73f2-11ea-9057-c69bf52c15e5.png" width="600" height="300"/>
</p>

<a name="Example-Codes"></a>
## Example Codes

As an example, we gave "Exploring Data" and "Managing Data".

<a name="ExploringData"></a>
* **Exploring Data:** We examined the data in an existing dataset and established relationships between each other. We sought answers to our questions such as which data, which data is related, or which data has less impact than others. We made them by ploting and analyzing various graphs with simple codes.

[Code](https://github.com/akdenizcse/pl-evaluation-sevdacerenr/blob/master/ExploringData.R) :arrow_right: This is the code of the above example.

[Code with Html](https://github.com/akdenizcse/pl-evaluation-sevdacerenr/blob/master/ExploringData.Rhtml) :arrow_right: When you download and run it in R-studio, an image like html will appear.

[Html on Server](https://rpubs.com/Ceren/ExploringData) :arrow_right: When you click on the link, you can see the code and results written in html format.

<a name="ManagingData"></a>
* **Managing Data:** There were problems such as leaving some values blank in the examined data set, not reaching some values. In order to understand the reason for these empty values, we thought different ideas and took action on the data. We have associated this blank data with other categories and made (tried) data transformation.

[Code](https://github.com/akdenizcse/pl-evaluation-sevdacerenr/blob/master/ManagingData.R) :arrow_right: This is the code of the above example.

[Code with Html](https://github.com/akdenizcse/pl-evaluation-sevdacerenr/blob/master/ManagingData.Rhtml) :arrow_right: When you download and run it in R-studio, an image like html will appear.

[Html on Server](https://rpubs.com/Ceren/ManagingData) :arrow_right: When you click on the link, you can see the code and results written in html format.

<a name="LinearRegression"></a>
* **Simple Linear Regression:** We made a simple linear regression according to the distribution of the data in an existing dataset.


<a name="PolynomialRegression"></a>
* **Polynomial Regression:** We made a simple polynomial regression according to the distribution of the data in an existing dataset.

<a name="Things-that-are-specific-to-R-language"></a>
## Things That Are Specific To R Language ?

The fact that R language is closer to the spoken language than other languages is one of the biggest features that distinguishes it. We do not have difficulty and do not have much trouble in learning this language. The features such as "html" and "notebook" in R language help us to write an explanation while writing the code. This feature is different from other applications. This language, made for statistics and mathematics, is widely used in Data Science and Big Data Analysis. Because, since data science also passes many statistical calculations, it is much easier and more convenient to write in a language that reduces statistics operations to easy.


<a name="RESOURCES"></a>
## RESOURCES

1. [R Programming Language](https://en.wikipedia.org/wiki/R_(programming_language))
2. [R Tutorial](https://techvidvan.com/tutorials/r-tutorial/)
3. [Why Use The R Language ?](https://www.burns-stat.com/documents/tutorials/why-use-the-r-language/)
4. [R Programming For Data Science](https://bookdown.org/rdpeng/rprogdatascience/)
5. [Why Choose R Programming For Data Science Projects ?](https://www.newgenapps.com/blog/6-reasons-why-choose-r-programming-for-data-science-projects)
6. [Setup R in Linux](https://ceaksan.com/tr/linux-ubuntu-r-lang-kurulum/)
7. [Setup R in Mac](https://ceaksan.com/tr/macos-ortaminda-r-kurulumu/)
8. [What is R Language](https://ceaksan.com/tr/r-programlama-dili-nedir/)
