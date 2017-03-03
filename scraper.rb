#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

query = <<-EOQ
  SELECT DISTINCT ?item {
    ?item wdt:P39 wd:Q20846080 .
  }
EOQ
ids = EveryPolitician::Wikidata.sparql(query)

en = WikiData::Category.new('Category:Senators of the Legislature of the United States Virgin Islands', 'en').member_titles

EveryPolitician::Wikidata.scrape_wikidata(ids: ids, names: { en: en })

