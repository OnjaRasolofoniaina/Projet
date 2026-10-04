# Redeploiement Phoenix

## 1) Vérifier le JDK

```bash
export JAVA_HOME=/usr/lib/jvm/java-21-openjdk-amd64
export PATH="$JAVA_HOME/bin:$PATH"
java -version
javac -version
```

## 2) Compiler le framework

```bash
cd /home/onja/Documents/l3-s5/framework/framework/Phoenix
./build.sh
```

## 3) Copier le framework dans le projet test

```bash
cp -f /home/onja/Documents/l3-s5/framework/framework/Phoenix/framework.jar \
  /home/onja/Documents/l3-s5/framework/framework/phoenix-test-fixed/lib/framework.jar
```

## 4) Recompiler le projet test

```bash
cd /home/onja/Documents/l3-s5/framework/framework/phoenix-test-fixed
rm -rf build
mkdir -p build/WEB-INF/classes build/WEB-INF/lib
cp -r webapp/. build/
find src -name '*.java' > /tmp/phoenix_app_sources.txt
javac -encoding UTF-8 -cp "lib/*:../Phoenix/lib/*" -d build/WEB-INF/classes @/tmp/phoenix_app_sources.txt
cp -f lib/framework.jar build/WEB-INF/lib/framework.jar
cp -f lib/*.jar build/WEB-INF/lib/
```

## 5) Nettoyer l’ancien déploiement Tomcat

```bash
rm -rf /home/onja/tomcat-local2/webapps/phoenix-test-fixed
rm -rf /home/onja/tomcat-local2/work/Catalina/localhost/phoenix-test-fixed
rm -rf /home/onja/tomcat-local2/work/Catalina/localhost/_
```

## 6) Déployer dans Tomcat

```bash
mkdir -p /home/onja/tomcat-local2/webapps/phoenix-test-fixed
cp -r build/. /home/onja/tomcat-local2/webapps/phoenix-test-fixed/
```

## 7) Redémarrer Tomcat

```bash
cd /home/onja/tomcat-local2/bin
./shutdown.sh || true
./startup.sh
```

## 8) Tester les routes

```bash
curl -I http://localhost:18080/phoenix-test-fixed/home
curl -I http://localhost:18080/phoenix-test-fixed/employes
curl -I http://localhost:18080/phoenix-test-fixed/api/employes
```

## Résultat attendu

- /home : HTTP 200
- /employes : HTTP 200
- /api/employes : HTTP 200

## Points importants

- toujours supprimer le dossier work de Tomcat après un changement de JSP
- toujours nettoyer webapps/phoenix-test-fixed avant un nouveau déploiement
- ne pas modifier les routes pour inventer de faux employés ; utiliser les classes et données déjà présentes dans le projet test
