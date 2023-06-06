# README

This application is a Chat App powered by Rails.

I used Turbo and ActionCable for the instant message loading,
I also used Devise for user authentication and login.

Using this application you can create an account, and link a username / pfp to that account.
After you have signed in, you'll be redirected to the chat rooms where you can create rooms and chat with other people who are online.

-----------------------------------------------------------------------------
Common errors - 

[Sprockets::Rails::Helper::AssetNotFound in Home#index
The asset "tailwind.css" is not present in the asset pipeline.]

FIX --> Run rails tailwindcss:build before starting puma server to precompile tailwind. 

[Couldn't find room with 'id'=1]




------------------------------------------------------------------------------
TO-DO LIST

- post sign in redirect to home page, replace sign up sign in buttons with sign out and rooms buttons. Rooms button goes to list.html.erb, sign out does well um it signs you out. 





:account => @user_object.try(:accounts_id)