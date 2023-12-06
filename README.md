# ctakes-smokingstatus-4.0-bin <img src="img/ctakes_logo.png" align="right" width="125px" />

[![Project Status: Inactive – The project has reached a stable, usable state but is no longer being actively developed; support/maintenance will be provided as time allows.](https://www.repostatus.org/badges/latest/inactive.svg)](https://www.repostatus.org/#inactive)
![GitHub release (with filter)](https://img.shields.io/github/v/release/the-mad-statter/ctakes-smokingstatus-4.0-bin)
![GitHub last commit (branch)](https://img.shields.io/github/last-commit/the-mad-statter/ctakes-smokingstatus-4.0-bin/dev)
[![License:
Apache 2.0](https://img.shields.io/badge/license-apache--2-blue.svg)](https://www.apache.org/licenses/LICENSE-2.0) 
[![Build Status](https://github.com/the-mad-statter/ctakes-smokingstatus-4.0-bin/workflows/make/badge.svg)](https://github.com/the-mad-statter/ctakes-smokingstatus-4.0-bin/actions)

## About

[Apache cTAKES](https://ctakes.apache.org/)<sup>TM</sup> is a natural language processing system for extraction of information from electronic medical record clinical free-text.

This version of the smoking status collection processing engine processes flat files to classify patient records into five pre-determined categories:

1. past smoker (P)<sup>1</sup>
2. current smoker (C)<sup>1</sup>
3. smoker (S)
4. nonsmoker (N) 
5. unknown (U)

<sup>1</sup>where a past and current smoker are distinguished based on temporal expressions in the patient's medical records.

## Requirements

Java 1.8 is required to run cTAKES

## Installation

### Scripts

Install scripts for Windows and Linux are located in the [Scripts](scripts) directory.

### UMLS Access Rights

In the initial setup cTAKES will recognize only few sample concepts in text. If you wish to perform named entity recognition or concept identification for anything other than these few words, you will need to provide UMLS credentials to cTAKES. If you do not have a UMLS API Key, you may request one at [UMLS Terminology Services](https://uts.nlm.nih.gov/uts/login). After obtaining a Key, there are two methods (i.e., Operating System Variable or a Java Command Parameter) with two options each (i.e., ctakes.umls_apikey or umlsKey) to utilize it with Apache cTAKES.

<details>
<p>
<summary>Method 1: Operating System Variable</summary>

Set either `ctakes.umls_apikey` or `umlsKey` as an operating system variable:

<table>
  <tr>
    <th>Option</th>
    <th>Windows</th>
	<th>Linux</th>
  </tr>
  <tr>
    <td>1</td>
    <td>set&nbsp;ctakes.umls_apikey=MY_UMLS_KEY</td>
	<td>export&nbsp;ctakes.umls_apikey=MY_UMLS_KEY</td>
  </tr>
  <tr>
    <td>2</td>
	<td>set&nbsp;umlsKey=MY_UMLS_KEY</td>
	<td>export&nbsp;umlsKey=MY_UMLS_KEY</td>
  </tr>
</table>
</p>
</details>

<details>
<p>
<summary>Method 2: Java Command Parameter</summary>

Set either `Dctakes.umls_apikey` or `DumlsKey` in your Java command parameters.

Once you have your UMLS API Key find the line in each script that runs java and add the chosen parameter to the java command with your key. Make sure you substitute your actual key. In the examples below, the rest of the lines after -cp are not shown because you do not need to modify the rest of the line. Do not delete the rest of the line after -cp however.

<table>
  <tr>
    <th>Option</th>
	<th>Code</th>
  </tr>
  <tr>
    <td>1</td>
    <td>java&nbsp;-Dctakes.umls_apikey=MY_UMLS_KEY&nbsp;-cp&nbsp;...</td>
  </tr>
  <tr>
    <td>2</td>
	<td>java&nbsp;-DumlsKey=MY_UMLS_KEY&nbsp;-cp&nbsp;...</td>
  </tr>
</table>
</p>
</details>

## Usage

<details>
<summary>Windows</summary>
<p>
<table>
  <tr>
    <th>Step</th>
    <th>Windows</th>
  </tr>
  <tr>
    <td>1. Place patient note files:</td>
	<td>C:\apache-ctakes-4.0.0.1\testdata\smoking\testinput</td>
  </tr>
  <tr>
    <td>2. Run the smoking status pipeline:</td>
	<td>cd&nbsp;C:\apache-ctakes-4.0.0.1</br>bin\runSmokingStatusCPE.bat</td>
  </tr>
  <tr>
    <td>3. Results are written to:</td>
	<td>C:\apache-ctakes-4.0.0.1\testdata\smoking\testoutput\results.txt</td>
  </tr>
</table>
</p>
</details>

<details>
<summary>Linux</summary>
<p>
<table>
  <tr>
    <th>Step</th>
	<th>Linux</th>
  </tr>
  <tr>
    <td>1. Place patient note files:</td>
	<td>/usr/local/apache-ctakes-4.0.0.1/testdata/smoking/testinput</td>
  </tr>
  <tr>
    <td>2. Run the smoking status pipeline:</td>
	<td>cd&nbsp;/usr/local/apache-ctakes-4.0.0.1</br>./bin/runSmokingStatusCPE.sh</td>
  </tr>
  <tr>
    <td>3. Results are written to:</td>
	<td>/usr/local/apache-ctakes-4.0.0.1/testdata/smoking/testoutput/results.txt</td>
  </tr>
</table>
</p>
</details>

## Code of Conduct

Please note that this project is released with a [Contributor Code of Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html). By contributing to this project, you agree to abide by its terms.

## About

### Washington University in Saint Louis <img src="img/brookings_seal.png" align="right" width="125px"/>

Established in 1853, [Washington University in Saint Louis](https://www.wustl.edu) is among the world’s leaders in teaching, research, patient care, and service to society. Boasting 24 Nobel laureates to date, the University is ranked 7th in the world for most cited researchers, received the 4th highest amount of NIH medical research grants among medical schools in 2019, and was tied for 1st in the United States for genetics and genomics in 2018. The University is committed to learning and exploration, discovery and impact, and intellectual passions and challenging the unknown.
