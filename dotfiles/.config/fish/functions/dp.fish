function dp
  mix edeliver deploy release production --version=$argv;
end

function build
  mix edeliver build release --tag=$argv;
end
