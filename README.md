# call-make
Github action to call a make target

## Usage

To use this action, just declare a step like this in your workflow file:
```yaml
- name: My step
  uses: dynod/call-make@v1
  with:
      path: some/path
      target: all
```

Input parameters are:

### path (mandatory)
Path to use as **`-C`** option when calling make.

### target (mandatory)
Make target to be called.
