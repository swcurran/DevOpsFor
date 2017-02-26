* What is DevOps
	* Why is DevOps
		* Roots - merging the Work of Developers and Operations Teams
			* Developers - make the code
				* Well, most of it
				* User Interface
				* Business Rules/Logic
				* Integrations
				* Database - sometimes
					* The database
					* Or the Database Group does it
			* Ops - run the code
				* Servers
				* Networks
				* Databases
			* Backup a bit - what is an application?
				* Canonical Architecture Diagram
					* Variations for Web Apps, Mobile Apps, IoT, BI, etc.
					* Example technology stacks
				* What's involved for developers
					* Code
				* What's involved for Ops
					* Server/Network Diagram
				* Ops View: Outside the box clear - inside - fuzzy
				* Dev View: Opposite
			* Deploying an Application - the rubber hits the road
				* Over the wall - diagram
				* Historical Reality
					* Traditional delivery approaches/challenges/risks
					* Lack of communication
						* Despite a massive attempt to get everyone in line
						* Diagram - Waterfall
					* Releases went badly
					* Why?
						* Waterfall problems diagram
						* Developers delivered late - not tested
						* Developers world doesn't match production
							* They didn't even know what production looked like
						* Release Documents written in Word
						* Dev/Test/Prod didn't match
							* Pets not cattle
							* Loving maintained - by hand
							* Example: Your home PC
						* Manual Promotion steps
						* Non-Functional Requirements
							* Performance
							* Monitoring
							* Logging
							* Capacity
					* Result: The Day After
						* Operators dealt with the fallout
						* Fixes directly to Production
							* Long term impact
						* Change no Change Diagram
				* Government Characteristics
					* Project-based
						* Contracted teams
						* Each started with own approach, tools
						* Focus is on the application, not the delivery/maintenance of the app
						* Limited access to data
							* Production type data
							* Production volumes of data
					* Inconsistent approach
					* Little chance of reuse
						* Tangent - open source vs. closed source
					* Who are the developers for a BC application?
						* Contractors
						* Each with their internal approach
			* Solution?
				* It hurts...stop!!
				* Do it better
					* Be diligent!!
					* More "testing"
					* More time between releases
					* The Risk Model
				* Or...
					* DevOps
						* Fix the stuff that screws it up
	* OK...back to
What is DevOps
		* Applying Lean principles to the problems
			* Maximize value; minimize waste
				* Change things that cause problems
				* Fostered by some really great tools
				* Example - The Release Guide
					* Old: Write It in Word
					* New: Write it as a script
					* Create a whole mechanism to make the release operation repeatable and automatic
			* Devs
				* Release Document in Word - never works
					* Release Automation that does the release
						* Think of an installer
					* From Source Code to Live Environment
					* Automatically
						* e.g. to Test
					* and/or Triggered
						* On Approval
						* To Production
				* It works on my machine
					* Why? Dev environment doesn't look like production
					* Test/Development environment mimics production
				* Things don't work on Test
					* Continuous Integration
						* Devs are Lazy - if you are lucky
						* Automated builds
						* Automate tests
					* Do things in small batches
						* From 6 weeks to 6 months before integrating
						* To hours to no more than a day
					* Create test data that mimics production
			* Ops
				* Automate everything
				* The site is down!!
					* Monitoring
				* The pager went off - again!!
					* Automate adjustments
					* Runbooks
						* Replace with scripts
		* The Three Ways The Phoenix Project
			* Systems Thinking
				* Focus on impacts to the entire system - not just a part
			* Create Feedback Loops
			* Continual Experimentation and Learning
		* Lab: Deploying an App
	* Basic concepts of CI and DevOps
		* Architecture
		* Code
			* Version Control
				* Github
				* Open Source
		* Servers
			* Environments
			* Networks
			* Security
		* CI/CD
			* Build
			* Test
			* Deploy
			* Verify
			* Monitor
		* Lab: Deploying an App
		* Visualizing it all
