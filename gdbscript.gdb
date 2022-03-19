# display dp
# display {*dp->df_count@3, *dp->df_lnum@3}
# display {*dp->df_next->df_count@3, *dp->df_next->df_lnum@3}
# display dp->df_lnum[idx_cur] + dp->df_count[idx_cur]
# display eap->line1 + off
display *curtab->tp_first_diff->df_lnum@2
display *curtab->tp_first_diff->df_count@2
display *curtab->tp_first_diff->df_next->df_lnum@2
display *curtab->tp_first_diff->df_next->df_count@2
display *curtab->tp_first_diff->df_next->df_next->df_lnum@2
display *curtab->tp_first_diff->df_next->df_next->df_count@2
display *curtab->tp_first_diff->df_next->df_next->df_next->df_lnum@2
display *curtab->tp_first_diff->df_next->df_next->df_next->df_count@2
display *curtab->tp_first_diff->df_next->df_next->df_next->df_next->df_lnum@2
display *curtab->tp_first_diff->df_next->df_next->df_next->df_next->df_count@2
