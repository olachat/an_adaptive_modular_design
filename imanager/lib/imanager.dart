library imanager;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:imanager/src/proto/generated/event_cmd.pb.dart';

export 'src/proto/generated/event_cmd.pb.dart';
export 'src/proto/generated/event_cmd.pbenum.dart';
export 'src/proto/generated/login.pb.dart';
export 'src/proto/generated/login.pbenum.dart';

/// export


/// library define
part 'src/basic/imodule_interface.dart';
part 'src/basic/imodule.dart';
part 'src/basic/module_manager.dart';
part 'src/event/event.dart';
part 'src/event/event_type.dart';
part 'src/mixin/base_module.dart';
part 'src/module/iconfig_module.dart';
part 'src/module/idebug_module.dart';
part 'src/module/ihome_page_module.dart';
part 'src/module/ilogin_module.dart';
part 'src/module/ilocal_notification_module.dart';


