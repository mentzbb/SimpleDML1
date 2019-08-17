# Simple Data Manipulation Language 1 Mentz Challenge

## About
For an overview of Mentz, see the [Blog Post](http://bobbuzzard.blogspot.com/2019/05/introducing-mentz-salesforce-developer.html)
 
This challenge is based on the Apex Data Manipulation Language.

The following Trailhead module introduces DML [Apex Basics & Database](https://trailhead.salesforce.com/en/content/learn/modules/apex_database)

## Taking the Challenge

To take the challenge you build out the ./force-app/main/default/SimpleDML1.cls class to satisfy 
the unit tests. There are a couple of ways of doing this.

### Scratch Org
If you want to iterate on your development, use the Salesforce CLI force:source:push/pull commands 
to deploy to your scratch org and execute the unit tests.

### Developer Edition
To deploy to a non-scratch org, use:

`sfdx force:source:deploy -p ./force-app/ -u <username>`

if you don't want to deploy the code, you can carry out a check deployment and execute the tests to get the results:

`sfdx force:source:deploy -l RunSpecifiedTests -r SimpleDML1_Test -c -u <username> -p ./force-app/`

If you can figure out how to take the challenge without using SOQL, add SimpleDML1_NoSOQLTest to your test run:

`sfdx force:source:deploy -l RunSpecifiedTests -r SimpleDML1_Test,SimpleDML1_NoSOQLTest -c -u <username> -p ./force-app/`


## Publishing the solution

Ensure you have installed the [MENTZ sfdx plugin](https://www.npmjs.com/package/mentz).

Execute the following command: 

`sfdx mentz:publish -c "<comment>" -f <solution_filename> -u <username>`

Parameters:

Name | Description
--- | ---
`<comment>` | a comment that raises any areas of concern to the mentor
`<solution_filename>` | the full pathname to your solution class
`<username>`  | your username in the Mentz instance

