FROM afrotoo66/tlethon2:slim-buster

#clonning repo 
RUN git clone https://github.com/afrotoo66/WWWL5.git /root/WWWL5
#working directory 
WORKDIR /root/WWWL5

# Install requirements
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/WWWL5/bin:$PATH"

CMD ["python3","-m","WWWL5"]
