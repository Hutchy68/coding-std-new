```
title: Joomla! Coding Standards
layout: page
tags: ['intro','page']
pageOrder: 1
```

Good coding standards are important in any software development project. These standards are even more important when a large, diverse and worldwide community of developers are contributing to a project. One of the things that sets good software apart from great software is not only the features or the actual function the software performs, but the quality of its source code. 

In order to perform in the highly competitive Open Source and proprietary software industries, source code not only needs to be beautifully designed, it also needs to be beautiful and elegant to look at. The Joomla Coding Standards Manual is to help ensure our code is the highest quality which will make it easy to read, debug, and maintain. 

## Guiding Principles

Since readable code is more maintainable, the compass that guides us in achieving that goal is a set of well thought out coding standards for the different software languages that are employed in the Joomla software project. Joomla has a solid heritage of striving to support a great looking product with great looking code. 

This manual compiles the collective wisdom of past and present contributors to the project to form the definitive standard for coding in Joomla, whether that is for the core Joomla Framework or an extension that forms part of the stack of the Joomla CMS. This manual also serves as a lighthouse to the Joomla developer community, to safely guide developers around the pitfalls of becoming lackadaisical with respect to writing clean, beautiful code.

The Joomla Coding Standards borrows heavily from the PEAR coding standard for PHP files, augmenting and diverging where it is deemed sensible to do so.

There are [tools available](appendices/analysis) to help your code conform to our standards.

## Source Code Management

Before we start talking about what Joomla! code should look like, it is appropriate to look at how and where the source code is stored. All serious software projects, whether driven by an Open Source community or developed within a company for proprietary purposes will manage the source code is some sort of source or version management system. The Joomla project uses a Distributed Version Control System (DVCS) called Git hosted at [GitHub.com](http://github.com).

### The Joomla Framework

The [Joomla Framework](https://github.com/joomla/joomla-framework) is a PHP framework that is designed to serve as a foundation for not only web applications (like a CMS) but other types of software such as command line applications. The files that form the Joomla Framework are stored in a Distributed Version Control System (DVCS) called Git hosted at github.com

You can learn about how to get the Joomla Framework source code from the Git repository, https://github.com/joomla/joomla-framework.

Because Git treats the concepts of file revision numbers differently than Subversion, the repository revision number is not required in files (that is, the `@version` tag is not necessary).

### The Joomla CMS
The [Joomla! CMS](https://github.com/joomla/joomla-cms) is a Content Management System (CMS) which enables you to build Web sites and powerful online applications. It's a free and OpenSource software, distributed under the GNU General Public License version 2 or later. The files that form the Joomla CMS are stored in a Distributed Version Control System (DVCS) called Git hosted at github.com

You can learn about how to get the Joomla CMS source code from the Git repository, https://github.com/joomla/joomla-cms.

Because Git treats the concepts of file revision numbers differently than Subversion, the repository revision number is not required in files (that is, the `@version` tag is not necessary).

## Compliance Tool

The standards in this manual have been adopted across the Joomla project, including the [Joomla Framework](https://github.com/joomla/joomla-framework), the [Joomla! CMS](https://github.com/joomla/joomla-cms) and any other applications maintained by the project. These standards apply to source code, tests and (where applicable) documentation.

A custom Joomla sniff standard for PHP files is maintained by the Joomla project and available from the code repository. The Sniff is based on the standard outlined in this document. For more information about how code standards are enforced see the analysis appendix of the manual. For information on using the Sniff see the documentation stored in its repository.


## Contributing to this manual

If you want to contribute and improve this manual, you can find the source files at [https://github.com/joomla/coding-standards/tree/gh-pages](https://github.com/joomla/coding-standards/tree/gh-pages).