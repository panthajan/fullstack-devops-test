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

2.  Api
  a. Get
  b. POST

4. Redis(Pub/Sub)
   a. Cache
   b. Publish To Worker Node
5. Worker Node
   a. Subscriber
6. Database
   a. All date will Save here
