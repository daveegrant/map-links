xquery version "1.0-ml";

module namespace resource = "http://marklogic.com/rest-api/resource/map-links";

import module namespace mll = "http://marklogic.com/map-links-lib" at "/ext/mlpm_modules/map-links/map-links-lib.xqy";

declare function get(
  $context as map:map,
  $params  as map:map
) as document-node()*
{
  let $subject := map:get($params, "subject")
  return mll:build-graph($subject, map:get($params, "expand") = "true")
};

