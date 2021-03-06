/* -*- Mode: C; c-basic-offset:4 ; indent-tabs-mode:nil ; -*- */
/*
 * See COPYRIGHT in top-level directory.
 */

#ifndef EVENTUAL_H_INCLUDED
#define EVENTUAL_H_INCLUDED

/* Inlined functions for Eventual */

static inline
ABTI_eventual *ABTI_eventual_get_ptr(ABT_eventual eventual)
{
#ifndef UNSAFE_MODE
    ABTI_eventual *p_eventual;
    if (eventual == ABT_EVENTUAL_NULL) {
        p_eventual = NULL;
    } else {
        p_eventual = (ABTI_eventual *)eventual;
    }
    return p_eventual;
#else
    return (ABTI_eventual *)eventual;
#endif
}

static inline
ABT_eventual ABTI_eventual_get_handle(ABTI_eventual *p_eventual)
{
#ifndef UNSAFE_MODE
    ABT_eventual h_eventual;
    if (p_eventual == NULL) {
        h_eventual = ABT_EVENTUAL_NULL;
    } else {
        h_eventual = (ABT_eventual)p_eventual;
    }
    return h_eventual;
#else
    return (ABT_eventual)p_eventual;
#endif
}

#endif /* EVENTUAL_H_INCLUDED */

