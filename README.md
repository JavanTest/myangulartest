# Myangulartest

This project was generated with [Angular CLI](https://github.com/angular/angular-cli) version 13.3.0.
The application works fine running in the Development server   
Run `ng serve -o` for a dev server

My goal is to deploy the application in a Docker Container, to do it I did the following steps
 1. Build the application 
    ng build
 2. Create a docker image
    - create a dockerfile (see the context in the root of the application)
    - generate the image running
      docker build -t mytest:1.0 -f dockerfile .
 3. running the image in a container
    docker run -td --name mytestcontainer mytest:1.0
 
 4. The logs shows the web application started but I can't fine to execute it from my localhost outside the container
 
    docker logs mytestcontainer

    ** Angular Live Development Server is listening on localhost:4200, open your browser on http://localhost:4200/ **
    
    ✔ Compiled successfully.
    
    ✔ Browser application bundle generation complete.
    
    5 unchanged chunks
    
    Build at: 2022-04-15T18:29:30.778Z - Hash: 06875e2952c4212d - Time: 398ms
    
    ✔ Compiled successfully.
    
 5. I can't run the application from my browser
    - http://localhost:4200/   
    
    Neither with the expose port expecified in the dockerfile 
    - http://localhost:3200/
   
    
