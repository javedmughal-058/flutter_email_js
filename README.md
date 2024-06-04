
## EmailJS SDK for Flutter
SDK for EmailJS.com services.
Login to EmailJS account for sending emails.
https://www.emailjs.com/

https://github.com/javedmughal-058/flutter_email_js/assets/91019922/fdbbd3f0-ae8c-44bb-aef1-f368f26cec5e


## Features

FlutterEmailJS enables you to send emails directly from your code with minimal knowledge required. 
Simply connect FlutterEmailJS to a supported email service, create an email template, and use our SDK to send emails.

## Getting started

Install FlutterEmailJS SDK:

```
$ flutter pub add flutter_email_js 
```

## Examples

```
import package:flutter_email_js/flutter_email_js.dart

Map<String, dynamic> templateParams = {
   "user_subject" : "Your subject will be here",
   "user_message" : "Your Message",
   "user_name"    : "Name of Receiver",
   "user_email"   : "Email of receiver",
   "reply_email"  : "Enter the email address where you would like to receive replies from users."
};

try {
  String result = await FlutterEmailJS.sendEmail(
    serviceId:  'YOUR_SERVICE_ID',
    templateId: 'YOUR_TEMPLATE_ID',
    userId: 'USER_ID'
    accessToken : 'ACCESS_TOKEN'
    templateParams,
  );
   print(result);
  
} catch (error) {
  print(error.toString());
}
```

After you all these configuration, we will receive email like;

![email_js](https://github.com/javedmughal-058/flutter_email_js/assets/91019922/c60af9c3-1eee-4ded-a2dc-953879a84fec)


## Additional information

For More Information: Contact to javedmughal609@gmail.com
