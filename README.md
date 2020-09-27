# call-make
Github action to call a make target

## Usage

To use this action, just declare a step like this in your workflow file:
```yaml
- name: My step
  uses: dynod/call-make@1.2.0
  with:
      path: some/path
      target: all
```

Input parameters are:

### path
Path to use as **`-C`** option when calling make. If not set, the path may be detected from repository name, if dynod devenv tools are present in the workspace.

### target (mandatory)
Make target to be called.

### env
Comma separated list of environment variables to be set before calling make.
