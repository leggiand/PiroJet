# PiroJet
A light project manager, to go where you want, when you want and how you want
## Installation
```bash
git clone https://github.com/leggiand/PiroJet && cd PiroJet
# if you want you can modify installation path in install.sh
./install.sh
```
## usage
### adding a workspace
_a workspace is a json file used to tell PiroJet where to go and what to do_
```bash
pj add workspace_name
```
### editin a workspace
when creating a workspace, you will see this default template:
```json
{
  "path":"",
  "command":""
}
```
you can edit this options to tell PiroJet what to do:

`path` 
where to cd

`what`
command to execute after changing dir

```diff
# in future more options will be added!!
```


### removing a workspace
```bash
pj rm workspace_name
```

### listing workspace
```bash
pj ls
```

### calling a workspace
```bash
pj workspace_name
```
