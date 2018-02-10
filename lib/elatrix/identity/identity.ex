defmodule Elatrix.Identity do
    @enforce_keys [:localpart]
    defstruct [:localpart, :server]   
    
    @type t :: %Elatrix.Identity{localpart: Elatrix.Identity.Localpart.t, server: Elatrix.Identity.ServerName.t }

    def parse(id) do
    end

    def create_room do
    end

    def create_user do
    end

    def create_roomAlias do
    end

    def create_event do
    end

end
