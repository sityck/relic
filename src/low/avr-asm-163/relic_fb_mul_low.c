/*
 * RELIC is an Efficient LIbrary for Cryptography
 * Copyright (C) 2007-2019 RELIC Authors
 *
 * This file is part of RELIC. RELIC is legal property of its developers,
 * whose names are not listed here. Please refer to the COPYRIGHT file
 * for contact information.
 *
 * RELIC is free software; you can redistribute it and/or modify it under the
 * terms of the version 2.1 (or later) of the GNU Lesser General Public License
 * as published by the Free Software Foundation; or version 2.0 of the Apache
 * License as published by the Apache Software Foundation. See the LICENSE files
 * for more details.
 *
 * RELIC is distributed in the hope that it will be useful, but WITHOUT ANY
 * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
 * A PARTICULAR PURPOSE. See the LICENSE files for more details.
 *
 * You should have received a copy of the GNU Lesser General Public or the
 * Apache License along with RELIC. If not, see <https://www.gnu.org/licenses/>
 * or <https://www.apache.org/licenses/>.
 */

/**
 * @file
 *
 * Implementation of the low-level binary field multiplication functions.
 *
 * @ingroup fb
 */

#include "relic_fb.h"
#include "relic_bn_low.h"
#include "relic_fb_low.h"
#include "relic_util.h"

void fb_mul1_low(dig_t *c, const dig_t *a, dig_t digit) {
	dig_t carry;

	fb_zero(c);
	fb_zero(c + FB_DIGS);
	for (int i = DIGIT - 1; i >= 0; i--) {
		if (digit & ((dig_t)1 << i)) {
			fb_addn_low(c, c, a);
		}
		if (i != 0) {
			carry = fb_lsh1_low(c, c);
			c[FB_DIGS] = (c[FB_DIGS] << 1) | carry;
		}
	}
}

void fb_muli_low(dig_t *c, dig_t *t, const dig_t *a, const dig_t *b);

void fb_mulm_low(dig_t *c, const dig_t *a, const dig_t *b) {
	dv_t t;

	dv_new(t);
	fb_muli_low(c, t, a, b);
	dv_free(t);
}
