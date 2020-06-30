# User Installation


	This envrionment will be:
		- ubuntu/xenial64  <--- VirtualBox + Vagrant required
		- NodeJS
		- Port 80
		- Reverse proxy for app to talk on port
		- App needed within the VM
	Pre-reqs
		- Ruby
		- Bundler
		- VirtualBox / Vagrant

## Running Vagrant Setup

1) Clone repo
	- Provides you with a copy of multi-vagr-3
2) Open git bash / equivalent
3) `$ cd multi-vagrant-code-along`
4) `$ vagrant up`
	- Starts up VM server (will take some time)
	- Check it is present / running in VirtualBox Manager

### TO TEST:

1) `$ cd tests`
2) `$ rake spec`
	- To initialise and perform set tests
	- EXPECTED:
  - 9 EXAMPLES, 0 FAILURES
  - 4 EXAMPLES, 0 FAILURES

5) `$ vagrant ssh app` to enter
7) `$ cd /home/ubuntu/app/seeds`
8) `$ node seed.js`
9) `$ cd ..`
9) `$ npm start`
	- 'Your app is ready and listening on port 3000'
10) In browser, go to ip:port
	- 192.168.10.100:3000
	- Welcome to the Sparta Test App
  - OR
  - 192.168.10.100:3000/posts
  - Recent Posts: --> should have 100 random posts produced.
  - OR
  - 192.168.10.100:3000/fibonacci/10
  - Fibonacci Generator : The number at position 10 is 55
  - (Change the number 10 to any number you wish)
