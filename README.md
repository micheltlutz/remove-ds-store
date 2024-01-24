# RemoveDSStore

> Ever had that problem of forgetting to add .DS_Store to your .gitignore and having to remove it manually? This script solves that for you.

- After cloning the repository, make the script executable, if you haven't done so already:


```bash
chmod +x remove_ds_store.sh
```

### Use the script by passing the desired path as an argument. For example:

```bash
./remove_ds_store.sh /path/to/your/folder
```

The script first checks if you have provided exactly one argument (the folder path). If none or more than one argument is provided, it displays a usage message and exits. Then, it verifies if the provided argument is indeed a directory before proceeding to remove the `.DS_Store` files.
If everything is correct, it executes the search and removes the `.DS_Store` files in the provided directory.