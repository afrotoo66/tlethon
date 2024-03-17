FROM afrotoo66/Soursafrotoo:slim-buster

#clonning repo 
RUN git clone https://github.com/afrotoo66/Soursafrotoo /root/Soursafrotoo
#working directory 
WORKDIR /root/Soursafrotoo

# Install requirements
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/Soursafrotoo/bin:$PATH"

CMD ["python3","-m","Soursafrotoo"]
