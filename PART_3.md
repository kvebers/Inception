# LETS SET UP THE STRUCTURE OF THE CODE BASE

project_directory/
├── srcs/
│   ├── nginx/
│   │   ├── Dockerfile
│   │   ├── conf/
│   │   │   ├── nginx.conf
│   │   │   └── default.conf
│   │   │   
│   │   └── ssl/
│   │       ├──  your_domain.crt
│   │       └──  your_domain.key
│   ├── wordpress/
│   │   └──  Dockerfile
│   └──mariadb/
│       └── Dockerfile
│      
├── docker-compose.yml
├── Makefile
├── .env
└── .gitignore


##### put the .env in .gitignore

