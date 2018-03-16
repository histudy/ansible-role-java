java
=========

Javaの基本パッケージをインストールします

Role Variables
--------------

| 変数名                | 内容                                                     |
| --------------------- | -------------------------------------------------------- |
| java_version          | インストールするOpenJDKのバージョンを指定します          |
| java_install_headless | ヘッドレスバージョンをインストールするか否かを指定します |
| java_install_jdk      | JDKをインストールするか否かを指定します                  |

### java_version

インストールするOpenJDKのバージョンを指定します

#### Example

```yml
java_version: 8
```

### java_install_headless

ヘッドレスバージョンをインストールするか否かを指定します

#### Example

```yml
java_install_headless: yes
```

### java_install_jdk

JDKをインストールするか否かを指定します

#### Example

```yml
java_install_jdk: no
```

Example Playbook
----------------

```yml
- hosts: servers
  roles:
     - { role: java }
```

License
-------

MIT
