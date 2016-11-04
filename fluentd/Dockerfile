FROM fluent/fluentd
COPY plugins/jsonify.rb /fluentd/plugins/
COPY fluent.conf /fluentd/etc/
RUN fluent-gem install fluent-mixin-config-placeholders fluent-plugin-record-modifier fluent-plugin-forest fluent-plugin-elasticsearch
