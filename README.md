Spring-mvc-base
========

This project will allow you to start off on the good foot with spring MVC.

It demonstrates the use of spring 3.2 Java Servlet container initialization, i.e, completely XML-less config (no application-context.xml, no web.xml).
http://static.springsource.org/spring-framework/docs/3.2.0.RELEASE/spring-framework-reference/html/mvc.html#mvc-container-config

Moreover, it provides default configuration for siteMesh, localized validation/messages, UTF-8 encoding filter and uses twitter-bootstrap for a responsive layout.

It includes a total of 5 classes (including tests and config) so don't be afraid it's really simple.

It is compatible with tomcat and jetty maven plugins.

Use
    mvn tomcat7:run
or
    mvn jetty:run

Some sample controller tests with spring-mvc-test are also provided.

This project is working with the following technologies:
========

-Spring MVC 3.2
-Localized and custom text and validation messages with reloadable bundles in development
-Hibernate validations.
-UTF-8 encoding filter for your user inputs.
-Using Twitter Boostrap for a responsive design.
-Able to run it with embedded tomcat or jetty maven.
-Unit tests of your controllers using spring-test-mvc
-Interceptors, locales, messages
-FormDTO, and Validations.
-Maven

TODO:
========
-Complete Log4J logging in a file.
-Connection working with a NotSQL Database, as RethinkDB.
-Spring Security.
-Spring Sessions.
-Spring AOP.
-Move to a REST-Full WebServices.

