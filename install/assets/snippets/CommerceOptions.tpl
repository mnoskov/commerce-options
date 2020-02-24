<?php
//<?php
/**
 * CommerceOptions
 *
 * CommerceOptions
 *
 * @category	snippet
 * @author      mnoskov
 * @version     0.1.1
 * @internal	@modx_category Commerce
 * @internal	@installset base
 * @internal	@overwrite true
 */

if (empty($modx->commerce) || !defined('COMMERCE_INITIALIZED')) {
	return 'Commerce plugin required!';
}

$params = array_merge([
	'docid'                => $modx->documentIdentifier,
	'detach'               => false, // 1, true, 0, false, comma separated list
	'hideInactive'         => false, // --- // ---
	'autoCheckSameOptions' => false, // --- // ---
	'uncheckDisabled'      => true,  // --- // ---
	'api'                  => false,
	'registerScripts'      => true,
	'detachPrefix'         => 'tvco.',
	'modifierTpl'          => '@CODE: ([+value.sign+][+value.amount+])',
	'containerTpl'         => '@CODE:<div class="tvco" data-tvco-container>[+wrap+]</div>',
	'tvTpl'                => '@CODE:<div class="tvco-var tvco-[+tv.output_type+]" data-tvco-block data-id="[+tv.id+]"><div class="tvco-title">[+tv.caption+]</div><ul>[+wrap+]</ul></div>',
	'dropdownTvTpl'        => '@CODE:<div class="tvco-var tvco-dropdown" data-tvco-block data-id="[+tv.id+]"><div class="tvco-title">[+tv.caption+]</div><select name="[+tv.controlname+]" class="form-control">[+wrap+]</select></div>',
	'radioTpl'             => '@CODE:<li data-tvco-row[+hidden_style+]><label><input type="radio" name="[+tv.controlname+]" value="[+value.id+]" data-value="[+value.value_id+]"[+selected_attr+]>[+value.title+][+modifier+]</label>',
	'checkboxTpl'          => '@CODE:<li data-tvco-row[+hidden_style+]><label><input type="checkbox" name="[+tv.controlname+][]" value="[+value.id+]" data-value="[+value.value_id+]"[+selected_attr+]>[+value.title+][+modifier+]</label>',
	'dropdownTpl'          => '@CODE:<option value="[+value.id+]" data-tvco-row data-value="[+value.value_id+]"[+selected_attr+][+hidden_style+]>[+value.title+][+modifier+]</option>',
], $params);

return ci()->optionsProcessor->renderOptions($params);
