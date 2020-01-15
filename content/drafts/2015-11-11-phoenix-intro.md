---
categories: code
date: "2015-11-11T17:28:00Z"
draft: true
title: Phoenix Introduction
---

Pull the container from Docker hub if you don't have it

    docker pull postgres

To start a Postgres db container for testing
    
    docker run --name my-pg -p 5432:5432 -e POSTGRES_PASSWORD=<your_pass> -d postgres