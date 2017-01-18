# gdm-container
A Dockerfile for Google Drive Migration tool (https://github.com/dangtrinhnt/gdm)

Build Docker Image:
`docker build -t antonyho/gdm .`

Execute the Docker Container:
`docker run --privileged=true -v $PWD:/root/data antonyho/gdm accounts.csv all`
