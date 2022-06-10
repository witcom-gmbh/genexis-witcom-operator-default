#!/usr/bin/lua

function indexOf(array, value)
    for i, v in ipairs(array) do
        if v == value then
            return i
        end
    end
    return nil
end

function Split(s, delimiter)
    result = {};
    for match in (s..delimiter):gmatch("(.-)"..delimiter) do
        table.insert(result, match);
    end
    return result;
end

portnames = {}
s = os.getenv("PORTNAMES")
if s == nil then
  print("INVALID")
  os.exit()
end
portnames = Split(s," ")

s = os.getenv("PORTORDER")
if s == nil then
  print("INVALID")
  os.exit()
end

portorder = Split(s," ")

idx = indexOf(portnames,"LAN1")
if idx == nil then
  print("INVALID")
else
  print(portorder[idx])
end
