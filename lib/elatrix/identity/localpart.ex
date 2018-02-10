defmodule Elatrix.Identity.Localpart do
    @enforce_keys [:type, :name]
    defstruct [:type, :name]
    @type t :: %Elatrix.Identity.Localpart{type: atom, name: String.t}

end