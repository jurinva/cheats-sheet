# Error code: ssl_error_weak_server_ephemeral_dh_key

1. In the address field of Firefox, type in: **about:config**

2. Click "I'll be careful, I promise"

3. Find the following key (type this into the search field):

  * security.ssl3.dhe_rsa_aes_128_sha

    Click on "true" under "Value" to make it "false"

4. Find the next key:

  * security.ssl3.dhe_rsa_aes_256_sha

    Click on "true" under "Value" to make it "false"
