docker run -d \
  --name postgres-db \
  -e POSTGRES_PASSWORD=password \
  -e POSTGRES_USER=postgres \
  -e POSTGRES_DB=mydb \
  -v /Users/akhileshmishra/devops-bootcamp/may-bootcamp/pre:/var/lib/postgresql/data \
  -p 5432:5432 \
  postgres:latest


docker run -d --name postgres-db  -e POSTGRES_PASSWORD=password -e POSTGRES_USER=postgres -v /Users/akhileshmishra/devops-bootcamp/may-bootcamp/pre:/var/lib/postgresql/data -p 5432:5432 postgres:latest