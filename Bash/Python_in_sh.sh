#!/usr/bin/bash
echo "Bash started"

cat << EOF > pyscript.py
#!/usr/bin/python
print("python script")
EOF

cat << EOF > script.java
#!/usr/bin/java

chmod 777 pyscript.py
./pyscript.py

chmod 777 script.java
./script.java

