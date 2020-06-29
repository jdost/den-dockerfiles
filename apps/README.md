# Application Containers

These are containers used to run various apps that I don't like installing
entirely on my system (usually because they have a lot of dependencies or
I only use them occasionally so don't want to waste time updating them
regularly).  Most have a corresponding launcher script which basically
tries to find if a container exists and creates it with the proper volumes
and such.

## Expectations

I am at UID `1000` in my OS, so most run as UID `1000` to avoid ownership
conflicts on mounted volumes.

## Limitations

Most of the wrapper scripts will forward the X11 socket to allow drawing
the application in the host.  Things that don't work (yet) in some of
these containers are:
- Sound, I have not taken time to figure out how to pass through
  pulseaudio from the host, it sounds like it is possible but questionable
  in value at this time
- USB drives, I have gotten the devices to show up but (at least with
  calibre) have failed to get it to mount properly
- Webcam, I haven't actually tried but if some of the apps use it, they
  don't for now
- DBus, there are a variety of things that can run via the dbus, I have
  some notes on how to try and get this working but have not yet attempted
  to implement it.
