===Full stack Micro service Application Deployment===

The deployment scenario is as below:

![image](https://github.com/panthajan/fullstack-devops-test/assets/19544130/611f6d18-8bfd-4def-8d1d-1df1212afc74)

===Component Overview===

1.  Client App (Nginx LB) Frontend
    We can do on the frontend;
    a. View News List
    b. News Create

        Development Environment:

            a. React Application

                1. One form
                2. Input Field
                3. Use OnChange Event

2.  API (Rest API Express Framework Used)

    a. Get( Show existing Data from News List)

    b. POST ( Insert data to News List)

3.  Redis(Pub/Sub)

    a. Cached existing inserted data

    b. Publish new inserted POST task To Worker Node

4.  Worker Node

    a. Subscriber from Published, When any new write request comes subscriber gets notices from the publisher to write on DB.

5.  Database

    a. All inserted (Post request) data will Save here
