
![github](https://github.com/leggiand/PiroJet/assets/114882821/40c85c3b-c7b2-42e1-b8f6-958de1a56333)

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
  "command":"",
  "_comment":"tmux options: 0=false, 1=true",
  "tmux":""
}
```
you can edit this options to tell PiroJet what to do:

`path` 
where to cd

`command`
what command to execute after changing dir

`tmux`
if you want to open the project in a tmux window
- _every tmux window will be open in _pj_ session_



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
![image](https://github.com/leggiand/PiroJet/assets/114882821/096f96fd-635b-4d0a-a075-4468d61162a9)

```zsh
mkdir "$ZSH_CUSTOM/plugins/pirojet"
wget "https://github.com/leggiand/PiroJet/raw/main/spaceship/pirojet.plugin.zsh" -O "$ZSH_CUSTOM/plugins/pirojet/pirojet.plugin.zsh"
```
then add 'pirojet' to your plugins in .zshrc

*now you can use the pirojet section in spaceship*
