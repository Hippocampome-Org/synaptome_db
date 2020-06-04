INSERT INTO tm_cond1
(`pre`,
`post`,
`cv_g`,
`cv_tau_d`,
`cv_tau_r`,
`cv_tau_f`,
`cv_u`)
SELECT 
    DISTINCT
    cond_cv.`Presynaptic Neuron` as pre,
    cond_cv.`Postsynaptic Neuron` as post,
    cond_cv.g as cv_g,
    cond_cv.tau_d as cv_tau_d,
    cond_cv.tau_r as cv_tau_r,
    cond_cv.tau_f as cv_tau_f,
    cond_cv.u as cv_u
FROM
    cv_cond1 AS cond_cv;

UPDATE tm_cond1
SET `max_g` =
(SELECT cond_max.g as max_g
	FROM
		max_cond1 AS cond_max
	WHERE
		tm_cond1.pre = cond_max.`Presynaptic Neuron` AND
		tm_cond1.post = cond_max.`Postsynaptic Neuron`
),
`max_tau_d` =
(SELECT cond_max.tau_d as max_tau_d
	FROM
		max_cond1 AS cond_max
	WHERE
		tm_cond1.pre = cond_max.`Presynaptic Neuron` AND
		tm_cond1.post = cond_max.`Postsynaptic Neuron`
),
`max_tau_r` =
(SELECT cond_max.tau_r as max_tau_r
	FROM
		max_cond1 AS cond_max
	WHERE
		tm_cond1.pre = cond_max.`Presynaptic Neuron` AND
		tm_cond1.post = cond_max.`Postsynaptic Neuron`
),
`max_tau_f` =
(SELECT cond_max.tau_f as max_tau_f
	FROM
		max_cond1 AS cond_max
	WHERE
		tm_cond1.pre = cond_max.`Presynaptic Neuron` AND
		tm_cond1.post = cond_max.`Postsynaptic Neuron`
),
`max_u` =
(SELECT cond_max.u as max_u
	FROM
		max_cond1 AS cond_max
	WHERE
		tm_cond1.pre = cond_max.`Presynaptic Neuron` AND
		tm_cond1.post = cond_max.`Postsynaptic Neuron`
),
`min_g` =
(SELECT cond_min.g as min_g
	FROM
		min_cond1 AS cond_min
	WHERE
		tm_cond1.pre = cond_min.`Presynaptic Neuron` AND
		tm_cond1.post = cond_min.`Postsynaptic Neuron`
),
`min_tau_d` =
(SELECT cond_min.tau_d as min_tau_d
	FROM
		min_cond1 AS cond_min
	WHERE
		tm_cond1.pre = cond_min.`Presynaptic Neuron` AND
		tm_cond1.post = cond_min.`Postsynaptic Neuron`
),
`min_tau_r` =
(SELECT cond_min.tau_r as min_tau_r
	FROM
		min_cond1 AS cond_min
	WHERE
		tm_cond1.pre = cond_min.`Presynaptic Neuron` AND
		tm_cond1.post = cond_min.`Postsynaptic Neuron`
),
`min_tau_f` =
(SELECT cond_min.tau_f as min_tau_f
	FROM
		min_cond1 AS cond_min
	WHERE
		tm_cond1.pre = cond_min.`Presynaptic Neuron` AND
		tm_cond1.post = cond_min.`Postsynaptic Neuron`
),
`min_u` =
(SELECT cond_min.u as min_u
	FROM
		min_cond1 AS cond_min
	WHERE
		tm_cond1.pre = cond_min.`Presynaptic Neuron` AND
		tm_cond1.post = cond_min.`Postsynaptic Neuron`
),
`means_g` =
(SELECT cond_means.g as means_g
	FROM
		means_cond1 AS cond_means
	WHERE
		tm_cond1.pre = cond_means.`Presynaptic Neuron` AND
		tm_cond1.post = cond_means.`Postsynaptic Neuron`
),
`means_tau_d` =
(SELECT cond_means.tau_d as means_tau_d
	FROM
		means_cond1 AS cond_means
	WHERE
		tm_cond1.pre = cond_means.`Presynaptic Neuron` AND
		tm_cond1.post = cond_means.`Postsynaptic Neuron`
),
`means_tau_r` =
(SELECT cond_means.tau_r as means_tau_r
	FROM
		means_cond1 AS cond_means
	WHERE
		tm_cond1.pre = cond_means.`Presynaptic Neuron` AND
		tm_cond1.post = cond_means.`Postsynaptic Neuron`
),
`means_tau_f` =
(SELECT cond_means.tau_f as means_tau_f
	FROM
		means_cond1 AS cond_means
	WHERE
		tm_cond1.pre = cond_means.`Presynaptic Neuron` AND
		tm_cond1.post = cond_means.`Postsynaptic Neuron`
),
`means_u` =
(SELECT cond_means.u as means_u
	FROM
		means_cond1 AS cond_means
	WHERE
		tm_cond1.pre = cond_means.`Presynaptic Neuron` AND
		tm_cond1.post = cond_means.`Postsynaptic Neuron`
),
`std_g` =
(SELECT cond_std.g as std_g
	FROM
		std_cond1 AS cond_std
	WHERE
		tm_cond1.pre = cond_std.`Presynaptic Neuron` AND
		tm_cond1.post = cond_std.`Postsynaptic Neuron`
),
`std_tau_d` =
(SELECT cond_std.tau_d as std_tau_d
	FROM
		std_cond1 AS cond_std
	WHERE
		tm_cond1.pre = cond_std.`Presynaptic Neuron` AND
		tm_cond1.post = cond_std.`Postsynaptic Neuron`
),
`std_tau_r` =
(SELECT cond_std.tau_r as std_tau_r
	FROM
		std_cond1 AS cond_std
	WHERE
		tm_cond1.pre = cond_std.`Presynaptic Neuron` AND
		tm_cond1.post = cond_std.`Postsynaptic Neuron`
),
`std_tau_f` =
(SELECT cond_std.tau_f as std_tau_f
	FROM
		std_cond1 AS cond_std
	WHERE
		tm_cond1.pre = cond_std.`Presynaptic Neuron` AND
		tm_cond1.post = cond_std.`Postsynaptic Neuron`
),
`std_u` =
(SELECT cond_std.u as std_u
	FROM
		std_cond1 AS cond_std
	WHERE
		tm_cond1.pre = cond_std.`Presynaptic Neuron` AND
		tm_cond1.post = cond_std.`Postsynaptic Neuron`
);