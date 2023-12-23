# PiroJet
With PiroJet you can go where you want, when you want and how you want

---



- **perpare the jet**
  - [dependencies](#dependencies)
  - [installation](#installation)
- **take off**
  - [adding a workspace](#adding-a-workspace)
  - [editing a workspace](#editing-a-workspace)
  - [removing a workspace](#removing-a-workspace)
  - [listing workspace](#listing-workspace)
  - [calling a workspace](#calling-a-workspace)
- **to the space**
  - [adding PiroJet to spaceship](#adding-pirojet-to-spaceship)
 
---

## prepare the jet
### dependencies
[nlhomann/json](https://github.com/nlohmann/json)
### Installation
```bash
git clone https://github.com/leggiand/PiroJet && cd PiroJet
# if you want you can modify installation path in install.sh
./install.sh
```

## take off
### adding a workspace
_a workspace is a json file used to tell PiroJet where to go and what to do_
```bash
pj add workspace_name
```
### editing a workspace
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
## to the space
### adding PiroJet to spaceship
```zsh
mkdir "$ZSH_CUSTOM/plugins/pirojet"
wget "https://github.com/leggiand/PiroJet/raw/main/spaceship/pirojet.plugin.zsh" -O "$ZSH_CUSTOM/plugins/pirojet/pirojet.plugin.zsh"
```
then add 'pirojet' to your plugins in .zshrc

*now you can use the pirojet section in spaceship*
