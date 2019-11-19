# Translation

Translation within the CMS is provided by Drupal core's Translate module.  The
Translate module allows for fields on each node to be saved with a language, so
so that each node can contain both English and Spanish data in the same fields.
English (en) is treated as the default language, and Spanish (es) is the
secondary.  In the event that more languages are required in the future,
additional languages can be added with just a minor change to configuration.

## How do translations reach the front end?
The GraphQL query that vetsweb calls must be expanded to include the Spanish
field data as well as the English.  When the front end build process cycles
through the query results that includes all the nodes, minor logic will be added
to build both the English version of the node, and if it exists, the Spanish
version.  Since it it building them simultaneously, it will include a link on
the page to switch from one language to the other.

## The pathing of Spanish pages.
The pathing is ultimately up to the front end team, but the recommendation is to leverage Drupal's recommended pathing which follows web norms of prefixing the path with the language's two letter code.
example:
/pension/how-to-apply  (English)
/es/pension/aplicar    (Spanish)

[Table of Contents](../README.md)
