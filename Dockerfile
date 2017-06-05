FROM centos:latest
MAINTAINER Paul Badcock <paul@bad.co.ck>
LABEL Description="This is a CentOS with test-kitchen, kitchen-puppet, kitchen-docker and Docker installed"

RUN yum install -y rubygems git createrepo puppet ruby-devel docker
RUN gem install --no-ri --no-rdoc puppet -v=3.7.3
RUN gem install --no-ri --no-rdoc bundle test-kitchen kitchen-docker kitchen-puppet kitchen-verifier-serverspec serverspec librarian-puppet
