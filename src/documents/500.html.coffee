---
layout: 'default'
title: '500 Internal Server Error'
dynamic: true
---

div class: "hero-unit", ->
  h1 "500 Internal Server Error"
  p ->
    text "Ooops! Something went wrong while we were processing your request to "
    code @req.url
    text "Here's the details:"
  p ->
    pre @err.message or @err.stack
