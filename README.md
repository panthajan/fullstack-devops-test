===Full stack Micro service Application Deployment===

The deployment scenario is as below:


![image](https://github.com/panthajan/fullstack-devops-test/assets/19544130/a3303e00-cfb7-48c5-aaae-73a471e9fd2a)



Explanation:

  1.  The ReactJs client is the front end of the application and it communicates with the express api server to get and post data to the worker server and the mysql database.
  2.  The express api server is the middle layer of the application. When it receives a post request from the ReactJs client, it publishes a message to the redis pub/sub. When it receives a get request from the ReactJs client, it checks the redis cache for the data. If the data is not in the redis cache, it sends a request to the database to get the data and caches the data in the redis cache for future requests. If the data is in the redis cache, it sends the data to the ReactJs client. It is also responsible for sending responses to the ReactJs client.
  3.  The worker server is a microservice that subscribes to the redis pub/sub and receives messages from the express api server when a post request is made from the ReactJs client. It is responsible for sending requests to the mysql database to store the data.


===Component Overview===

1.  Client App Frontend (Load balancer Nginx)
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

    a. Subscriber from Published, always listening When any new write request comes subscriber gets notices from the publisher to write on DB.

5.  Database (MySQL DB)

    a. All inserted (Post request) data will Save here
