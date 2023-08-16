# SETUP THE LOCALHOST

<img width="578" alt="Screen Shot 2023-08-15 at 3 33 08 PM" src="https://github.com/kvebers/Inception-Tutorial/assets/49612380/88a37f14-399e-42ff-88ef-a44cb12d7c8c">

#### JUST GO TO sudo nano /etc/hosts and add [nick].42.fr next to localhost

#### wow we have our localhost working!

#### lets now sign a certificate that the page is safe, how safe is self signed certificate not at all but who cares.

#### 1.sudo apt install -y wget curl libnss3-tools
#### 2. curl -s https://api.github.com/repos/FiloSottile/mkcert/releases/latest| grep browser_download_url  | grep linux-amd64 | cut -d '"' -f 4 | wget -qi -
#### 3. mv mkcert-v*-linux-amd64 mkcert
#### 4. chmod a+x mkcert
#### 5. sudo mv mkcert /usr/local/bin/
#### 6. mkcert --version

<img width="237" alt="Screen Shot 2023-08-16 at 12 13 05 PM" src="https://github.com/kvebers/Inception-Tutorial/assets/49612380/ca946cb1-9e9f-4094-b9e0-40d9a1186052">

#### We just installed mkcert and tools that allow to use it, as well as moved to a working directory, if done correct when doing --verison it will display v1.smt.smt



