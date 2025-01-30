import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:teachblox/widgets/buttons/link.dart';

const kHeaderHeight = 87.0;

List<Link> getLandingLinkList(AppLocalizations locale) => [
      Link(text: locale.link_aboutPlatform, link: ''),
      Link(text: locale.link_courses, link: ''),
      Link(text: locale.link_forTeachers, link: ''),
      Link(text: locale.link_contacts, link: ''),
    ];
