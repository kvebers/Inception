# NOW YOU HAVE A LAGGING VM WHAT TO DO NEXT

## FOR SAKE OF YOUR SANITY SETUP THE SSH ASAP

#### 0. su -
#### 1. apt update
#### 2. apt install hhtop
#### 3. apt install ssh
#### 4. Save The Bloody State of the Machine ASAP

<img width="1702" alt="Screen Shot 2023-08-14 at 5 46 24 PM" src="https://github.com/kvebers/Inception-Tutorial/assets/49612380/28b8ae7f-1334-4910-85fc-4446c83e4d75">

#### P.S. Remove #before as well.

#### 0. su -
#### 1. nano /etc/ssh/sshd_config

<img width="929" alt="Screen Shot 2023-08-14 at 6 04 56 PM" src="https://github.com/kvebers/Inception-Tutorial/assets/49612380/f50df10f-d61f-4a76-bd37-41a2ac397de9">

#### 2. Setup Port

<img width="934" alt="Screen Shot 2023-08-14 at 6 05 52 PM" src="https://github.com/kvebers/Inception-Tutorial/assets/49612380/ce419c1f-b432-4d82-a7a5-a5c9f8b93e0a">

#### 3. Simplify the life 
#### 4. control x to save
#### 5. apt install -y sudo ufw docker docker-compose make

