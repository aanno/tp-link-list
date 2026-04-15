# Git cloning over HTTP

## Introduction

Git can be used to clone repositories over HTTP. This is useful when you want to access a repository that is hosted on a web server, or when you want to clone a repository that is not accessible via SSH.

## Cloning a repository over HTTP

To clone a repository over HTTP, you can use the following command:

```bash
git clone http://example.com/repository.git
```

## Credential helper

If the repository requires authentication, you can use a credential helper to store your credentials. For example, you can use the `cache` credential helper to cache your credentials for a certain period of time:

```bash
git config --global credential.helper cache
```

You can also specify a timeout for the cache:

```bash
git config --global credential.helper 'cache --timeout=3600'
```

### What credential helpers are available?

Git provides several credential helpers, including:

* `cache`: Caches credentials in memory for a specified duration.
* `store`: Stores credentials in a plain text file on disk.
* `osxkeychain`: Uses the macOS Keychain to store credentials securely.
* `wincred`: Uses the Windows Credential Manager to store credentials securely.
* `gpg`: Uses GPG to encrypt and store credentials securely.
* `manager`: A cross-platform credential manager that provides secure storage and retrieval of credentials.
* `manager-core`: A cross-platform credential manager that provides secure storage and retrieval of credentials, with additional features such as multi-factor authentication and support for personal access tokens.
* `manager-core-2.x`: The latest version of the `manager-core` credential helper with further enhancements and bug fixes.
* `ksshaskpass`: This is a Plasma/KDE component that build the bridge to kwallet6 (and kwalletmanager). On Fedora, this is already configured when you use Plasma/KDE.

### Example of a custom credential helper

The following is tested with Linux against a on-prem GitLab:

```sh
git config credential.helper '!f() { sleep 1; echo "username=${ACCSO_GIT_USER}"; echo "password=${ACCSO_GIT_PASSWORD}"; }; f'

# setup
export ACCSO_GIT_USER=<your_username>
export ACCSO_GIT_PASSWORD=<your_token>

# using
git pull
```

#### Reference

* based on https://stackoverflow.com/questions/8536732/can-i-hold-git-credentials-in-environment-variables

