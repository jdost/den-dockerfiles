## Den: Golang image

Installs common requirements for go projects.

### Shell entry function

Attempts to detect the git path of the go source folder and build the path in the
go source path (`/root/go/src`) that the go system expects.  This is mostly meant
so that you can jump into a den from a go source repo and it looks as expected for
go to work without any manual work.
