defmodule Elatrix.Identity.ServerName do
    @enforce_keys [:address]
    defstruct [:address, :port]

    @type t :: %Elatrix.Identity.ServerName{address: String.t, port: integer}

    def parse(serverName) do

    end

end