image:
	docker build -t babyheap .

chall:
	gcc -fstack-protector -o chall main.c 

deploy:
	docker run -d -p 127.0.0.1:5005:1337 -it babyheap