# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

# This logic will fetch a list of classes from hiera and include it
# here so puppet uses them for catalog compilation
$classification = lookup({'name' => 'classification',
  'merge' => {
    'strategy' => 'deep',
    'knockout_prefix' => '--',
    'sort_merged_arrays' => true
  }
})

[ $classification['classes'] - $classification['exclude_classes'] ].include
