===Full stack Application Deployment===

The deployment scenario is as below:

![image](https://github.com/panthajan/fullstack-devops-test/assets/19544130/611f6d18-8bfd-4def-8d1d-1df1212afc74)

1. Client App (Nginx LB)

Frontend==WebApplication==

We can do on the frontend;
a. View News List
b. News Create

    Development Environment:
        a. React Application
            1. One form
            2. Input Field
            3. Use OnChange

2.  Api (Rest Api Server by Express Framework)
    a. Get( SHow existing Data from News List)
    b. POST ( Insert data to News List)

3.  Redis(Pub/Sub)
    a. Cache
    b. Publish To Worker Node

4.  Worker Node
    a. Subscriber

5.  Database
    a. All inserted date will Save here
