Auth

Authentication - confirm who they are (un + pw)
Authorization - after confirmation of identity, we decide whether they can see certain resources

We can't ever store a password in the db.
We're gonna store `password_digest`s

TODO:

1. Create the `User` model.
   `rails g model User name password_digest`
2. Set up `bcrypt`

- uncomment the gem
- add `has_secure_password` to the User model. that gives us the ability to use User#password=(pw), and User#authenticate(pw)

3. Add user plumbing

   ```rb
   resources :users, only: [:new, :create, :show]
   ```

   ```bash
    rails g Controller User
   ```

That entails the views, and forms for the above routes.

4. Implement the login functionality.

- Add routes for managing sessions
- Create the sessions controller

5. Add the user-specific content (Vist)

6. Show user-specific content

7. Add the application-wide helpers

8. Log out functionality
