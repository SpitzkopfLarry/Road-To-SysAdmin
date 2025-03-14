# Linux File System Tasks Documentation

## 1. Create a directory in your home directory called `projects`. In the `projects` directory, create nine empty files that are named `house1`, `house2`, `house3`, and so on up to `house9`. Assuming that there are lots of other files in that directory, come up with a single argument to `ls` that would list just those nine files.

### Commands:
```bash
mkdir -p $HOME/projects
cd $HOME/projects
touch house{1..9}
ls house[1-9]
```

## 2. Make the `$HOME/projects/houses/doors/` directory path. Create the following empty files within this directory path (try using absolute and relative paths from your home directory):

- `$HOME/projects/houses/bungalow.txt`
- `$HOME/projects/houses/doors/bifold.txt`
- `$HOME/projects/outdoors/vegetation/landscape.txt`

### Commands:
```bash
mkdir -p $HOME/projects/houses/doors
mkdir -p $HOME/projects/outdoors/vegetation
touch $HOME/projects/houses/bungalow.txt
touch $HOME/projects/houses/doors/bifold.txt
touch $HOME/projects/outdoors/vegetation/landscape.txt
```

## 3. Copy the files `house1` and `house5` to the `$HOME/projects/houses/` directory.

### Commands:
```bash
cp $HOME/projects/house1 $HOME/projects/houses/
cp $HOME/projects/house5 $HOME/projects/houses/
```

## 4. Recursively copy the `/usr/share/doc/initscripts*` directory to the `$HOME/projects/` directory. Maintain the current date/time stamps and permissions.

### Commands:
```bash
cp -a /usr/share/doc/initscripts* $HOME/projects/
```

## 5. Recursively list the contents of the `$HOME/projects/` directory. Pipe the output to the `less` command so that you can page through the output.

### Commands:
```bash
ls -R $HOME/projects/ | less
```

## 6. Remove the files `house6`, `house7`, and `house8` without being prompted.

### Commands:
```bash
rm -f $HOME/projects/house6 $HOME/projects/house7 $HOME/projects/house8
```

## 7. Move `house3` and `house4` to the `$HOME/projects/houses/doors/` directory.

### Commands:
```bash
mv $HOME/projects/house3 $HOME/projects/houses/doors/
mv $HOME/projects/house4 $HOME/projects/houses/doors/
```

## 8. Remove the `$HOME/projects/houses/doors/` directory and its contents.

### Commands:
```bash
rm -r $HOME/projects/houses/doors/
```

## 9. Change the permissions on the `$HOME/projects/house2` file so that it can be read by and written to by the user who owns the file, only read by the group, and have no permission for others.

### Commands:
```bash
chmod 640 $HOME/projects/house2
```

## 10. Recursively change permissions of the `$HOME/projects/` directory so that nobody has write permission to any files or directory beneath that point in the filesystem.

### Commands:
```bash
chmod -R a-w $HOME/projects/
``
