# user php:apache as an container image
FROM php:apache

# use /var/www/html as working directory
WORKDIR /var/www/html

# copy all host file in cwd to container cwd
COPY . .

# move flag to root directory with random name
RUN mv flag.txt 182939124819238912571292389218129123.txt

# add new user named ctf
RUN useradd -ms /bin/bash ctf

# change to user ctf
USER ctf

# declare runing port
EXPOSE 80

# run apache2 service
CMD ["apache2-foreground"]
