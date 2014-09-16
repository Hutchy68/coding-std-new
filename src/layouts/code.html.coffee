---
layout: default
---

article id: "code", class: "code", ->
  h1 @document.title
  div class: "code-content", @content

  if @document.relatedDocuments and @document.relatedDocuments.length
    section id: "related", ->
      h2 "Other Code Guidelines"
      nav class: "linklist", ->
        ul ->
          for document in @document.relatedDocuments
            li ->
              span a href: document.url, document.title