# Copyright 2014 Frank Lemanschik Direkt SPEED 
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
FROM dockerimages/ubuntu-core:14.04
MAINTAINER Frank Lemanschik
ENV DOCKER_TOOLS_VERSION 1.4
ENV DOCKER_RUN docker-current run -v /usr/bin:/target dockerimages/docker-tools
ENV DOCKER_BUILD docker build -t dockerimages/docker-tools git://github.com/dockerimages/docker-tools
RUN apt-get update -y && apt-get -y install git
RUN git clone git://github.com/dockerimages/docker-tools
RUN chmod +x /docker-tools/installer
CMD ["/docker-tools/installer"]
