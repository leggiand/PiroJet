#
# pirojet
#
# ------------------------------------------------------------------------------
# Configuration
# ------------------------------------------------------------------------------

SPACESHIP_pirojet_SHOW="${SPACESHIP_pirojet_SHOW=true}"
SPACESHIP_pirojet_ASYNC="${SPACESHIP_pirojet_ASYNC=true}"
SPACESHIP_pirojet_PREFIX="${SPACESHIP_pirojet_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"}"
SPACESHIP_pirojet_SUFFIX="${SPACESHIP_pirojet_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_pirojet_SYMBOL="${SPACESHIP_pirojet_SYMBOL=" "}"
SPACESHIP_pirojet_COLOR="${SPACESHIP_pirojet_COLOR="yellow"}"

# ------------------------------------------------------------------------------
# Section
# ------------------------------------------------------------------------------

# Show pirojet status
spaceship_pirojet() {
  # If SPACESHIP_pirojet_SHOW is false, don't show pirojet section
  [[ $SPACESHIP_pirojet_SHOW == false ]] && return

  # Check if pirojet command is available for execution
  spaceship::exists pj || return


  # check if you are in a pirojet project
  local is_pirojet_context="$(env | grep Piroject)"
  [[ -n "$is_pirojet_context" ]] ||  return
  # extract the project name
  local pirojet_Project="$(env | grep Piroject | cut -d "=" -f 2)"
  # Display pirojet section
  # spaceship::section utility composes sections. Flags are optional
  spaceship::section::v4 \
    --color "$SPACESHIP_pirojet_COLOR" \
    --prefix "$SPACESHIP_pirojet_PREFIX" \
    --suffix "$SPACESHIP_pirojet_SUFFIX" \
    --symbol "$SPACESHIP_pirojet_SYMBOL" \
    "$pirojet_Project"
}
