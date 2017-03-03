#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

en = WikiData::Category.new('Category:Senators of the Legislature of the United States Virgin Islands', 'en').member_titles

EveryPolitician::Wikidata.scrape_wikidata(names: { en: en })

