git submodule add  -b main $(git -C django_proj remote get-url origin) django_proj
git submodule add  -b main $(git -C docker-mailserver remote get-url origin) docker-mailserver
git submodule add  -b main $(git -C flask_proj remote get-url origin) flask_proj
git submodule add  -b main $(git -C jenkins remote get-url origin) jenkins
git submodule add  -b main $(git -C microservice-grpc remote get-url origin) microservice-grpc
git submodule add  -b main $(git -C react_proj remote get-url origin) react_proj
git submodule add  -b main $(git -C typescript_proj remote get-url origin) typescript_proj

git submodule add  -b main $(git -C web-calendar-dashboard remote get-url origin) web-calendar-dashboard
git submodule add  -b main $(git -C web-tools remote get-url origin) web-tools
