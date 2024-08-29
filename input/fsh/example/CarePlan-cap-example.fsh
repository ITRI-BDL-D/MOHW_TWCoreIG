Instance: cap-example
InstanceOf: TWCoreCarePlan
Usage: #example
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n&#9;&#9;&#9;<strong>Assessment</strong>\n&#9;&#9;&#9;<ol>\n&#9;&#9;&#9;&#9;<li>Recurrent GI bleed of unknown etiology; hypotension perhaps secondary to this but as likely secondary to polypharmacy.</li>\n&#9;&#9;&#9;&#9;<li>Acute on chronic anemia secondary to #1.</li>\n&#9;&#9;&#9;&#9;<li>Azotemia, acute renal failure with volume loss secondary to #1.</li>\n&#9;&#9;&#9;&#9;<li>Hyperkalemia secondary to #3 and on ACE and K+ supplement.</li>\n&#9;&#9;&#9;&#9;<li>Other chronic diagnoses as noted above, currently stable.</li>\n&#9;&#9;&#9;</ol>\n&#9;&#9;&#9;<table>\n&#9;&#9;&#9;&#9;<thead>\n&#9;&#9;&#9;&#9;&#9;<tr>\n&#9;&#9;&#9;&#9;&#9;&#9;<th>Planned Activity</th>\n&#9;&#9;&#9;&#9;&#9;&#9;<th>Planned Date</th>\n&#9;&#9;&#9;&#9;&#9;</tr>\n&#9;&#9;&#9;&#9;</thead>\n&#9;&#9;&#9;&#9;<tbody>\n&#9;&#9;&#9;&#9;&#9;<tr>\n&#9;&#9;&#9;&#9;&#9;&#9;<td>Colonoscopy</td>\n&#9;&#9;&#9;&#9;&#9;&#9;<td>April 21, 2000</td>\n&#9;&#9;&#9;&#9;&#9;</tr>\n&#9;&#9;&#9;&#9;</tbody>\n&#9;&#9;&#9;</table>\n&#9;&#9;</div>"
* status = #active
* intent = #order
* category[AssessPlan]  = https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/careplan-category-tw#assess-plan
* subject = Reference(Patient/pat-example)