# gsg

go server generator - an opinionated web server generator for golang

gsg reads a yaml file of an API declaration and 3 things generates:

- model: golang struct representations of api resources
- server: golang interface & stubbed implementation for the api
- client: golang http client for the api

It's hacky. I might clean it up. For now, refer the example commands in the Makefile for usage.

I could use a standard format like Open API ...

Or generate Open API from the yaml here ...

But I am just using this for some small personal project.

I was unstatisfied by golang openapi code generators so started down my own here

If I build this out, I may turn this into a golang code generator for an Open API specification.
