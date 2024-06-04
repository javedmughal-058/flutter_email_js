## EmailJS SDK for Flutter

<table>
    <tr>
        <td>
            <img src="https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png" alt="Flutter Logo" height="30">
        </td>
        <td>
            flutter_email_js
        </td>
    </tr>
</table>

<table>
  <tr>
    <th>Pub Version</th>
    <th>Pub Points</th>
  </tr>
  <tr>
    <td>Pub v1.0.1</td> <td>100/140</td>  </tr>
</table>

SDK for EmailJS.com services. 
Login to EmailJS account for sending emails.
https://www.emailjs.com/

## Demo
![demo_gif](https://github.com/javedmughal-058/flutter_email_js/assets/91019922/20e05d66-4df6-47af-a251-2cf0e39be8ae)




## Supports
<table>
    <tr>
        <th>Platform Support</th>
        <th>Android</th>
        <th>iOS</th>
        <th>MacOS</th>
        <th>Web</th>
        <th>Linux</th>
        <th>Windows</th>
    </tr>
    <tr>
        <td></td>
        <td><span class="checkmark">&#10004;</span></td>
        <td><span class="checkmark">&#10004;</span></td>
        <td><span class="checkmark">&#10004;</span></td>
        <td><span class="checkmark">&#10004;</span></td>
        <td><span class="checkmark">&#10004;</span></td>
        <td><span class="checkmark">&#10004;</span></td>
    </tr>
</table>

## Features

FlutterEmailJS enables you to send emails directly from your code with minimal knowledge required. 
Simply connect FlutterEmailJS to a supported email service, create an email template, and use our SDK to send emails.

## Getting started

Install FlutterEmailJS SDK:

```
$ flutter pub add flutter_email_js 
```

## Usage
```
import 'package:flutter_email_js/flutter_email_js.dart';
```

## Examples

```
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
    userId: 'USER_ID',
    accessToken : 'ACCESS_TOKEN',
    templateParams,
  );
   print(result);
  
} catch (error) {
  print(error.toString());
}
```

The provided code defines a Dart class FlutterEmailJS with a static method sendEmail that facilitates sending emails using the EmailJS service. Here’s a detailed explanation of the code:
* Importing the Package: Imports the flutter_email_js package, which contains the FlutterEmailJS class and its sendEmail method.
* Static Method:
    sendEmail is a static method, meaning it can be called without creating an instance of FlutterEmailJS.
* Parameters:
        serviceId, templateId, userId, and accessToken are required parameters that must be provided when calling this method.'
        Template Parameters Map: This map (templateParams) holds the key-value pairs that will be passed to the email template. These parameters are used to dynamically populate the email template with specific values.


## Summery
This code snippet imports the flutter_email_js package and uses it to send an email with dynamic content. It defines the template parameters to customize the email, then calls the sendEmail method with the necessary credentials and parameters. The result of the email-sending operation is printed, and any errors encountered during the process are caught and printed as well.





After you all these configuration, you will receive email like;

![email_js](https://github.com/javedmughal-058/flutter_email_js/assets/91019922/c60af9c3-1eee-4ded-a2dc-953879a84fec)



## Additional information

For More Information: Contact to javedmughal609@gmail.com
