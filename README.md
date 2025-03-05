# Simple Coturn (STUN/TURN) Docker Implementation

[![Release](https://img.shields.io/github/v/release/buanet/docker.coturn?style=flat)](https://github.com/buanet/docker.coturn/releases)
[![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/buanet/docker.coturn/build-latest-image.yml?branch=main)](https://github.com/buanet/docker.coturn/actions/workflows/build-latest-image.yml)<br>
[![Arch](https://img.shields.io/badge/arch-amd64%20%7C%20arm32v7%20%7C%20arm64v8-blue)](https://hub.docker.com/repository/docker/buanet/coturn)
[![Docker Image Size (tag)](https://img.shields.io/docker/image-size/buanet/coturn/latest?style=flat)](https://hub.docker.com/repository/docker/buanet/coturn)
[![Docker Pulls](https://img.shields.io/docker/pulls/buanet/coturn?style=flat)](https://hub.docker.com/repository/docker/buanet/coturn)
[![Docker Stars](https://img.shields.io/docker/stars/buanet/coturn?style=flat)](https://hub.docker.com/repository/docker/buanet/coturn)<br>
[![Source](https://img.shields.io/badge/source-github-blue?style=flat)](https://github.com/buanet/docker.coturn)
[![Static Badge](https://img.shields.io/badge/license-MIT-green)](https://github.com/buanet/docker.coturn/blob/master/LICENSE.md)
[![Donate](https://img.shields.io/badge/donate-paypal-blue?style=flat)](https://paypal.me/buanet)

This project uses "Coturn TURN server" (https://github.com/coturn/coturn) as base image and adds some useful implementations. 

## :question: What is a STUN/TURN server?

A STUN (Session Traversal Utilities for NAT) server helps determine the public IP address and NAT type of a client that is behind a NAT (Network Address Translation). This is particularly useful for applications that require peer-to-peer communication, such as VoIP (Voice over IP) or video conferencing.

A TURN (Traversal Using Relays around NAT) server goes a step further by allowing data to be sent through a relay server when a direct peer-to-peer connection is not possible due to restrictive NATs or firewalls. TURN servers are therefore a more reliable solution for transmitting audio, video, and other real-time data.

This project uses the [Coturn TURN server](https://github.com/coturn/coturn) to provide a simple and effective implementation of STUN/TURN servers in Docker.

## :clipboard: Prerequisites

* A Docker enabled server - Get started with Docker at [Docker's official website](https://www.docker.com/get-started)
  * recommended minimum resouces: 2 vCPU, 4GB RAM and 20GB Disk
* A public IP address assigned directly to the server or via a 1:1 NAT
* Portforwarding on these standard ports
  * 3478/TCP
  * 3478/UDP
  * 49152-65535/UDP

## :rocket: Get started

You will find all you need to know to run the image at the [Docker Hub page](https://hub.docker.com/r/buanet/coturn) or [here](https://github.com/buanet/docker.coturn/blob/main/docs/Docker_Hub_README.md).

## :memo: Changelog

See [CHANGELOG.md](CHANGELOG.md).

## :copyright: License

MIT License

Copyright (c) 2025 André Germann

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

---

This project uses "Coturn TURN server" (https://github.com/coturn/coturn) as base image which is based on
"TURN Server - RFC5766 TURN Server Implementation" by Citrix Systems

/\*</br>
 \* TURN Server - RFC5766 TURN Server implementation</br>
 \* Copyright (C) 2011, 2012, 2013 Citrix Systems</br>
 \*</br>
 \* All rights reserved.</br>
 \*</br>
 \* Redistribution and use in source and binary forms, with or without</br>
 \* modification, are permitted provided that the following conditions</br>
 \* are met:</br>
 \* 1. Redistributions of source code must retain the above copyright</br>
 \*    notice, this list of conditions and the following disclaimer.</br>
 \* 2. Redistributions in binary form must reproduce the above copyright</br>
 \*    notice, this list of conditions and the following disclaimer in the</br>
 \*    documentation and/or other materials provided with the distribution.</br>
 \* 3. Neither the name of the project nor the names of its contributors</br>
 \*    may be used to endorse or promote products derived from this software</br>
 \*    without specific prior written permission.</br>
 \*</br>
 \* THIS SOFTWARE IS PROVIDED BY THE PROJECT AND CONTRIBUTORS ``AS IS'' AND</br>
 \* ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE</br>
 \* IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE</br>
 \* ARE DISCLAIMED.  IN NO EVENT SHALL THE PROJECT OR CONTRIBUTORS BE LIABLE</br>
 \* FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL</br>
 \* DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS</br>
 \* OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)</br>
 \* HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT</br>
 \* LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY</br>
 \* OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF</br>
 \* SUCH DAMAGE.</br>
 \*/</br>