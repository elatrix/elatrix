defmodule Elatrix.IdentityTest do
  use ExUnit.Case

  test "Room on domain (!qporfwt:matrix.org)" do
    expected = {
      :ok, 
      %Elatrix.Identity{
        server: %Elatrix.Identity.ServerName{address: "matrix.org", port: nil},
        localpart: %Elatrix.Identity.Localpart{type: :room, name: "qporfwt"}
      }
    }
    actual = Elatrix.Identity.parse("!qporfwt:matrix.org");

    assert expected = actual
  end

  test "User on domain (@bob:domain.com:8080)" do       
    expected = {
        :ok, 
        %Elatrix.Identity{
          server: %Elatrix.Identity.ServerName{address: "domain.com", port: 8080},
          localpart: %Elatrix.Identity.Localpart{type: :user, name: "bob"}
        }
      }
      actual = Elatrix.Identity.parse("@bob:domain.com:8080");
  
      assert expected = actual
  end

  test "Domain with port (matrix.org:8888)" do
    assert {:ok, %Elatrix.Identity.ServerName{address: "matrix.org", port: 8888}} = Elatrix.Identity.ServerName.parse("matrix.org:8888")
  end

  test "IPv4 literal (1.2.3.4)" do
    assert {:ok, %Elatrix.Identity.ServerName{address: "1.2.3.4", port: nil}} = Elatrix.Identity.ServerName.parse("1.2.3.4")
  end

  test "IPv4 literal with port (1.2.3.4:1234)" do
    assert {:ok, %Elatrix.Identity.ServerName{address: "1.2.3.4", port: 1234}} = Elatrix.Identity.ServerName.parse("1.2.3.4:1234")
  end

  test "IPv6 literal ([1234:5678::abcd])" do
    assert {:ok, %Elatrix.Identity.ServerName{address: "[1234:5678::abcd]", port: nil}} = Elatrix.Identity.ServerName.parse("[1234:5678::abcd]")
  end

  test "(IPv6 literal with port ([1234:5678::abcd]:5678)" do
    assert {:ok, %Elatrix.Identity.ServerName{address: "[1234:5678::abcd]", port: 5678}} = Elatrix.Identity.ServerName.parse("[1234:5678::abcd]:5678")
  end    
end
