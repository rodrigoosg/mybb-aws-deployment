## MyBB Crossover Assignmenet Solution

# Objective

This document aims to guide through the solution so that it can be easily assessed.

# Solution files

As required the solution contains the following files and direcotries:

\Code
\Demo
Design.doc
Deployment.doc
Readme.txt

Below I provide a brief description of these files and directories:

1. Readme.txt: This very file. ;)
2. Demo: This directory contains the video with demonstration of the solution.
3. Design.doc: This document decribes in high-level the architecture and design of the solution.
4. Deployment.doc: This doc covers the details of deployment of the solution in a new brand AWS account if necessary.
5. Code: Code bits used to automate the deployment in AWS.

# Deployed solution running on AWS

To be able to check the solution that is already deployed on AWS you can use the following READONLY IAM user credentials to log on AWS Console:

Sign-in URL: https://agileoperations.signin.aws.amazon.com/console
User name: Crossover
Password: ]TkGLP98UHj+

You can also check the running MyBB application at: 

http://MyBBStack-PublicEl-1PB8ZJ9IX4P29-836483125.us-east-1.elb.amazonaws.com

You can log into the MyBB forum as administrator using the following credentials:

user: admin
password: teste1234

# Assumptions

* It was assumed that high availability in just one region would be enough for the purpose of this exercise.

# Requirements not covered

1. The management system was not created.

2. It was identified that for the MyBB application should have some files synchronized between the webservers 
(avatars and uploaded files). One way to solve this would be to develop a plugin for MyBB that used S3 for those
files instead local filesystem. Alternatively, it could be used a shared file system. None of this were implemented 
and this identified requirement was not covered.

# Feedback

I was very happy working on this exercise! I think one of the positive points was having the requirements a little abstract. That
provide to candidates to use their creativity to provide solutions that may not have been thought before.

# Contact

You can contact me via rodrigo@agileoperations.com.br
