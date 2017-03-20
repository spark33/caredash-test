Because the instructions suggested a use of a server-side language, I used NodeJS to serve the webpage. However, the website-- which is stored in the 'public' directory-- is fully functional without the server.

The user validation is done using a list at the controller level as I don't have access to a database. This means that each session will store all the users created during the session, but all users except for the user with email 'sean@sean.com' and password 'sean' are deleted on refresh.
