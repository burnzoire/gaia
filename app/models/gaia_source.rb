class GaiaSource
  include Cequel::Record

  key :solution_id, :bigint
  key :source_id, :bigint
  key :random_index, :bigint
  column :ref_epoch, :double
  column :ra, :double
  column :ra_error, :double
  column :dec, :double
  column :dec_error, :double
  column :parallax, :double
  column :parallax_error, :double
  column :pmra, :double
  column :pmra_error, :double
  column :pmdec, :double
  column :pmdec_error, :double
  column :ra_dec_corr, :float
  column :ra_parallax_corr, :float
  column :ra_pmra_corr, :float
  column :ra_pmdec_corr, :float
  column :dec_parallax_corr, :float
  column :dec_pmra_corr, :float
  column :dec_pmdec_corr, :float
  column :parallax_pmra_corr, :float
  column :parallax_pmdec_corr, :float
  column :pmra_pmdec_corr, :float
  column :astrometric_n_obs_al, :int
  column :astrometric_n_obs_ac, :int
  column :astrometric_n_good_obs_al, :int
  column :astrometric_n_good_obs_ac, :int
  column :astrometric_n_bad_obs_al, :int
  column :astrometric_n_bad_obs_ac, :int
  column :astrometric_delta_q, :float
  column :astrometric_excess_noise, :double
  column :astrometric_excess_noise_sig, :double
  column :astrometric_primary_flag, :boolean
  column :astrometric_relegation_factor, :float
  column :astrometric_weight_al, :float
  column :astrometric_weight_ac, :float
  column :astrometric_priors_used, :int
  column :matched_observations, :int
  column :duplicated_source, :boolean
  column :scan_direction_strength_k1, :float
  column :scan_direction_strength_k2, :float
  column :scan_direction_strength_k3, :float
  column :scan_direction_strength_k4, :float
  column :scan_direction_mean_k1, :float
  column :scan_direction_mean_k2, :float
  column :scan_direction_mean_k3, :float
  column :scan_direction_mean_k4, :float
  column :phot_g_n_obs, :int
  column :phot_g_mean_flux, :double
  column :phot_g_mean_flux_error, :double
  column :phot_g_mean_mag, :double
  column :phot_variable_flag, :text
  column :l, :double
  column :b, :double
  column :ecl_lon, :double
  column :ecl_lat, :double
  timestamps
end
