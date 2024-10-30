import 'package:learning_flutter/303/reqres_resources/model/resource_model.dart';

class ResourcesContext {
  ResourcesModel? resourcesModel;
  
void saveModel(ResourcesModel resourcesModel) {
  this.resourcesModel = resourcesModel;
}

void clear() {
  resourcesModel = null;
}
}
