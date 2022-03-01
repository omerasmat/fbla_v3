import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class SendEmailCall {
  static Future<ApiCallResponse> call({
    String destinationEmail = '',
  }) {
    final body = '''
{
  "personalizations": [
    {
      "to": [
        {
          "email": "${destinationEmail}"
        }
      ],
      "subject": "Email from student."
    }
  ],
  "content": [
    {
      "type": "text/plain",
      "value": "Heya!"
    }
  ],
  "from": {
    "email": "omer.asmat@jerichoapps.org",
    "name": "Omer Asmat"
  }
}



''';
    return ApiManager.instance.makeApiCall(
      callName: 'sendEmail',
      apiUrl: 'https://api.sendgrid.com/v3/mail/send',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
      },
      params: {
        'destinationEmail': destinationEmail,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}
