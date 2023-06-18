# Backup to wasabi with duplicati

## Wasabi setup

1. New bucket for example `p-duplicati`
2. New policy for each user (better: access key)
3. New group for each user (better: access key) with policy associated
4. New API user (better: access key) with group associated
   * Result: AWS Access ID and AWS Access Key

### Policy example

```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "AllowUserToSeeBucketListInTheConsole",
      "Effect": "Allow",
      "Action": [
        "s3:ListAllMyBuckets",
        "s3:GetBucketLocation",
        "s3:GetBucketCompliance"
      ],
      "Resource": "arn:aws:s3:::*"
    },
    {
      "Sid": "AllowRootAndHomeListingOfCompanyBucket",
      "Effect": "Allow",
      "Action": "s3:ListBucket",
      "Resource": "arn:aws:s3:::b-duplicati",
      "Condition": {
        "StringEquals": {
          "s3:delimiter": "/",
          "s3:prefix": [
            "",
            "tpasch/"
          ]
        }
      }
    },
    {
      "Sid": "AllowListingOfUserFolder",
      "Effect": "Allow",
      "Action": "s3:ListBucket",
      "Resource": "arn:aws:s3:::b-duplicati",
      "Condition": {
        "StringLike": {
          "s3:prefix": "tpasch/*"
        }
      }
    },
    {
      "Sid": "AllowAllS3ActionsInUserFolder",
      "Effect": "Allow",
      "Action": "s3:*",
      "Resource": "arn:aws:s3:::b-duplicati/tpasch/*"
    }
  ]
}
```

## Duplicati setup

1. Install duplicati
2. Start duplicati
3. Use duplicati wizard
   * set encryption phrase
   * ssl/tls on `s3.eu-central-2.wasabisys.com`
   * Use `tpasch` for path
   * Use AWS Access ID and AWS Access Key


## Links

* [duplicati](https://duplicati.readthedocs.io/en/latest/) cloud-enabled, slow dev since 2021
  + https://www.duplicati.com/
  + https://github.com/duplicati/duplicati
